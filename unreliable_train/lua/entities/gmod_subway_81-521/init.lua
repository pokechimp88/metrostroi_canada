AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BogeyDistance = 650 -- Needed for gm trainspawner
ENT.SyncTable = {
    "A53","A56","A54","A24","A39","A23","A14","A13","A31","A32",
    "A16","A12","A49","A15","A27","A50","A8","A52","A19","A10",
    "A22","A30","A1","A2","A3","A4","A5","A6","A72","A38","A20",
    "A25","A37","A55","A45","A66","A51","A65","A28","A70","AV2",
    "AV3","AV4","AV5","A81","AV6","A80","A18","Ring",
    "VB","GV",
    "DriverValveBLDisconnect","DriverValveTLDisconnect","ParkingBrake",
    "A84","BPSNon","ConverterProtection","L_1","OtklBV","Start","VozvratRP"
}

function ENT:Initialize()
    self.Plombs = {
        A84 = true,
        Init = true,
    }
    self.LampType = 1

    -- Set model and initialize
    self:SetModel("models/metrostroi_train/81-718/81-718_int.mdl")
    self.BaseClass.Initialize(self)
    self:SetPos(self:GetPos() + Vector(0,0,140))

    -- Create seat entities
    self.DriverSeat = self:CreateSeat("driver",Vector(-415-16,0,-48+2.5+6),Angle(0,-90,0),"models/vehicles/prisoner_pod_inner.mdl")
    --self.InstructorsSeat = self:CreateSeat("instructor",Vector(430,47,-27+2.5),Angle(0,-90,0))

    -- Hide seats
    self.DriverSeat:SetColor(Color(0,0,0,0))
    self.DriverSeat:SetRenderMode(RENDERMODE_TRANSALPHA)
    --self.InstructorsSeat:SetColor(Color(0,0,0,0))
    --self.InstructorsSeat:SetRenderMode(RENDERMODE_TRANSALPHA)

    -- Create bogeys
    if Metrostroi.BogeyOldMap then
        self.FrontBogey = self:CreateBogey(Vector( 317-5,0,-84),Angle(0,180,0),true,"700")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,0,-84),Angle(0,0,0),false,"700")
        self.FrontCouple = self:CreateCouple(Vector( 420.54,0,-62),Angle(0,0,0),true,"717")
        self.RearCouple  = self:CreateCouple(Vector(-426.04,0,-62),Angle(0,180,0),false,"717")
    else
        self.FrontBogey = self:CreateBogey(Vector( 317-11,0,-80),Angle(0,180,0),true,"700")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,0,-80),Angle(0,0,0),false,"700")
        self.FrontCouple = self:CreateCouple(Vector( 408,0,-66),Angle(0,0,0),true,"717")
        self.RearCouple  = self:CreateCouple(Vector(-421,0,-66),Angle(0,180,0),false,"717")
    end
    self.FrontBogey:SetNWInt("MotorSoundType",Metrostroi.Version > 1537278077 and 699 or 0)
    self.RearBogey:SetNWInt("MotorSoundType",Metrostroi.Version > 1537278077 and 699 or 0)
    local pneumoPow = 1.3+(math.random()^1.2)*0.3
    self.FrontBogey.PneumaticPow = pneumoPow
    self.RearBogey.PneumaticPow = pneumoPow

    -- Initialize key mapping
    self.KeyMap = {
        [KEY_1] = "StartSet",
        [KEY_8] = "StartSet",
        [KEY_W] = "StartSet",
        [KEY_PAD_DIVIDE] = "StartSet",
        [KEY_0] = "RV+",
        [KEY_9] = "RV-",
        [KEY_PAD_PLUS] = "RV+",
        [KEY_PAD_MINUS] = "RV-",
        [KEY_G] = "VozvratRPSet",
        [KEY_L] = "HornEngage",

        [KEY_F] = "PneumaticBrakeUp",
        [KEY_R] = "PneumaticBrakeDown",
        [KEY_PAD_1] = "PneumaticBrakeSet1",
        [KEY_PAD_2] = "PneumaticBrakeSet2",
        [KEY_PAD_3] = "PneumaticBrakeSet3",
        [KEY_PAD_4] = "PneumaticBrakeSet4",
        [KEY_PAD_5] = "PneumaticBrakeSet5",
        [KEY_PAD_6] = "PneumaticBrakeSet6",
        [KEY_PAD_7] = "PneumaticBrakeSet7",
        [KEY_PAD_0] = "DriverValveDisconnect",

        [KEY_BACKSPACE] = "EmergencyBrakeValveToggle",

        [KEY_LSHIFT] = {
            [KEY_L] = "DriverValveDisconnect",
        },

        [KEY_RSHIFT] = {
            [KEY_L] = "DriverValveDisconnect",
        },
    }


    self.InteractionZones = {
        {
            ID = "FrontBrakeLineIsolationToggle",
            Pos = Vector(461.5, -34, -53), Radius = 8,
        },
        {
            ID = "FrontTrainLineIsolationToggle",
            Pos = Vector(461.5, 33, -53), Radius = 8,
        },
        {
            ID = "RearBrakeLineIsolationToggle",
            Pos = Vector(-474.5, 33, -53), Radius = 8,
        },
        {
            ID = "RearTrainLineIsolationToggle",
            Pos = Vector(-474.5, -34, -53), Radius = 8,
        },
        {
            ID = "FrontDoor",
            Pos = Vector(451.5,35,4), Radius = 20,
        },
        {
            ID = "RearDoor",
            Pos = Vector(-464.8,-35,4), Radius = 20,
        },
        {
            ID = "GVToggle",
            Pos = Vector(140.50,62,-64), Radius = 10,
        },
        {
            ID = "VBToggle",
            Pos = Vector(-470 -15, 53), Radius = 20,
        },
        {
            ID = "AirDistributorDisconnectToggle",
            Pos = Vector(-177, -66, -50), Radius = 20,
        },
    }

    -- Lights
    self.Lights = {
        -- Interior
        [11] = { "dynamiclight",    Vector( 200, 0, 0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400 , fov=180,farz = 128 },
        [12] = { "dynamiclight",    Vector(   0, 0, 0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400, fov=180,farz = 128 },
        [13] = { "dynamiclight",    Vector(-200, 0, 0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400 , fov=180,farz = 128 },

        -- Side lights
        [15] = { "light",Vector(-52,67,45.5)+Vector(0,0.9,3.25), Angle(0,0,0), Color(254,254,254), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [16] = { "light",Vector(-52,67,45.5)+Vector(0,0.9,-0.02), Angle(0,0,0), Color(40,240,122), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [17] = { "light",Vector(-52,67,45.5)+Vector(0,0.9,-3.3), Angle(0,0,0), Color(254,210,18), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [18] = { "light",Vector(39,-67,45.5)+Vector(0,-0.9,3.25), Angle(0,0,0), Color(254,254,254), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [19] = { "light",Vector(39,-67,45.5)+Vector(0,-0.9,-0.02), Angle(0,0,0), Color(40,240,122), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [20] = { "light",Vector(39,-67,45.5)+Vector(0,-0.9,-3.3), Angle(0,0,0), Color(254,210,18), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },

        [21] = { "light",Vector(-6.5,67,51.2)+Vector(3.25,0.9,-0.02), Angle(0,0,0), Color(254,254,254), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [22] = { "light",Vector(-6.5,67,51.2)+Vector(-0.06,0.9,-0.02), Angle(0,0,0), Color(40,240,122), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [23] = { "light",Vector(-6.5,67,51.2)+Vector(-3.33,0.9,-0.02), Angle(0,0,0), Color(254,210,18), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [24] = { "light",Vector(-6.5,-67,51.2)+Vector(3.33,-0.9,-0.02), Angle(0,0,0), Color(254,254,254), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [25] = { "light",Vector(-6.5,-67,51.2)+Vector(0.06,-0.9,-0.02), Angle(0,0,0), Color(40,240,122), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
        [26] = { "light",Vector(-6.5,-67,51.2)+Vector(-3.28,-0.9,-0.02), Angle(0,0,0), Color(254,210,18), brightness = 0.1, scale = 0.2, texture = "sprites/light_glow02.vmt" },
    }


    -- Cross connections in train wires
    self.TrainWireInverts = {
        [28] = true,
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

    self.Lamps = {
        broken = {},
    }
    local rand = math.random() > 0.8 and 1 or math.random(0.95,0.99)
    for i = 1,30 do
        if math.random() > rand then self.Lamps.broken[i] = math.random() > 0.5 end
    end

    self:SetNW2Int("Type",self:GetNW2Int("Type",2))
    self:TrainSpawnerUpdate()
end

function ENT:UpdateLampsColors()
    self.LampType = math.Round(math.random()^0.5)+1
    self:SetNW2Int("LampType",self.LampType)

    local lCol,lCount = Vector(),0
    local rnd1,rnd2,col = 0.7+math.random()*0.3,math.random()
    local typ = math.Round(math.random())
    local r,g = 15,15
    for i = 1,30 do
        local chtp = math.random() > rnd1
        if typ == 0 and not chtp or typ == 1 and chtp then
            if math.random() > rnd2 then
                r = -20+math.random()*25
                g = 0
            else
                g = -5+math.random()*15
                r = g
            end
            col = Vector(245+r,228+g,150)
        else
            if math.random() > rnd2 then
                g = math.random()*15
                b = g
            else
                g = 15
                b = -10+math.random()*25
            end
            col = Vector(255,235+g,235+b)
        end
        lCol = lCol + col
        lCount = lCount + 1
        if i%9.3<1 then
            local id = 9+math.ceil(i/9.3)
            self:SetLightPower(id,false)

            local tcol = (lCol/lCount)/255
            self.Lights[id][4] = Vector(tcol.r,tcol.g^3,tcol.b^3)*255
            lCol = Vector() lCount = 0
        end
        self:SetNW2Vector("lamp"..i,col)
    end
end

function ENT:TrainSpawnerUpdate()
    self:SetNW2Bool("Custom",self.CustomSettings)
    local num = self.WagonNumber
    math.randomseed(num+817171)
    if self.CustomSettings then
        local dot5 = false
        local typ = 1
        self:SetNW2Int("Crane",typ==1 and self:GetNW2Int("Cran") or 2)

        local lampType = 2
        local BPSNType = self:GetNW2Int("BPSNType")
        local SeatType = self:GetNW2Int("SeatType")
        self:SetNW2Bool("Dot5",dot5)
            self:SetNW2Int("LampType",lampType==1 and (math.random()>0.5 and 2 or 1) or lampType-1)
            self:SetNW2Int("BPSNType",BPSNType==1 and math.ceil(math.random()*12+0.5) or BPSNType-1)
            if SeatType==1 then
                self:SetNW2Bool("NewSeats",math.random()>0.5)
            else
                self:SetNW2Bool("NewSeats",SeatType==3)
            end
    else
        local num = self.WagonNumber
        local typ = self.WagonNumberConf or {}
        local lvz = typ[1]
        self.Dot5 = typ[2]
        self.NewBortlamps = typ[4]
        self:SetNW2Bool("Dot5",self.Dot5)
        self:SetNW2Bool("LVZ",lvz)
        self:SetNW2Bool("NewSeats",typ[3])
        self:SetNW2Bool("NewBortlamps",self.NewBortlamps)

        self:SetNW2Int("LampType",math.random()>0.5 and 2 or 1)

        local tex = typ[5] and typ[5][math.random(1,#typ[5])] or "Def_717MSKWhite"
        self:SetNW2String("PassTexture",tex)
        local oldType = not self.Dot5 and not typ[3] and not lvz
        self:SetNW2Int("BPSNType",oldType and (math.random()>0.7 and 2 or 1) or 2+math.Clamp(math.floor(math.random()*11)+1,1,11))

        self:SetNW2Int("Crane",not self.Dot5 and 2 or 1)
        if self.Dot5 then
            self.FrontCouple.CoupleType = "717"
        else
            self.FrontCouple.CoupleType = "702"
        end
        self.RearCouple.CoupleType = self.FrontCouple.CoupleType
        self.FrontCouple:SetParameters()
        self.RearCouple:SetParameters()
        self:SetNW2String("Texture","Def_717MSKClassic1")
        --self.ARSType = self:GetNW2Int("ARSType",1)
    end
    self.LampType = self:GetNW2Int("LampType",1)
    self.Pneumatic.ValveType = self:GetNW2Int("Crane",1)
    self.Announcer.AnnouncerType = self:GetNW2Int("Announcer",1)

    self.WorkingLights = 6
    self:SetPackedBool("Crane013",self.Pneumatic.ValveType == 2)
    self:UpdateTextures()
    self:UpdateLampsColors()

    local pneumoPow = 1.3+(math.random()^1.2)*0.3
    if IsValid(self.FrontBogey) then
        self.FrontBogey.PneumaticPow = pneumoPow
    end
    if IsValid(self.RearBogey) then
        self.RearBogey.PneumaticPow = pneumoPow
    end
    self.Pneumatic.VDOLLoud = math.random()<0.4 and 0.9+math.random()*0.2
    self.Pneumatic.VDORLoud = math.random()<0.4 and 0.9+math.random()*0.2
    math.randomseed(os.time())
end

--------------------------------------------------------------------------------
function ENT:Think()
    local retVal = self.BaseClass.Think(self)
    local Panel = self.Panel

    local lightsActive1 = Panel.EmergencyLights > 0
    local lightsActive2 = Panel.MainLights > 0.0
    local mul = 0
    for i = 1,30 do
        if (lightsActive2 or (lightsActive1 and math.ceil((i+5)%8)==math.ceil(i/7)%2)) then
            if not self.Lamps[i] and not self.Lamps.broken[i] then self.Lamps[i] = CurTime() + math.Rand(0.1,math.Rand(0.5,2)) end
        else
            self.Lamps[i] = nil
        end
        if (self.Lamps[i] and CurTime() - self.Lamps[i] > 0) then
            mul = mul + 1
            self:SetPackedBool("lightsActive"..i,true)
        else
            self:SetPackedBool("lightsActive"..i,false)
        end
    end
    self:SetLightPower(11,mul > 0, mul/30)
    self:SetLightPower(12,mul > 0, mul/30)
    self:SetLightPower(13,mul > 0, mul/30)

    -- Side lights
    self:SetLightPower(15, Panel.DoorsW > 0.5)
    self:SetLightPower(18, Panel.DoorsW > 0.5)
    self:SetLightPower(16, Panel.GreenRP > 0.5)
    self:SetLightPower(19, Panel.GreenRP > 0.5)
    self:SetLightPower(17, Panel.BrW > 0.5)
    self:SetLightPower(20, Panel.BrW > 0.5)

    --self:SetLightPower(21, Panel.DoorsW > 0.5)
    --self:SetLightPower(24, Panel.DoorsW > 0.5)
    --self:SetLightPower(22, Panel.GreenRP > 0.5)
    --self:SetLightPower(25, Panel.GreenRP > 0.5)
    --self:SetLightPower(23, Panel.BrW > 0.5)
    --self:SetLightPower(26, Panel.BrW > 0.5)
    self:SetPackedBool("DoorsW",self.Panel.DoorsW > 0)
    self:SetPackedBool("GRP",self.Panel.GreenRP > 0)
    self:SetPackedBool("BrW",self.Panel.BrW > 0)

    self:SetPackedBool("M1_3",Panel.M1_3 > 0)
    self:SetPackedBool("M4_7",Panel.M4_7 > 0)

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

    --self:SetPackedRatio("Crane", self.Pneumatic.RealDriverValvePosition)
    --self:SetPackedRatio("Controller", (self.KV.ControllerPosition+3)/7)
    if self.Pneumatic.ValveType == 1 then
        self:SetPackedRatio("BLPressure", self.Pneumatic.ReservoirPressure/16.0)
    else
        self:SetPackedRatio("BLPressure", self.Pneumatic.BrakeLinePressure/16.0)
    end
    self:SetPackedRatio("TLPressure", self.Pneumatic.TrainLinePressure/16.0)
    self:SetPackedRatio("BCPressure", self.Pneumatic.BrakeCylinderPressure/6.0)
    self:SetPackedRatio("BatteryVoltage",self.Panel["V1"]*self.Battery.Voltage/150.0)
    self:SetPackedBool("Compressor",self.Pneumatic.Compressor > 0)
    self:SetPackedBool("RK",self.RheostatController.Velocity ~= 0.0)
    self:SetPackedBool("BPSN",self.PowerSupply.X2_2 > 0)
    self:SetPackedRatio("RV",self.RV.Value/2)
    self:SetPackedRatio("CranePosition", self.Pneumatic.RealDriverValvePosition)
    self:SetPackedBool("RZP",Panel.RZP > 0)


    self:SetPackedBool("FrontDoor",self.FrontDoor)
    self:SetPackedBool("RearDoor",self.RearDoor)
    self:SetPackedBool("CouchCap",self.CouchCap)

    self:SetPackedBool("AnnBuzz",Panel.AnnouncerBuzz > 0)
    self:SetPackedBool("AnnPlay",Panel.AnnouncerPlaying > 0)
    -- Exchange some parameters between engines, pneumatic system, and real world
    self.Engines:TriggerInput("Speed",self.Speed)
    if IsValid(self.FrontBogey) and IsValid(self.RearBogey) and not self.IgnoreEngine then
        local A = 2*self.Engines.BogeyMoment
        --self.FrontBogey.MotorForce = 27000+1000*(A < 0 and 1 or 0)
        --self.RearBogey.MotorForce  = 27000+1000*(A < 0 and 1 or 0)
        self.FrontBogey.MotorForce = 22500+5500*(A < 0 and 1 or 0)
        self.RearBogey.MotorForce  = 22500+5500*(A < 0 and 1 or 0)
        self.FrontBogey.Reversed = (self.Reverser.NZ > 0.5)
        self.RearBogey.Reversed = (self.Reverser.VP > 0.5)

        -- These corrections are required to beat source engine friction at very low values of motor power
        local P = math.max(0,0.04449 + 1.06879*math.abs(A) - 0.465729*A^2)
        if math.abs(A) > 0.4 then P = math.abs(A) end
        if math.abs(A) < 0.05 then P = 0 end
        if self.Speed < 10 then P = P*(1.0 + 0.5*(10.0-self.Speed)/10.0) end
        self.RearBogey.MotorPower  = P*0.5*((A > 0) and 1 or -1)
        self.FrontBogey.MotorPower = P*0.5*((A > 0) and 1 or -1)
        --self.RearBogey.MotorPower  = P*0.5
        --self.FrontBogey.MotorPower = P*0.5

        --self.Acc = (self.Acc or 0)*0.95 + self.Acceleration*0.05
        --print(self.Acc)

        -- Apply brakes
        self.FrontBogey.PneumaticBrakeForce = 50000.0-2000
        self.FrontBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        self.FrontBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        self.RearBogey.PneumaticBrakeForce = 50000.0-2000
        self.RearBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        self.RearBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        --self.RearBogey.ParkingBrake = self.ParkingBrake.Value > 0.5
    end

    self:GenerateJerks()
    -- Send networked variables
    --self:SendPackedData()
    return retVal
end


--------------------------------------------------------------------------------
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
    if button == "CouchCap" then
        if self.CouchCap and self.Pneumatic.DriverValvePosition>2 then return end
        self.CouchCap = not self.CouchCap
    end
    if not self.CouchCap and (not button:find("VB") and not button:find("GV") and not button:find("Isolation")) then return true end

    if button == "DriverValveDisconnect" then
        if self.DriverValveBLDisconnect.Value == 0 or self.DriverValveTLDisconnect.Value == 0 then
            self.DriverValveBLDisconnect:TriggerInput("Set",1)
            self.DriverValveTLDisconnect:TriggerInput("Set",1)
        else
            self.DriverValveBLDisconnect:TriggerInput("Set",0)
            self.DriverValveTLDisconnect:TriggerInput("Set",0)
        end
        return
    end
    if string.find(button,"PneumaticBrakeSet") then
        self.Pneumatic:TriggerInput("BrakeSet",tonumber(button:sub(-1,-1)))
        return
    end
end

function ENT:OnButtonRelease(button)
    if string.find(button,"PneumaticBrakeSet") then
        local pos = tonumber(button:sub(-1,-1))
        if button == "PneumaticBrakeSet1" then
            self.Pneumatic:TriggerInput("BrakeSet",2)
        end
        return
    end
end
