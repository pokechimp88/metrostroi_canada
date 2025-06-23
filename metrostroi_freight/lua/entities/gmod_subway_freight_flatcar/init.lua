AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BogeyDistance = 800 -- Needed for gm trainspawner
ENT.SyncTable = {

    "FrontBrakeLineIsolation","FrontTrainLineIsolation",
    "RearBrakeLineIsolation","RearTrainLineIsolation",
}
--------------------------------------------------------------------------------
function ENT:Initialize()
    -- Set model and initialize
    self:SetModel("models/gsgtrainprops/trains/rolling_stock/flatcar_89ft_garbage.mdl") --FIXME
    self.BaseClass.Initialize(self)
    self:SetPos(self:GetPos() + Vector(0,0,140))

    --[[ Create seat entities
    self.DriverSeat = self:CreateSeat("instructor",Vector(330,11,30)) --move seat to edge above coupler

    -- Hide seats
    self.DriverSeat:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.DriverSeat:SetColor(Color(0,0,0,0))]]

    -- Create bogeys
    self.FrontBogey = self:CreateBogey(Vector(400-5,0,-23),Angle(0,180,0),true,"702")
    self.RearBogey  = self:CreateBogey(Vector(-400,0,-23),Angle(0,0,0),false,"702")
    self.FrontBogey:SetNWBool("Async",true)
    self.RearBogey:SetNWBool("Async",true)
    self.FrontBogey:SetNWFloat("SqualPitch",0.8)
    self.RearBogey:SetNWFloat("SqualPitch",0.8)
    self.FrontBogey:SetNWBool("DisableEngines",true)
    self.RearBogey:SetNWBool("DisableEngines",true)
    if Metrostroi.BogeyOldMap then
        self.FrontCouple = self:CreateCouple(Vector( 510,0,-77+70),Angle(0,0,0),true,"717")
        self.RearCouple  = self:CreateCouple(Vector(-510,0,-77+70),Angle(0,180,0),false,"717")
    else
        self.FrontCouple = self:CreateCouple(Vector( 510,0,-79+70),Angle(0,0,0),true,"717")
        self.RearCouple  = self:CreateCouple(Vector(-510,0,-79+70),Angle(0,180,0),false,"717")
    end
    self.FrontBogey.DisableSound = 1
    self.RearBogey.DisableSound = 1

    self.InteractionZones = {
        {
            ID = "FrontBrakeLineIsolationToggle",
            Pos = Vector(330, -30, 0), Radius = 20,
        },
        {
            ID = "FrontTrainLineIsolationToggle",
            Pos = Vector(330, 31, 0), Radius = 20,
        },
        {
            ID = "RearTrainLineIsolationToggle",
            Pos = Vector(-331, -30, 5), Radius = 20,
        },
        {
            ID = "RearBrakeLineIsolationToggle",
            Pos = Vector(-331, 31, 5), Radius = 20,
        },
        {
            ID = "RearDoor",
            Pos = Vector(-331, -38, -4), Radius = 20,
        },
        {
            ID = "FrontDoor",
            Pos = Vector(330, 36, -4), Radius = 20,
        },
    }

    -- Initialize key mapping
    self.KeyMap = {
    }
    self.TrainWireInverts = {
        --[18] = true,
        [34] = true,
    }
    self.TrainWireCrossConnections = {
        [5] = 4, -- Reverser F<->B
        [31] = 32, -- Doors L<->R
    }


    self.Lights = {

    }
    self.FrontDoor = false
    self.RearDoor = false

end

--------------------------------------------------------------------------------
function ENT:Think()
    local retVal = self.BaseClass.Think(self)
    self:SetPackedRatio("Speed", self.Speed)

    --self:SetPackedRatio("Cran", self.Pneumatic.DriverValvePosition)
    --self:SetPackedRatio("BL", self.Pneumatic.BrakeLinePressure/16.0)
    --self:SetPackedRatio("TL", self.Pneumatic.TrainLinePressure/16.0)
    --self:SetPackedRatio("BC", math.min(3.2,self.Pneumatic.BrakeCylinderPressure)/6.0)

    self:SetPackedBool("FrontDoor",self.FrontDoor)
    self:SetPackedBool("RearDoor",self.RearDoor)

    if IsValid(self.FrontBogey) and IsValid(self.RearBogey) and not self.IgnoreEngine then
        --local A = 2*self.Engines.BogeyMoment
        self.FrontBogey.MotorForce = 35300
        self.FrontBogey.Reversed = self:ReadTrainWire(13) > 0
        self.FrontBogey.DisableSound = 1
        self.RearBogey.MotorForce  = 35300--0
        self.RearBogey.Reversed = self:ReadTrainWire(13) == 0
        self.RearBogey.DisableSound = 1

        -- These corrections are required to beat source engine friction at very low values of motor power
        --local A = self.AsyncInverter.Torque
        --local P = math.max(0,0.04449 + 1.06879*math.abs(A) - 0.465729*A^2)
        --if math.abs(A) > 0.4 then P = math.abs(A) end
        --if math.abs(A) < 0.05 then P = 0 end
        --if self.Speed < 10 then P = P*(1.0 + 0.5*(10.0-self.Speed)/10.0) end
        self.RearBogey.MotorPower  = 0--P*0.5*((A > 0) and 1 or -1)
        self.FrontBogey.MotorPower = 0--P*0.5*((A > 0) and 1 or -1)

        -- Apply brakes
        self.FrontBogey.PneumaticBrakeForce = 50000.0--3000 --40000
        self.FrontBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        --self.FrontBogey.ParkingBrakePressure = math.max(0,(3-self.Pneumatic.ParkingBrakePressure)/3)
        self.FrontBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        self.RearBogey.PneumaticBrakeForce = 50000.0--3000 --40000
        self.RearBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        self.RearBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
    end
    return retVal
end


function ENT:OnCouple(train,isfront)
    if isfront and self.FrontAutoCouple then
        self.FrontBrakeLineIsolation:TriggerInput("Open",1.0)
        self.FrontTrainLineIsolation:TriggerInput("Open",1.0)
        self.FrontAutoCouple = false
    elseif not isfront and self.RearAutoCouple then
        self.RearBrakeLineIsolation:TriggerInput("Open",1.0)
        self.RearTrainLineIsolation:TriggerInput("Open",1.0)
        self.RearAutoCouple = false
    end
    self.BaseClass.OnCouple(self,train,isfront)
end

function ENT:OnButtonPress(button,ply)
    if button == "FrontDoor" then self.FrontDoor = not self.FrontDoor end
    if button == "RearDoor" then self.RearDoor = not self.RearDoor end
end
