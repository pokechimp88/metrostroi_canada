AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BogeyDistance = 650 -- Needed for gm trainspawner

--"DURASelectMain","DURASelectAlternate","DURAToggleChannel","DURAPowerToggle",
ENT.SyncTable = {
    "KU12","KU11","KU9","KU8","V2","V1","V4","V5","KU15","KU7","V10",
    "VU","AV","VB",
    "VU3","VU2","VU1","VU14",
    "V6", "V3",
    "DriverValveBLDisconnect","DriverValveTLDisconnect",
    "RearBrakeLineIsolation","RearTrainLineIsolation",
    "FrontBrakeLineIsolation","FrontTrainLineIsolation",
    "GV",
}

function ENT:Initialize()
    self.Plombs = {
        VU = true,
        Init = true,
        UAVA = true,
    }
    -- Set model and initialize
    self:SetModel("models/metrostroi_train/81-710/81-508t.mdl")
    self.BaseClass.Initialize(self)
    self:SetPos(self:GetPos() + Vector(0,0,140))

    -- Create seat entities
    self.DriverSeat = self:CreateSeat("driver",Vector(425+3,-39.4,-31.5),Angle(0,0,0))
    self.InstructorsSeat = self:CreateSeat("instructor",Vector(430,40,-48),Angle(0,90,0),"models/vehicles/prisoner_pod_inner.mdl")
    self.ExtraSeat1 = self:CreateSeat("instructor",Vector(443,0,-48+6+2.5),Angle(0,90,0),"models/vehicles/prisoner_pod_inner.mdl")
    self.ExtraSeat2 = self:CreateSeat("instructor",Vector(420,-20,-48+6),Angle(0,90,0),"models/vehicles/prisoner_pod_inner.mdl")

    -- Hide seats
    self.DriverSeat:SetColor(Color(0,0,0,0))
    self.DriverSeat:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.InstructorsSeat:SetColor(Color(0,0,0,0))
    self.InstructorsSeat:SetRenderMode(RENDERMODE_TRANSALPHA)

    self.ExtraSeat1:SetColor(Color(0,0,0,0))
    self.ExtraSeat1:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.ExtraSeat2:SetColor(Color(0,0,0,0))
    self.ExtraSeat2:SetRenderMode(RENDERMODE_TRANSALPHA)

    -- Create bogeys
    if Metrostroi.BogeyOldMap then
        self.FrontBogey = self:CreateBogey(Vector( 317-5,0,-89),Angle(0,180,0),true,"717")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,0,-89),Angle(0,0,0),false,"717")
        self.FrontCouple = self:CreateCouple(Vector( 419.5+3.5,0,-75),Angle(0,0,0),true,"722")
        self.RearCouple  = self:CreateCouple(Vector(-421.5-3.5,0,-75),Angle(0,180,0),false,"717")
    else
        self.FrontBogey = self:CreateBogey(Vector( 317-11,1.0,-85),Angle(0,180,0),true,"717")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,1.3,-85),Angle(0,0,0),false,"717")
        self.FrontCouple = self:CreateCouple(Vector( 421-4-3.6+4.5,1.0,-72),Angle(0,0,0),true,"702")
        self.RearCouple  = self:CreateCouple(Vector(-421+2+3.6-4.5,1.3,-72),Angle(0,180,0),false,"702")
    end
    self.FrontBogey:SetNWInt("MotorSoundType",0)
    self.RearBogey:SetNWInt("MotorSoundType",0)
    self.FrontBogey.PneumaticPow = 1.5
    self.RearBogey.PneumaticPow = 1.5

    -- Initialize key mapping
    self.KeyMap = {
        [KEY_1] = "KVSetX1B",
        [KEY_2] = "KVSetX2",
        [KEY_3] = "KVSetX3",
        [KEY_4] = "KVSet0",
        [KEY_5] = "KVSetT1B",
        [KEY_6] = "KVSetT1AB",
        [KEY_7] = "KVSetT2",

        [KEY_G] = "KU9Set",

        [KEY_0] = "KVReverserUp",
        [KEY_9] = "KVReverserDown",
        [KEY_PAD_PLUS] = "KVReverserUp",
        [KEY_PAD_MINUS] = "KVReverserDown",
        [KEY_W] = "KVUp",
        [KEY_S] = "KVDown",
        [KEY_F] = "PneumaticBrakeUp",
        [KEY_R] = "PneumaticBrakeDown",

        [KEY_A] = {"KU12",helper="V6Set"},
        [KEY_D] = "KU7",
        [KEY_V] = {"V2Toggle",helper="V3Toggle"},
        [KEY_L] = "HornEngage",
        [KEY_PAD_1] = "PneumaticBrakeSet1",
        [KEY_PAD_2] = "PneumaticBrakeSet2",
        [KEY_PAD_3] = "PneumaticBrakeSet3",
        [KEY_PAD_4] = "PneumaticBrakeSet4",
        [KEY_PAD_5] = "PneumaticBrakeSet5",

        [KEY_SPACE] = "PBSet",
        [KEY_BACKSPACE] = "EmergencyBrake",

        [KEY_PAD_ENTER] = "KVWrenchKV",
        [KEY_PAD_0] = "DriverValveDisconnect",
        [KEY_LSHIFT] = {
            [KEY_W] = "KVUp_Unlocked",

            [KEY_1] = "V4Set",
            [KEY_2] = "V5Set",
            [KEY_4] = "KVSet0Fast",
            [KEY_L] = "DriverValveDisconnect",

            [KEY_7] = "KVWrenchNone",
            [KEY_8] = "KVWrenchKRU",
            [KEY_9] = "KVWrenchKV",
            [KEY_0] = "KVWrenchKV",
            [KEY_6] = "KVSetT1A",

            [KEY_PAD_ENTER] = "KVWrenchNone",
        },

        [KEY_LALT] = {
            [KEY_V] = "V2Toggle",
        },
    }
    self.KeyMap[KEY_RALT] = self.KeyMap[KEY_LALT]
    self.KeyMap[KEY_RSHIFT] = self.KeyMap[KEY_LSHIFT]
    self.KeyMap[KEY_RCONTROL] = self.KeyMap[KEY_LCONTROL]

    self.InteractionZones = {
        {
            ID = "FrontBrakeLineIsolationToggle",
            Pos = Vector(469, -29, -62), Radius = 8,
        },
        {
            ID = "FrontTrainLineIsolationToggle",
            Pos = Vector(469, 29, -62), Radius = 8,
        },
        {
            ID = "RearBrakeLineIsolationToggle",
            Pos = Vector(-462, 30, -62), Radius = 8,
        },
        {
            ID = "RearTrainLineIsolationToggle",
            Pos = Vector(-462, -30, -62), Radius = 8,
        },
        {
            ID = "FrontDoor",
            Pos = Vector(469,32,-10), Radius = 12,
        },
        {
            ID = "CabinDoor",
            Pos = Vector(469,58,-10), Radius = 10,
        },
        {
            ID = "CabinDoor",
            Pos = Vector(469,58,-30), Radius = 10,
        },
        {
            ID = "CabinDoor",
            Pos = Vector(390,64,-10), Radius = 16,
        },
        {
            ID = "PassengerDoor",
            Pos = Vector(389,35,8), Radius = 16,
        },
        {
            ID = "RearDoor",
            Pos = Vector(-469,-35,-10), Radius = 20,
        },
        {
            ID = "GVToggle",
            Pos = Vector(155,63.7,-75), Radius = 10,
        },
        {
            ID = "AirDistributorDisconnectToggle",
            Pos = Vector(-224.5, 50, -66), Radius = 20,
        },
    }

    self.Lights = {
        [9] = { "dynamiclight",    Vector(200, 0, -5), Angle(0,0,0), Color(255,125,25), brightness = 3, distance = 200},
        [10] = { "dynamiclight",    Vector(-150, 0, -5), Angle(0,0,0), Color(255,125,25), brightness = 3, distance = 200},
        [11] = { "dynamiclight",    Vector( 200, 0, -5), Angle(0,0,0), Color(255,125,25), brightness = 4, distance = 260},
        [12] = { "dynamiclight",    Vector(   0, 0, -5), Angle(0,0,0), Color(255,125,25), brightness = 4, distance = 260},
        [13] = { "dynamiclight",    Vector(-260, 0, -5), Angle(0,0,0), Color(255,125,25), brightness = 4, distance = 260},

        -- Cabin
        [23] = { "dynamiclight",        Vector(432,-10.0,20), Angle(0,0,0), Color(252, 157, 77), brightness = 0.0005, distance = 600},

        [30]  = { "light",           Vector(465+5  ,   -45, -37), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 1.5, texture = "sprites/light_glow02.vmt" },
        [31]  = { "light",           Vector(465+5  ,   45, -37), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 1.5, texture = "sprites/light_glow02.vmt" },
        [32]  = { "light",           Vector(465+5  ,   0, 48), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 2.5, texture = "sprites/light_glow02.vmt" },
    }

    -- Cross connections in train wires
    self.TrainWireInverts = {
        --[18] = true,
        [34] = true,
    }
    self.TrainWireCrossConnections = {
        [5] = 4, -- Reverser F<->B
        [31] = 32, -- Doors L<->R
    }

    -- Setup door positions
    self.LeftDoorPositions = {}
    self.RightDoorPositions = {}
    for i=0,3 do
        table.insert(self.LeftDoorPositions,Vector(353.0 - 35*0.5 - 231*i,65,-1.8))
        table.insert(self.RightDoorPositions,Vector(353.0 - 35*0.5 - 231*i,-65,-1.8))
    end

    -- KV wrench mode
    self:OnButtonPress("KVWrenchNone")

    -- Parking brake ratio
    self.ManualBrake = 0.0
    self.RearDoor = false
    self.FrontDoor = false
    self.CabinDoor = false
    self.PassengerDoor = false
    self:TrainSpawnerUpdate()
end

function ENT:TrainSpawnerUpdate()
    self.Pneumatic.VDOLLoud = math.random()<0.25 and 0.9+math.random()*0.2
    self.Pneumatic.VDORLoud = math.random()<0.25 and 0.9+math.random()*0.2
end
--------------------------------------------------------------------------------
function ENT:Think()
    local RetVal = self.BaseClass.Think(self)

    self:SetPackedBool("PanelLights",self.Panel["Headlights1"]> 0.5)

    local lightsActive2 = math.min(1,self.Panel.MainLights2)^2
    local lightsActive1 = math.min(1,self.Panel.MainLights1)^2
    local emerActive1 = self.Panel.EmergencyLights1
    local emerActive2 = self.Panel.EmergencyLights2
    self:SetPackedBool("Lamps_emer1",emerActive1 > 0 and lightsActive1 == 0)
    self:SetPackedBool("Lamps_cab",emerActive1 > 0)
    --self:SetLightPower(9, false)
    self:SetLightPower(23, emerActive1 > 0)
    self:SetPackedBool("Lamps_emer2",emerActive2 > 0)
    self:SetPackedBool("Lamps_half1",lightsActive1 > 0)
    self:SetPackedBool("Lamps_half2",lightsActive2 > 0)
    if lightsActive1 == 0 then
        self:SetLightPower(9,emerActive1 > 0,emerActive1*0.3+emerActive2*0.7)
        self:SetLightPower(10,emerActive2 > 0)
        self:SetLightPower(11, false)
        self:SetLightPower(12, false)
        self:SetLightPower(13, false)
    else
        self:SetLightPower(9,false)
        self:SetLightPower(10,false)
        self:SetLightPower(11, lightsActive1 > 0, lightsActive1*0.1+lightsActive2*0.9)
        self:SetLightPower(12, lightsActive1 > 0, lightsActive1*0.4+lightsActive2*0.6)
        self:SetLightPower(13, lightsActive1 > 0, lightsActive1*0.9+lightsActive2*0.1)
    end
    self:SetPackedRatio("LampsStrength",lightsActive1)

    -- Switch and button states
    --self:SetPackedBool(0,self:IsWrenchPresent())

    -- Signal if doors are open or no to platform simulation
    self.LeftDoorsOpen =
        (self.Pneumatic.LeftDoorState[1] > 0.5) or
        (self.Pneumatic.LeftDoorState[2] > 0.5) or
        (self.Pneumatic.LeftDoorState[3] > 0.5) or
        (self.Pneumatic.LeftDoorState[4] > 0.5)
    self.RightDoorsOpen =
        (self.Pneumatic.RightDoorState[1] > 0.5) or
        (self.Pneumatic.RightDoorState[2] > 0.5) or
        (self.Pneumatic.RightDoorState[3] > 0.5) or
        (self.Pneumatic.RightDoorState[4] > 0.5)

    local TW18 = 0
    if self.Panel.RRP > 0 then
        local wags = #self.WagonList
        for _,v in ipairs(self.WagonList) do
            TW18 = TW18+(v.Panel.TW18 or 0)/wags
        end
    end
    self:SetPackedRatio("RRP",math.Clamp(TW18^1.2,0,1))
    self:SetPackedBool("GRP",self.Panel.GRP > 0)
    self:SetPackedBool("SD",self.Panel.SD > 0)
    self.TrueBrakeAngle = self.TrueBrakeAngle or 0
    if self.ManualBrake < 0.001 and self.ManualBrake > self.TrueBrakeAngle then self.TrueBrakeAngle = self.ManualBrake end
    if self.ManualBrake > 0.999 and self.ManualBrake < self.TrueBrakeAngle then self.TrueBrakeAngle = self.ManualBrake end
    self.TrueBrakeAngle = self.TrueBrakeAngle + (self.ManualBrake - self.TrueBrakeAngle)*2.0*(self.DeltaTime or 0)
    self:SetPackedRatio("ManualBrake",self.TrueBrakeAngle)

    self:SetPackedRatio("LampsCount",math.Clamp(1-self.Electric.Cosume,0.3,1))
    self:SetNW2Int("WrenchMode",self.KVWrenchMode)
    self:SetPackedBool("Compressor",self.Pneumatic.Compressor == 1.0)
    self:SetPackedBool("RK",self.RheostatController.Velocity ~= 0.0)
    self:SetPackedBool("RearDoor",self.RearDoor)
    self:SetPackedBool("FrontDoor",self.FrontDoor)
    self:SetPackedBool("PassengerDoor",self.PassengerDoor)
    self:SetPackedBool("CabinDoor",self.CabinDoor)
    self:SetPackedBool("AnnPlay",self.Panel.AnnouncerPlaying > 0)


    self:SetPackedRatio("CranePosition", self.Pneumatic.DriverValvePosition/7)
    self:SetPackedRatio("ControllerPosition", (self.KV.ControllerPosition+3)/7)
    self:SetPackedRatio("ReverserPosition", 1-(self.KV.ReverserPosition+1)/2)
    self:SetPackedBool("RCUPosition", self.KV.RCU > 0)
    self:SetPackedRatio("BLPressure", self.Pneumatic.ReservoirPressure/16.0)
    self:SetPackedRatio("TLPressure", self.Pneumatic.TrainLinePressure/16.0)
    self:SetPackedRatio("BCPressure",  math.min(2.7,self.Pneumatic.BrakeCylinderPressure)/6.0)
    self:SetPackedRatio("EnginesVoltage", self.Engines.E24/2000.0)
    self:SetPackedRatio("EnginesCurrent", 0.5 + 0.5*(self.Electric.I24/500.0))
    self:SetPackedRatio("BatteryVoltage",self.Panel["V1"]*self.Battery.Voltage/150)

    self:SetPackedRatio("Speed", self.Speed/100)

    -- Exchange some parameters between engines, pneumatic system, and real world
    self.Engines:TriggerInput("Speed",self.Speed)
    if IsValid(self.FrontBogey) and IsValid(self.RearBogey) and not self.IgnoreEngine then
        local A = 2*self.Engines.BogeyMoment
        self.FrontBogey.MotorForce = 22500+3000*(A < 0 and 1 or 0)
        self.FrontBogey.Reversed = (self.Reverser.NZ > 0.5)
        self.RearBogey.MotorForce  = 22500+3000*(A < 0 and 1 or 0)
        self.RearBogey.Reversed = (self.Reverser.VP > 0.5)

        -- These corrections are required to beat source engine friction at very low values of motor power
        local P = math.max(0,0.04449 + 1.06879*math.abs(A) - 0.465729*A^2)
        if math.abs(A) > 0.4 then P = math.abs(A) end
        if math.abs(A) < 0.05 then P = 0 end
        if self.Speed < 10 then P = P*(1.0 + 0.5*(10.0-self.Speed)/10.0) end
        self.RearBogey.MotorPower  = P*0.5*((A > 0) and 1 or -1)
        self.FrontBogey.MotorPower = P*0.5*((A > 0) and 1 or -1)

        -- Apply brakes
        local add = 1
        if math.abs(self:GetAngles().pitch) > 4 then
            add = math.min((math.abs(self:GetAngles().pitch)-4)/2,1)*2
        end
        self.FrontBogey.PneumaticBrakeForce = 50000.0-2000
        self.FrontBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure*add
        self.FrontBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        self.FrontBogey.ParkingBrakePressure = self.ManualBrake
        self.RearBogey.PneumaticBrakeForce = 50000.0-2000
        self.RearBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure*add
        self.RearBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
    end

    self:GenerateJerks()

    return RetVal
end

--------------------------------------------------------------------------------
function ENT:OnButtonPress(button,ply)
    if string.find(button,"PneumaticBrakeSet") then
        self.Pneumatic:TriggerInput("BrakeSet",tonumber(button:sub(-1,-1)))
        return
    end
    -- Parking brake
    if button == "ParkingBrakeLeft" then self.ManualBrake = math.max(0.0,(self.ManualBrake or 0) - 0.05) end
    if button == "ParkingBrakeRight" then self.ManualBrake = math.min(1.0,(self.ManualBrake or 0) + 0.05) end
    if string.find(button,"PneumaticBrakeSet") then
        self.Pneumatic:TriggerInput("BrakeSet",tonumber(button:sub(-1,-1)))
        return
    end
    if button == "FrontDoor" then self.FrontDoor = not self.FrontDoor end
    if button == "RearDoor" then self.RearDoor = not self.RearDoor end
    if button == "PassengerDoor" then self.PassengerDoor = not self.PassengerDoor end
    if button == "CabinDoor" then self.CabinDoor = not self.CabinDoor end

    -- Parking brake
    if button == "ManualBrakeLeft" then
        self.ManualBrake = math.max(0.0,self.ManualBrake - 0.008)
        if self.ManualBrake == 0.0 then return end
    end
    if button == "ManualBrakeRight" then
        self.ManualBrake = math.min(1.0,self.ManualBrake + 0.008)
        if self.ManualBrake == 1.0 then return end
    end

    if button == "KVUp" then
        if self.KV.ControllerPosition ~= -1 then
            self.KV:TriggerInput("ControllerUp",1.0)
        end
    end
    if button == "KVUp_Unlocked" then
        self.KV:TriggerInput("ControllerUp",1.0)
    end
    if button == "KVDown" then
        self.KV:TriggerInput("ControllerDown",1.0)
    end

    -- KRU
    if (self.KVWrenchMode == 3) and (button == "KVReverserUp") then self.KV:TriggerInput("RCU",1) end
    if (self.KVWrenchMode == 3) and (button == "KVReverserDown") then self.KV:TriggerInput("RCU",0) end

    if button == "KVSetT1B" then
        if self.KV.ControllerPosition == -1 then
            self.KV:TriggerInput("ControllerSet",-2)
        else
            self.KV:TriggerInput("ControllerSet",-1)
        end
    end
    if button == "KVSetX1B" then
        if self.KV.ControllerPosition == 1 then
            self.KV:TriggerInput("ControllerSet",2)
        else
            self.KV:TriggerInput("ControllerSet",1)
        end
    end
    if button == "KVSetT1AB" then
        if self.KV.ControllerPosition == -2 then
            self.KV:TriggerInput("ControllerSet",-1)
        else
            self.KV:TriggerInput("ControllerSet",-2)
        end
    end
    if button == "KVWrenchKV" then
        if self.KVWrenchMode == 0  then
            self:PlayOnce("revers_in","cabin",0.7)
            self.KVWrenchMode = 1
            self.KV:TriggerInput("Enabled",1)
        end
    end
    if button == "KVWrenchNone" then
        if self.KVWrenchMode == 0 then
            self:PlayOnce("rcu_in","cabin",0.7)
            self.KVWrenchMode = 3
        elseif self.KVWrenchMode ~= 0 and self.KV.ReverserPosition == 0 then
            self:PlayOnce("revers_out","cabin",0.7)
            self.KVWrenchMode = 0
            self.KV:TriggerInput("Enabled",0)
        end
    end
    if button == "KU12" and self.V2.Value < 1 then self.KU12:TriggerInput("Close",1)  end
    if button == "KU7" and self.V2.Value < 1 then self.KU7:TriggerInput("Close",1)  end

    if button == "EmergencyBrake" then
        self.KV:TriggerInput("ControllerSet",-3)
        self.Pneumatic:TriggerInput("BrakeSet",7)
        self.DriverValveBLDisconnect:TriggerInput("Set",1)
        return
    end
    if button == "DriverValveDisconnect" then
        if self.DriverValveBLDisconnect.Value == 0 or self.DriverValveTLDisconnect.Value == 0 then
            self.DriverValveBLDisconnect:TriggerInput("Set",1)
            self.DriverValveTLDisconnect:TriggerInput("Set",1)
        else
            --self:PlayOnce("pneumo_disconnect1","cabin",0.9)
            self.DriverValveBLDisconnect:TriggerInput("Set",0)
            self.DriverValveTLDisconnect:TriggerInput("Set",0)
        end
        return
    end
end

function ENT:OnButtonRelease(button)
    if string.find(button,"PneumaticBrakeSet") then
        if button == "PneumaticBrakeSet1" and (self.Pneumatic.DriverValvePosition == 1) then
            self.Pneumatic:TriggerInput("BrakeSet",2)
        end
        return
    end
    if button == "KU12" and self.V2.Value < 1 then self.KU12:TriggerInput("Open",1) end
    if button == "KU7" and self.V2.Value < 1 then self.KU7:TriggerInput("Open",1) end
    if button == "KVSetT1AB" then
        if self.KV.ControllerPosition > -3 then
            self.KV:TriggerInput("ControllerSet",-2)
        end
    end

    if button == "KVSetT1AB" then
        if self.KV.ControllerPosition > -2 then
            self.KV:TriggerInput("ControllerSet",-2)
        end
    end
    if button == "KVSetX1B" then
        if self.KV.ControllerPosition > 1 then
            self.KV:TriggerInput("ControllerSet",1)
        end
    end
    if button == "KVSetT1B" then
        if self.KV.ControllerPosition < -1 then
            self.KV:TriggerInput("ControllerSet",-1)
        end
    end
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

function ENT:TriggerTurbostroiInput(sys,name,val)
    self.BaseClass.TriggerTurbostroiInput(self,sys,name,val)
    if sys == "Panel" then
        if name == "Headlights1" or name == "Headlights2" then
            self:SetPackedBool("Headlights1",self.Panel["Headlights1"] > 0)
            self:SetPackedBool("Headlights2",self.Panel["Headlights2"] > 0)
            self:SetLightPower(30,self.Panel["Headlights1"] > 0.5)
            self:SetLightPower(31,self.Panel["Headlights1"] > 0.5)
            self:SetLightPower(32,self.Panel["Headlights2"] > 0.5)
        end
    end
end
