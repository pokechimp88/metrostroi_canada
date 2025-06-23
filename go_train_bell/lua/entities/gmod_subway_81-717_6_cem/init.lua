AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BogeyDistance = 650 -- Needed for gm trainspawner

--"DURASelectMain","DURASelectAlternate","DURAToggleChannel","DURAPowerToggle",
ENT.SyncTable = {
    "CustomC","Custom1","Custom2","Custom3","CustomD",
    "CustomE","CustomF","CustomG","R_UNch","R_ZS","R_G","R_Radio","R_Program1","R_Program2","R_Program1H","R_Program2H","KVT","KVTR",
    "VZ1","VUD1","KDL","KDLR","KDLK","KDP","KDLRK","DoorSelect",
    "KRZD","R_VPR","VozvratRP","AVU","KVP","ConverterProtection","RZP",--"SP","GreenRP",
    "KSN","ARS","ARSR","ALS","OtklAVU","OtklBV","OtklBVK","OVT","L_1","L_2","L_3","VP","DIPoff",
    "VMK","BPSNon","RezMK","ARS13","L_4","Radio13","VUS","VAH","VAD","KRP",
    "KAH","KAHK","KDPK",
    "A53","A56","A54","A17","A44","A39","A70","A14","A74","A26","AR63","AS1","A13","A21","A31","A32","A16","A12","A24","A49","A27","A72","A50","A29","A46","A47","A71","A7","A9","A84","A8","A52","A19","A48","A10","A22","A30","A1","A2","A3","A4","A5","A6","A18","A73","A20","A25","A11","A37","A45","A38","A51","A65","A66","A42","A43","A41","A40","A75","A76","A60","A58","A57","A59","A28",
    "AV2","AV3","AV4","AV5","AV6","AV1",
    "AIS","A15","A81","A68","A80",
    "RC1","VB","BPS","UOS", "PB", "UAVA",
    "DriverValveBLDisconnect","DriverValveTLDisconnect","DriverValveDisconnect","ParkingBrake","EPK","EmergencyBrakeValve",
    "VUD2","VDL","Wiper", "GV",
    "R_ASNPMenu","R_ASNPUp","R_ASNPDown","R_ASNPOn"
    , "ALSFreq","Ring","VBD","DoorBuzzer",
    "V11","V12","V13","UPPS_On","SAB1"
}
ENT.SyncFunctions = {
    ""
}
function ENT:Initialize()
	self.EmergencyDriveSet1 = false
	self:SetNW2Bool("EmergencyDriveSet1",EmergencyDriveSet1)
	--self:Remove()
	--print(Metrostroi.ASNPSetup)
	self:SetNW2Bool("ALSFreqKPlomb",true)
	self:SetNW2Bool("ASNPPlomb",true)
    self.Plombs = {
        VAH = true,
        VP = true,
        OtklAVU = true,
        OVT = true,
        --KAH = {true,"KAHK"},
        KAH = {true},
        RC1 = true,
        UOS = true,
        VBD = true,
        UAVA = true,
        UPPS_On = true,
        Init = true,
    }
	for i = 1,8 do
		self:SetNW2Int("DoorsAnim"..i,math.random(5,15))
	end
	self.VD = 0
	--self.AVU = 0
	self.ShowPepl = true
	self:SetNW2Bool("ShowPepl",self.ShowPepl)
	self.HeadLightBroken = {}
	self.RedLighBroken = {}
	self.BortLampBroken = {}
	--self.WasOtpr = false
    -- Set model and initialize
    self.MaskType = 1
    self.LampType = 1
    self:SetModel("models/metrostroi_train/81-717.6/6000.mdl")
    self:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.BaseClass.Initialize(self)
	self.OnInitialize1(self)
    self:SetPos(self:GetPos() + Vector(0,0,140))

    -- Create seat entities
    self.DriverSeat = self:CreateSeat("driver",Vector(435,-10 - 3.5,-20))
    self.InstructorsSeat = self:CreateSeat("instructor",Vector(425,50,-28+3),Angle(0,270,0))
    self.ExtraSeat1 = self:CreateSeat("instructor",Vector(410,30,-43),Angle(0,90,0),"models/vehicles/prisoner_pod_inner.mdl")
    self.ExtraSeat2 = self:CreateSeat("instructor",Vector(422,-45,-43),Angle(0,90,0),"models/vehicles/prisoner_pod_inner.mdl")
    self.ExtraSeat3 = self:CreateSeat("instructor",Vector(402,50,-43),Angle(0,50,0),"models/vehicles/prisoner_pod_inner.mdl")

    -- Hide seats
    self.DriverSeat:SetColor(Color(0,0,0,0))
    self.DriverSeat:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.InstructorsSeat:SetColor(Color(0,0,0,0))
    self.InstructorsSeat:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.ExtraSeat1:SetColor(Color(0,0,0,0))
    self.ExtraSeat1:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.ExtraSeat2:SetColor(Color(0,0,0,0))
    self.ExtraSeat2:SetRenderMode(RENDERMODE_TRANSALPHA)
    self.ExtraSeat3:SetColor(Color(0,0,0,0))
    self.ExtraSeat3:SetRenderMode(RENDERMODE_TRANSALPHA)

    -- Create bogeys
    --if Metrostroi.BogeyOldMap then
        self.FrontBogey = self:CreateBogey(Vector( 317-5,0,-75),Angle(0,180,0),true,"717")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,0,-75),Angle(0,0,0),false,"717")
        self.FrontCouple = self:CreateCouple(Vector( 419.5+10,0,-61),Angle(0,0,0),true,"717")
        self.RearCouple  = self:CreateCouple(Vector(-419.5+3,0,-61),Angle(0,180,0),false,"717")
    --[[else
        self.FrontBogey = self:CreateBogey(Vector( 317-11,0,-75),Angle(0,180,0),true,"717")
        self.RearBogey  = self:CreateBogey(Vector(-317+0,0,-75),Angle(0,0,0),false,"717")
        self.RearCouple  = self:CreateCouple(Vector(-421,0,-61),Angle(0,180,0),false,"717")
        self.FrontCouple = self:CreateCouple(Vector( 425,0,-61),Angle(0,0,0),true,"717")
    end]]
    local pneumoPow = 1.3+(math.random()^1.2)*0.3
    self.FrontBogey.PneumaticPow = pneumoPow
    self.RearBogey.PneumaticPow = pneumoPow
    self.LightSensor = self:AddLightSensor(Vector(414-7.5,-130,-100),Angle(0,90,0))
    -- Initialize key mapping
    self.KeyMap = {
        [KEY_1] = "KVSetX1B",
        [KEY_2] = "KVSetX2",
        [KEY_3] = "KVSetX3",
        [KEY_4] = "KVSet0",
        [KEY_5] = "KVSetT1B",
        [KEY_6] = "KVSetT1AB",
        [KEY_7] = "KVSetT2",
        [KEY_8] = "EmergencyDriveSet",

        [KEY_EQUAL] = {"R_Program1Set",helper="R_Program1HSet"},
        [KEY_MINUS] = {"R_Program2Set",helper="R_Program2HSet"},

        [KEY_G] = "VozvratRPSet",

        [KEY_0] = "KVReverserUp",
        [KEY_9] = "KVReverserDown",
        [KEY_PAD_PLUS] = "KVReverserUp",
        [KEY_PAD_MINUS] = "KVReverserDown",
        [KEY_W] = "KVUp",
        [KEY_S] = "KVDown",
        [KEY_F] = "PneumaticBrakeUp",
        [KEY_R] = "PneumaticBrakeDown",

        [KEY_A] = {"KDL",helper="VDLSet"},
        [KEY_D] = "KDP",
        [KEY_V] = {"VUD1Toggle",helper="VUD2Toggle"},
        [KEY_L] = "HornEngage",
        [KEY_N] = "VZ1Set",
        [KEY_PAD_1] = "PneumaticBrakeSet1",
        [KEY_PAD_2] = "PneumaticBrakeSet2",
        [KEY_PAD_3] = "PneumaticBrakeSet3",
        [KEY_PAD_4] = "PneumaticBrakeSet4",
        [KEY_PAD_5] = "PneumaticBrakeSet5",
        [KEY_PAD_6] = "PneumaticBrakeSet6",
        [KEY_PAD_7] = "PneumaticBrakeSet7",
        --[KEY_PAD_DIVIDE] = "KRPSet",
        [KEY_PAD_DIVIDE] = "EmergencyDriveSet2",
        [KEY_PAD_MULTIPLY] = "KAH",

        [KEY_SPACE] = "PBSet",
        [KEY_BACKSPACE] = {"EmergencyBrake",helper="EmergencyBrakeValveToggle"},

        [KEY_PAD_ENTER] = "KVWrenchKV",
        [KEY_PAD_0] = "DriverValveDisconnect",
        [KEY_PAD_DECIMAL] = "EPKToggle",
        [KEY_LSHIFT] = {
            def="KV_Unlock",
            [KEY_SPACE] = "KVTSet",

            [KEY_2] = "RingToggle",
            [KEY_4] = "KVSet0Fast",
            [KEY_L] = "DriverValveDisconnect",

            [KEY_7] = "KVWrenchNone",
            [KEY_8] = "KVWrenchKRU",
            [KEY_9] = "KVWrenchKV",
            [KEY_0] = "KVWrenchKV",
            [KEY_6] = "KVSetT1A",
        },
        [KEY_LALT] = {
            [KEY_V] = "VUD1Toggle",
            [KEY_L] = "EPKToggle",
            [KEY_RIGHT] = "R_ASNPMenuSet",
            [KEY_UP] = "R_ASNPUpSet",
            [KEY_DOWN] = "R_ASNPDownSet",
        },
    }
    self.KeyMap[KEY_RALT] = self.KeyMap[KEY_LALT]
    self.KeyMap[KEY_RSHIFT] = self.KeyMap[KEY_LSHIFT]
    self.KeyMap[KEY_RCONTROL] = self.KeyMap[KEY_LCONTROL]

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
        --[[{
            ID = "CabinDoor",
            Pos = Vector(456,66,3), Radius = 12,
        },
        {
            ID = "CabinDoor",
            Pos = Vector(385,66,0), Radius = 16,
        },
        {
            ID = "Face",
            Pos = Vector(385,66,0), Radius = 16,
        },]]
        {
            ID = "RearDoor",
            Pos = Vector(-464.8,-35,4), Radius = 100,
        },
        --[[{
            ID = "PassengerDoor",
            Pos = Vector(375.5,13.5,12), Radius = 20,
        },]]
        {
            ID = "GVToggle",
            Pos = Vector(140.50,62,-64), Radius = 10,
        },
        {
            ID = "AirDistributorDisconnectToggle",
            Pos = Vector(-177, -66, -50), Radius = 20,
        },
    }

    local vX = Angle(0,-90-0.2,56.3):Forward() -- For ARS panel
    local vY = Angle(0,-90-0.2,56.3):Right()
    self.Lights = {
        -- Headlight glow
        --[1] = { "headlight",      Vector(465,0,-20), Angle(0,0,0), Color(216,161,92), fov = 100, farz=6144,brightness = 4},

        -- Head (type 1)
        --[2] = { "glow",             Vector(470,-51,-19), Angle(0,0,0), Color(255,220,180), brightness = 1, scale = 1.0 },
        --[3] = { "glow",             Vector(472,-40, -19), Angle(0,0,0),Color(255,220,180), brightness = 1, scale = 1.0 },
        --[4] = { "glow",             Vector(0,0, 0), Angle(0,0,0),  Color(255,220,180), brightness = 1, scale = 1.0 },
        --[5] = { "glow",             Vector(0, 0, 0), Angle(0,0,0),  Color(255,220,180), brightness = 1, scale = 1.0 },
        --[6] = { "glow",             Vector(472, 41, -19), Angle(0,0,0),Color(255,220,180), brightness = 1, scale = 1.0 },
        --[7] = { "glow",             Vector(470, 53,-19), Angle(0,0,0), Color(255,220,180), brightness = 1, scale = 1.0 },

        -- свечение вокруг красных фар
		[8] = { "light",			Vector(462.5,-30,70), Angle(0,0,0), Color(255,0,0),     brightness = 0.4, scale = 1 },
		[9] = { "light",			Vector(462.5, 30,70), Angle(0,0,0), Color(255,0,0),     brightness = 0.4, scale = 1 },
		[88] = { "light",			Vector(470,-45,-60), Angle(0,0,0), Color(255,0,0),     brightness = 0.4, scale = 1 },
		[99] = { "light",			Vector(470, 45,-60), Angle(0,0,0), Color(255,0,0),     brightness = 0.4, scale = 1 },
		
		---свечение вокруг фар
		[111] = { "light",			Vector(481,-43,-30), Angle(0,0,0), Color(255,255,255),     brightness = 0.4, scale = 0.5 },
		[222] = { "light",			Vector(481, 43,-30), Angle(0,0,0), Color(255,255,255),     brightness = 0.4, scale = 0.5 },
		[333] = { "light",			Vector(481, 34,-30), Angle(0,0,0), Color(255,255,255),     brightness = 0.4, scale = 0.5 },
		[444] = { "light",			Vector(481, -34,-30), Angle(0,0,0), Color(255,255,255),     brightness = 0.4, scale = 0.5 },
		---лампы наддверные (красные)
		--[[
		
		["dl1"] = { "light",			Vector(342.5,68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dl2"] = { "light",			Vector(342.5 - 230.5,68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dl3"] = { "light",			Vector(342.5 - 230.5 - 230.5,68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dl4"] = { "light",			Vector(342.5 - 230.5 - 230.5 - 230.5,68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dr1"] = { "light",			Vector(342.5,-68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dr2"] = { "light",			Vector(342.5 - 230.5,-68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dr3"] = { "light",			Vector(342.5 - 230.5 - 230.5,-68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },
		["dr4"] = { "light",			Vector(342.5 - 230.5 - 230.5 - 230.5,-68,57.5), Angle(0,0,0), Color(255,0,0),     brightness = 1, scale = 0.1 },]]
        -- Cabin
        [10] = { "dynamiclight",        Vector( 425, 0, 30), Angle(0,0,0), Color(255,255,255), distance = 250, brightness = 3},

        -- Interior
        [11] = { "dynamiclight",    Vector( 200, 0, -0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400 , fov=180,farz = 128 },
        [12] = { "dynamiclight",    Vector(   0, 0, -0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400, fov=180,farz = 128 },
        [13] = { "dynamiclight",    Vector(-200, 0, -0), Angle(0,0,0), Color(255,245,245), brightness = 3, distance = 400 , fov=180,farz = 128 },

        -- Side lights
		
		--вертикальные
        [15] = { "light",Vector(-47.3,68,56.4), Angle(0,0,0), Color(254,254,254), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },	--белая
        [16] = { "light",Vector(-47.3,68,54.2), Angle(0,0,0), Color(40,240,122), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },		--зеленая
        [17] = { "light",Vector(-47.3,68,51.8), Angle(0,0,0), Color(254,210,18), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },		-- желтая
		
		
        [18] = { "light",Vector(42.5,-68,56.4), Angle(0,0,0), Color(254,254,254), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [19] = { "light",Vector(42.5,-68,54.2), Angle(0,0,0), Color(40,240,122), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [20] = { "light",Vector(42.5,-68,51.8), Angle(0,0,0), Color(254,210,18), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },

		
		--горизонтальные
		--[[
        [21] = { "light",Vector(-47.3,68,56.4), Angle(0,0,0), Color(254,254,254), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [22] = { "light",Vector(-47.3,68,54.2), Angle(0,0,0), Color(40,240,122), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [23] = { "light",Vector(-47.3,68,51.8), Angle(0,0,0), Color(254,210,18), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [24] = { "light",Vector(42.5,-68,56.4), Angle(0,0,0), Color(254,254,254), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [25] = { "light",Vector(42.5,-68,54.2), Angle(0,0,0), Color(40,240,122), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },
        [26] = { "light",Vector(42.5,-68,51.8), Angle(0,0,0), Color(254,210,18), brightness = 1, scale = 0.07, texture = "sprites/light_glow02.vmt" },]]
		
		
        [30]  = { "light",           Vector(465  ,   -45, -23.5), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 2.5, texture = "sprites/light_glow02.vmt" },
        [31]  = { "light",           Vector(465  ,   45, -23.5), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 2.5, texture = "sprites/light_glow02.vmt" },
        [32]  = { "light",           Vector(465  ,   0, 52), Angle(0,0,0), Color(255,220,180), brightness = 0.2, scale = 2.5, texture = "sprites/light_glow02.vmt" },
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

    self.RearDoor = false
    self.CabinDoor = false
	self.Face = false
	
	self.ALSFreqK = true
	self:SetNW2Bool("ALSFreqK",self.ALSFreqK)
	self.OtklAVUK = true
	self:SetNW2Bool("OtklAVUK",self.OtklAVUK)
	self.VAHK = true
	self:SetNW2Bool("VAHK",self.VAHK)
	self.UOSK = true
	self:SetNW2Bool("UOSK",self.UOSK)
	self.KDLRK = true
	self:SetNW2Bool("KDLRK",self.KDLRK)
	self.KDPRK = true
	self:SetNW2Bool("KDPRK",self.KDPRK)
	self.EmergencyDriveSet1K = true
	self:SetNW2Bool("EmergencyDriveSet1K",self.EmergencyDriveSet1K)
    self.PassengerDoor = false
    self.OtsekDoor1 = false
    self.OtsekDoor2 = false

    self.Lamps = {
    }
    local rand = math.random() > 0.8 and 1 or math.random(0.95,0.99)
	self.lightsActive_2_broken = {}
	self.lightsActive_1_broken = {}
	self.lightsActive_1_migaet = {}
	self.lightsActive_2_migaet = {}
    self:TrainSpawnerUpdate()
    self:OnButtonPress("KVWrenchNone")
	
	
	local blizhniy													--установка дешифратора в нужное положение
	for k,v in pairs(ents.FindByClass("gmod_track_signal")) do
		if not blizhniy or self:GetPos():DistToSqr(v:GetPos()) < self:GetPos():DistToSqr(blizhniy:GetPos()) then blizhniy = v end
	end
	if blizhniy and blizhniy.TwoToSix then self.ALSFreq:TriggerInput("Set",1) end
	
	--PrintTable(self.ASNP_VV)
	--print(self:GetNW2Int("ASNP:State"))
	--print(self.ASNP:TriggerInput("Set",1))
	--check = self.R_Program1
end
function ENT:TriggerLightSensor(coil,plate)
    self.UPPS:TriggerSensor(coil,plate)
end

function ENT:NonSupportTrigger()
    self.RC1:TriggerInput("Set",0)
    self.UOS:TriggerInput("Set",1)
    self.KAH:TriggerInput("Set",1)
    self.KAH:TriggerInput("Block",1)
    self.KAHK:TriggerInput("Set",0)
    self.VAH:TriggerInput("Set",1)
    self.OVT:TriggerInput("Set",1)
    self.EPK:TriggerInput("Set",0)
    self.ARS:TriggerInput("Set",0)
    self.ALS:TriggerInput("Set",0)
    self.Plombs.RC1 = nil
    self.Plombs.UOS = nil
    self.Plombs.KAH = nil
    self.Plombs.VAH = nil
    self.Plombs.OVT = nil
end

function ENT:UpdateLampsColors()
    local lCol,lCount = Vector(),0
    local rand = math.random() > 0.8 and 1 or math.random(0.95,0.99)
        local r,g,col = 15,15
        local typ = math.Round(math.random())
        local rnd =  0.5+math.random()*0.5
        for i = 1,12 do
	    local chtp = math.random() > rnd
            if typ == 0 and not chtp or typ == 1 and chtp then
                g = math.random()*15
                col=Vector(240+g,240+g,255)
		-- New white lights
	    elseif rnd>0.9 then
		b = -5+math.random()*20
                col = Vector(255,235+b,150+b)
		-- Old Series VII emergency lights lights
	    else
                b = -5+math.random()*20
                col = Vector(255,235+b,205+b)
		-- Old Series III lights
            end
            lCol = lCol + col
            lCount = lCount + 1
            if i%4==0 then
                local id = 10+math.ceil(i/4)
                self:SetLightPower(id,false)

                local tcol = (lCol/lCount)/255
                self.Lights[id][4] = Vector(tcol.r,tcol.g^3,tcol.b^3)*255
                lCol = Vector()
                lCount = 0
            end
            self:SetNW2Vector("lamp"..i,col)
            --self.Lamps.broken[i] = math.random() > rand and math.random() > 0.7
	end		
        for i = 1,12 do
	    local chtp = math.random() > rnd
            if typ == 0 and not chtp or typ == 1 and chtp then
                g = math.random()*15
                col=Vector(240+g,240+g,255)
	    elseif rnd>0.9 then
		b = -5+math.random()*20
                col = Vector(255,235+b,150+b)
		-- Old Series VII emergency lights lights
            else
                b = -5+math.random()*20
                col = Vector(255,235+b,205+b)
            end
            lCol = lCol + col
            lCount = lCount + 1
            if i%4==0 then
                local id = 10+math.ceil(i/4)
                self:SetLightPower(id,false)

                local tcol = (lCol/lCount)/255
                self.Lights[id][4] = Vector(tcol.r,tcol.g^3,tcol.b^3)*255
                lCol = Vector()
                lCount = 0
            end
            self:SetNW2Vector("lamp_2_"..i,col)
            --self.Lamps.broken[i] = math.random() > rand and math.random() > 0.7
		end	
end
--[[
local function rnd(num,max)
    local ceil = math.abs(math.ceil(num%max-(max/2)))
    if ceil==0 then ceil=1 end
    return math.ceil(num%ceil/(max/2))
end--]]
function ENT:TrainSpawnerUpdate()
	self.OnUpdateBySpawner(self)
	--PrintTable(self.Pneumatic)
	    --PrintTable(self.Pneumatic.LeftDoorSpeed)
		
		--скорость дверей
		for k,v in pairs(self.Pneumatic.LeftDoorSpeed) do
			self.Pneumatic.LeftDoorSpeed[k] = -1.5 + math.random(-3,3) / 10
		end
		
		for k,v in pairs(self.Pneumatic.RightDoorSpeed) do
			self.Pneumatic.RightDoorSpeed[k] = -1.5 + math.random(-3,3) / 10
		end
        --print(self.Pneumatic.RightDoorSpeed)
		--print(self.Pneumatic.DoorSpeedMain)
		--self.Pneumatic.DoorSpeedMain = self.Pneumatic.DoorSpeedMain / 2
		--local stringg = "string"
		--print(string.sub(stringg,string.len(stringg),string.len(stringg)))
	    local num = self.WagonNumber
		math.randomseed(num+817171)

        local typ = self.WagonNumberConf or {}
		
		self.Type = 1
		
		
	--рандом анимаций дверей
	for i = 1,8 do
		self:SetNW2Int("DoorsAnim"..i,math.random(5,15))
	end
		
		
		
	--рандом поломаных фар
	self.HeadLightBroken = {}
	self.RedLighBroken = {}
	for i = 1, 4 do
		if math.random(1,100) == 1 then 
			self.RedLighBroken[i] = true
			self:SetNW2Bool("RedLighBroken"..i, true)
			self.HeadLightBroken[i] = true						-- устанавливаю локальное значение, чтобы в init.lua не брать сетевое значение
			self:SetNW2Bool("HeadLightBroken"..i, true)
		else
			self.RedLighBroken[i] = false
			self:SetNW2Bool("RedLighBroken"..i, false)
			self.HeadLightBroken[i] = false
			self:SetNW2Bool("HeadLightBroken"..i, false)
		end
	end
		--PrintTable(self:GetMaterials())
    --local texture = Metrostroi.Skins["train"][self.Texture]
    --local passtexture = Metrostroi.Skins["pass"][self.PassTexture]
    --local cabintexture = Metrostroi.Skins["cab"][self.CabTexture]
	
	--PrintTable(Metrostroi.Skins)
	--рандом поломанных бортовых ламп
	self.BortLampBroken = {}
	for i = 1, 6 do 
		if math.random(1,100) == 1 then
			self.BortLampBroken[i] = true
		else
			self.BortLampBroken[i] = false
		end
	end
	
	--Рандом поломаных лампочек в салоне
	self.lightsActive_2_broken = {}
	self.lightsActive_1_broken = {}
	self.lightsActive_1_migaet = {}
	self.lightsActive_2_migaet = {}
	for i = 1,12 do
		if math.random(1,100) == 100 then self.lightsActive_2_broken[i] = true end
		if math.random(1,100) == 100 then self.lightsActive_1_broken[i] = true end
		local chance  = math.random(1,250)
		if math.random(1,100) == 100 then self.lightsActive_1_migaet[i] = chance end
		if math.random(1,100) == 100 then self.lightsActive_2_migaet[i] = chance end
	end
		
        --[[local lvz = typ[1]
        self.Dot5 = typ[2]
        self.NewBortlamps = typ[4]
        if lvz then
            self:SetModel("models/metrostroi_train/81-717/81-717_lvz.mdl")
        else
            self:SetModel("models/metrostroi_train/81-717/81-717_mvm.mdl")
        end
	local BPSNType = self:GetNW2Int("BPSNType")
        self:SetNW2Bool("Dot5",self.Dot5)
        self:SetNW2Bool("LVZ",lvz)
        self:SetNW2Bool("NewSeats",typ[3])
        self:SetNW2Bool("NewBortlamps",self.NewBortlamps)]]
        self:SetNW2Int("LampType",1)

        --local tex = typ[5] and typ[5][math.random(1,#typ[5])] or "Def_717MSKWhite"
        --self:SetNW2String("PassTexture",tex)
        --local mask = typ[6]==true or  typ[6] and typ[6](num,tex)
        --self:SetNW2Bool("Mask",mask)
        --self:SetNW2String("CabTexture",typ[7] and ((lvz and math.random()>0.2) and "Def_ClassicY" or "Def_ClassicG") or ((lvz and math.random()>0.2) and "Def_HammeriteY" or "Def_HammeriteG"))
        --local ARSchance = math.random()
        --self:SetNW2Int("ARSType",(not mask and not self.Dot5 and not lvz or ARSchance>0.8) and (ARSchance>0.93 and 5 or 4) or ARSchance>0.54 and (ARSchance>0.75 and 3 or 2) or 1)
        --[[local KVChance = math.random()
        local RingChance = math.random()
        if self.Dot5 then
            self:SetNW2Int("KVType",math.Clamp(math.floor(KVChance*4)+1,1,4))
            if RingChance>0.7 then
                self:SetNW2Int("RingType",RingChance>0.8 and 9 or RingChance>0.9 and 6 or 5)
            elseif RingChance>0.45 then
                self:SetNW2Int("RingType",RingChance>0.67 and 8 or 7)
            else
                self:SetNW2Int("RingType",math.Clamp(math.floor(KVChance/0.45*4)+1,1,4))
            end
        else
            if RingChance>0.6 then
                self:SetNW2Int("RingType",RingChance>0.8 and 9 or RingChance>0.9 and 6 or 5)
            else
                self:SetNW2Int("RingType",math.Clamp(math.floor(KVChance/0.9*4)+1,1,4))
            end
            self:SetNW2Int("KVType",math.Clamp(math.floor(KVChance*3)+1,1,3))
        end]]
        --local oldType = not self.Dot5 and not self:GetNW2Bool("Mask") and not lvz
        --self:SetNW2String("Texture",oldType and "Def_717MSKClassic3" or "Def_717MSKClassic1")
	self:SetNW2Int("Crane",self:GetNW2Int("Cran") or 2)
        --self:SetNW2Int("Crane",not oldType and 2 or 1)
       -- if self.Dot5 then
            self.FrontCouple.CoupleType = "717"
        --else
          --  self.FrontCouple.CoupleType = "702"
        --end
        self.RearCouple.CoupleType = self.FrontCouple.CoupleType
        self.FrontCouple:SetParameters()
        self.RearCouple:SetParameters()

        --self.ARSType = self:GetNW2Int("ARSType",1)
      --  self.MaskType = self:GetNW2Int("MaskType",1)
--        self.SeatType = self:GetNW2Int("SeatType",1)
        --self.HandRail = self:GetNW2Int("HandRail",1)
        --self.BortLampType = self:GetNW2Int("BortLampType",1)
		self:SetNW2Bool("Lighter", true)
        self.Lighter = self:GetNW2Bool("Lighter") and 1 or 0
		self:SetNW2Bool("LED", true)
        self.LED = self:GetNW2Bool("LED")


		self:SetNW2Bool("Mask",false)
        for i = 30,32 do self:SetLightPower(i,false) end
        if self:GetNW2Bool("Mask") then
          --  self.Lights[30][2] = Vector(465,-48, -23.5)
--            self.Lights[31][2] = Vector(465,48 , -23.5)
            --self.Lights[32][2] = Vector(465,0  , -23.5)
			  self.Lights[30][2] = Vector(475,-48, -23.5)
              self.Lights[31][2] = Vector(475,48 , -23.5)
              self.Lights[32][2] = Vector(475,0  , -23.5)
        else
            --self.Lights[30][2] = Vector(465,-45, -23.5)
            self.Lights[30][2] = Vector(475,-45, -23.5)
            --self.Lights[31][2] = Vector(465,45 , -23.5)
            self.Lights[31][2] = Vector(475,45 , -23.5)
            --self.Lights[32][2] = Vector(465,0  , 52)
            self.Lights[32][2] = Vector(475,0  , 52)
        end
    self.Announcer.AnnouncerType = self:GetNW2Int("Announcer",1)
    self.LampType = self:GetNW2Int("LampType",1)
    self.Pneumatic.ValveType = 2
    self:SetPackedBool("Crane013",self.Pneumatic.ValveType == 2)
    self:SetNW2Float("Crane013Loud",(self.Pneumatic.ValveType == 2 and math.random()>0.9) and 1.1+math.random()*0.3 or 0)
    self:UpdateLampsColors()
	
	
	
	
		
	--self:SetModel("models/metrostroi_train/81-717.6/6000.mdl")
	
	--PrintTable(self:GetMaterials())
    --self:UpdateTextures()
    --[[ local scheme = Metrostroi.Skins["722_schemes"] and Metrostroi.Skins["722_schemes"][self.Scheme]
    if IsValid(sarmat) and IsValid(sarmatr) and scheme then
        if self:GetNW2Bool("SarmatInvert") then
            sarmat:SetSubMaterial(0,scheme[2])
            sarmatr:SetSubMaterial(0,scheme[1])
        else
            sarmat:SetSubMaterial(0,scheme[1])
            sarmatr:SetSubMaterial(0,scheme[2])
        end
        self.PassSchemesDone = true
    end--]]

    local used = {}
    local str = ""
    for i,k in ipairs(self.PR14XRelaysOrder) do
        local v = self.PR14XRelays[k]
        repeat
            local rndi = math.ceil(math.random()*#v)
            if not used[v[rndi][1]] then
                str = str..rndi
                used[v[rndi][1]] = true
                break
            end
        until not used[v[rndi][1]]
        --print(k,v)
    end
    self:SetNW2String("RelaysConfig",str)

    local pneumoPow = 1.3+(math.random()^1.2)*0.3
    if IsValid(self.FrontBogey) then
        self.FrontBogey.PneumaticPow = pneumoPow
    end
    if IsValid(self.RearBogey) then
        self.RearBogey.PneumaticPow = pneumoPow
    end
    self.Pneumatic.VDOLLoud = math.random()<0.4 and 0.9+math.random()*0.2
    self.Pneumatic.VDORLoud = math.random()<0.4 and 0.9+math.random()*0.2
    self:SetNW2Bool("SecondKV",math.random()>0.7)
    math.randomseed(os.time())
	
	self:SetNW2Bool("Custom",false)
	self:SetNW2Int("Type",1)
	self:SetNW2Int("BodyType",1)
	self:SetNW2Int("ARSType",1)
	self:SetNW2Bool("Dot5",true)
	self:SetNW2Bool("LVZ",false)
	self:SetNW2Int("MaskType",1)	
	self:SetNW2Bool("Mask22",true)
	self:SetNW2Int("BortLampType",1)
	self:SetNW2Int("BPSNType",2)
	self:SetNW2Int("KVType",1)
	--self:InitializeSounds()
	self.VADWasDisabled = self.VAD.Value == 0 and true or false
	self.UOSWasDisabled = self.UOS.Value == 0 and true or false
	self.ARSWasEnabled = self.ARS.Value == 1 and true or false
	self.RC1WasEnabled = self.RC1.Value == 1 and true or false
	self.ALSWasDisabled = self.ALS.Value == 0 and true or false
end

--------------------------------------------------------------------------------
local function SendToBackWagon(value,netid,self)
	if self.WagonList then
		for k,v in pairs(self.WagonList) do
			if v == self or v:GetClass() ~= "gmod_subway_81-717_6" then continue end
			v[netid] = value
			v:SetNWBool(netid,value)
		end
	end
end



function ENT:Think()
	--print(self:GetNW2Bool("DoorL"),self:GetNW2Bool("DoorR"),self.Systems.Pneumatic.VDZ,1-self.RD.Value)
	--print(self.KDP.Value)
	--print(self:ReadTrainWire(12))
	--print(self.FrontBogey:GetNW2Bool("DisableEngines"))
	--print(self.Pneumatic.DoorLinePressure)
	--print(self.Pneumatic.TrainLinePressure)	--TODO открытие дверей не использует воздух
	--print(self:GetNW2Bool("KDL"))
	--print(self.RC1.Value)
	--print(self.KRP.Value)
	--print(self.UAVAC.Value)
	--print(self.UAVA.Value)
    --self.DriverValveBLDisconnect:TriggerInput("Set",0)
    --self.DriverValveTLDisconnect:TriggerInput("Set",0)
    --print(self.EPK.Value)
	--print(self.UOS.Value)
	--print(self.PneumaticNo2.Value)
	--print(self.PneumaticNo1.Value)
    --self:SetPackedBool("OtsekDoor1",self.OtsekDoor1)
    --self:SetPackedBool("OtsekDoor2",self.OtsekDoor2)
	--print(self:GetNW2Int("ASNP:State"))
	--PrintTable(self.ALSFreq)
	--print(self:GetNW2Bool("ASNP:Path"))
	--print(self:GetNW2Bool("ASNP:Playing"))				-- true, когда проигрывается сообщение
	--print(self:GetNW2Bool("ASNP:Arrived"))
	--print(self:GetNW2Bool("ASNP:Station"))
	--print(self:GetNW2Bool("ASNP:Selected"))
    self.RetVal = self.BaseClass.Think(self)
	--print(self.ARS.Value)
	--print(self.KV.ControllerPosition)
	--print(self.KRU.Position)
	--if self:GetNW2Bool("ASNP:Arrived") then self.WasOtpr = true end
	--print(self.SD)
	--print(self.PowerSupply.X2_2)
	--print(self:GetNW2Bool("RC1"))
	--print(self.A84.Value)
	
	
	--[[self.ARSBroke = true
	self:SetNW2Bool("ARSBroke",self.ARSBroke)]]
	--self:SetNWInt("ARSRing",self.ALS_ARS.Ring)
	--self:SetNWInt("VZ1",self.PneumaticNo1.Value)
	--self:SetNWInt("VZ2",self.PneumaticNo2.Value)
    self:SetPackedBool("RearDoor",self.RearDoor)
    self:SetPackedBool("PassengerDoor",self.PassengerDoor)
    self:SetPackedBool("CabinDoor",self.CabinDoor)
	self:SetPackedBool("Face",self.Face)
	
	
    local Panel = self.Panel
    local power = Panel.V1 > -1.5
    local brightness = math.min(1,Panel.Headlights1)*0.60 +math.min(1,Panel.Headlights2)*0.40

    self:SetPackedBool("Headlights1",Panel.Headlights1 > 0)
    self:SetPackedBool("Headlights2",Panel.Headlights2 > 0)
    self:SetPackedBool("DitchLFlash",Panel.DitchLFlash > 0)
    self:SetPackedBool("DitchRFlash",Panel.DitchRFlash > 0)
    self:SetPackedBool("RedLights",Panel.RedLight2 > 0)
    self:SetPackedBool("CabLights",Panel.CabLights>0)
    self:SetPackedBool("EqLights",Panel.EqLights>0)
    -- Interior/cabin lights
    --[[if Panel.EqLights > 0.5 and Panel.CabLights > 0.5 then
        self:SetLightPower(10,true,1)
    elseif Panel.CabLights > 0.5 then
        self:SetLightPower(10,true,0.1)
    elseif Panel.EqLights > 0.5 then
        self:SetLightPower(10,true,0.6)
    else
        self:SetLightPower(10,false)
    end]]
	self:SetLightPower(10,Panel.CabLights > 0.5,1)

    self:SetPackedBool("PanelLights",Panel.PanelLights > 0.5)

	
	--self:SetPackedRatio("SpeedLimit",self.Speed)
	--print(table.ToString(self.ALS_ARS))
	--print(self.Speed)
	--print("")

	--print("")
	
    --[[
    if self:GetWagonNumber() == 0000 or self:EntIndex()==1531 then --DEBUG
        local accel = 0
        for i=1,#self.WagonList do
            accel=accel+self.WagonList[i].Acceleration
        end
        local drivers = {self.DriverSeat,self.InstructorsSeat,self.ExtraSeat1,self.ExtraSeat2}
        if math.abs(accel) > 0.1 then
            for k,v in pairs(drivers) do
                if IsValid(v) and IsValid(v:GetDriver()) then
                    v:GetDriver():ChatPrint(Format("v=%.2f I=%.2f RK=%02d a=%.2f",self.Speed,(self.Electric.I13+self.Electric.I24)/2,self.RheostatController.SelectedPosition or 0,accel/#self.WagonList))--(accel/#self.WagonList)))
                end
            end
        end
    end
    self.TestA = self.TestA or nil
    self.TestV = self.TestV or nil
    local accel = self.Acceleration
    if (self.Speed > 75 or self.Speed > 20 and self.Speed < 60) and accel < -0.5 and not self.TestA then
        self.TestA = CurTime()
        self.TestV = self.Speed/3600*1000
        self.TestTyp = self.Speed > 55 and 2 or 1
        self.TestS = 0
    end
    if accel > -0.5 and self.TestA then
        self.TestA = nil
        self.TestV = nil
        self.TestS = nil
    end

    if self:GetWagonNumber() == 0000 or self:EntIndex()==0065 then --DEBUG
        local accel = 0
        for i=1,#self.WagonList do
            accel=accel+self.WagonList[i].Acceleration
        end
        local drivers = {self.DriverSeat,self.InstructorsSeat,self.ExtraSeat1,self.ExtraSeat2}
        if math.abs(accel) > 0.1 then
            for k,v in pairs(drivers) do
                if IsValid(v) and IsValid(v:GetDriver()) then
                    v:GetDriver():ChatPrint(Format("v=%.2f I=%.2f RK=%02d a=%.2f",self.Speed,(self.Electric.I13+self.Electric.I24)/2,self.RheostatController.SelectedPosition or 0,accel/#self.WagonList))--(accel/#self.WagonList)))
                end
            end
        end
    end
    if self.TestS then self.TestS=self.TestS+self.Speed*self.SpeedSign/3600*1000*self.DeltaTime end
    if (self.Speed<2 and self.TestTyp ==2 or self.Speed<2 and self.TestTyp ==1) and self.TestA then
        local curSpeed = self.Speed/3600*1000
        local a = (curSpeed-self.TestV)/(CurTime()-self.TestA)
        RunConsoleCommand("say",Format("[%05d]V0= %.1f V1=%.1f t=%.2f a=%.2f s=%.1f",self:GetWagonNumber(),self.TestV*3600/1000,curSpeed*3600/1000,CurTime()-self.TestA,a,self.TestS))


        self.TestA = nil
        self.TestV = nil
        self.TestS = nil
    end--]]
    --[[
    if (self.Speed < 20 or self.Speed < 70) and accel > 0.1 and not self.TestA then
        self.TestA = CurTime()
        self.TestV = self.Speed/3600*1000
        self.TestTyp = self.Speed > 60 and 2 or self.Speed > 30 and 1 or 0
        print("!!!",self.TestTyp)
        self.TestS = 0
    end
    if self.TestA and self.KV.ControllerPosition<=0 and (self.Speed<0.1 or self.Speed<1 and self.TestA>0) then
        self.TestA = nil
        self.TestV = nil
        self.TestS = nil
    end
    if self.TestS then self.TestS=self.TestS+self.Speed*self.SpeedSign/3600*1000*dT end
    if (self.Speed>=30 and self.TestTyp ==0 or self.Speed>=60 and self.TestTyp ==1 or self.Speed>=80 and self.TestTyp ==2) and self.TestA then
        local curSpeed = self.Speed/3600*1000
        local a = (curSpeed-self.TestV)/(CurTime()-self.TestA)
        RunConsoleCommand("say",Format("[%05d]V0= %.1f V1=%.1f t=%.2f a=%.2f",self:GetWagonNumber(),self.TestV*3600/1000,curSpeed*3600/1000,CurTime()-self.TestA,a))


        self.TestA = nil
        self.TestV = nil
        self.TestS = nil
    end--]]
    --self:SetLightPower(30,brightness > 0,brightness)
    --self:SetLightPower(31,brightness > 0,brightness)
    --self:SetLightPower(32,brightness > 0,brightness)
    self:SetLightPower(8,not self.RedLighBroken[1] and Panel.RedLight2>0,1)
    self:SetLightPower(9,not self.RedLighBroken[2] and Panel.RedLight1>0,1)
	self:SetLightPower(88,not self.RedLighBroken[3] and Panel.RedLight2>0,1)
    self:SetLightPower(99,not self.RedLighBroken[4] and Panel.RedLight1>0,1)
	self:SetLightPower(111,not self.HeadLightBroken[1] and Panel.Headlights1>0,1)
    self:SetLightPower(222,not self.HeadLightBroken[2] and (not self.Face) and Panel.Headlights1>0,1)
    self:SetLightPower(333,not self.HeadLightBroken[3] and (not self.Face) and Panel.DitchLFlash>0,1)
    self:SetLightPower(444,not self.HeadLightBroken[4] and Panel.DitchRFlash>0,1)

    --self:SetLightPower(30, (Panel.CabinLight > 0.5), 0.03 + 0.97*self.L_2.Value)
    local lightsActive1 = Panel.EmergencyLights > 0
    local lightsActive2 = Panel.MainLights > 0.0
    local mul = 0
    local LampCount  = self.LampType==2 and 25 or 12
    local Ip = self.LampType==2 and 7 or 3.6
    local Im = 0
    for i = 1,LampCount do
        if (lightsActive2 or (lightsActive1 and math.ceil((i+Ip-Im)%Ip)==1)) then
            if not self.Lamps[i]  then self.Lamps[i] = CurTime() + math.Rand(0.1,math.Rand(0.5,2)) end
        else
            self.Lamps[i] = nil
        end
        if (self.Lamps[i] and CurTime() - self.Lamps[i] > 0) then
            mul = mul + 1
			if self.lightsActive_2_broken[i] then 
				self:SetPackedBool("lightsActive_2_"..i,false) 
			elseif self.lightsActive_2_migaet[i] then
				if self.lightsActive_2_migaet[i] >= math.random(1,math.random(100,500)) then 
					self:SetPackedBool("lightsActive_2_"..i,false)
				else
					self:SetPackedBool("lightsActive_2_"..i,true)
				end
			else 
				self:SetPackedBool("lightsActive_2_"..i,true)
			end
			
			if self.lightsActive_1_broken[i] then 
				self:SetPackedBool("lightsActive"..i,false) 
			elseif self.lightsActive_1_migaet[i] then
				if self.lightsActive_1_migaet[i] >= math.random(1,math.random(100,500)) then 
					self:SetPackedBool("lightsActive"..i,false)
				else
					self:SetPackedBool("lightsActive"..i,true)
				end
			else 
				self:SetPackedBool("lightsActive"..i,true) 
			end
        else
            self:SetPackedBool("lightsActive"..i,false)
			self:SetPackedBool("lightsActive_2_"..i,false)
        end
    end
    --self.Lights[11] = { "dynamiclight",    Vector( 200, 0, 0), Angle(0,0,0), Color(255,255,255), brightness = 3, distance = 400 , fov=180,farz = 128 }
    --self.Lights[12] = { "dynamiclight",    Vector(   0, 0, 0), Angle(0,0,0), Color(255,255,255), brightness = 3, distance = 400, fov=180,farz = 128 }
    --self.Lights[13] = { "dynamiclight",    Vector(-200, 0, 0), Angle(0,0,0), Color(255,255,255), brightness = 3, distance = 400 , fov=180,farz = 128 }
    self:SetLightPower(11, mul > 0,mul/LampCount)
    self:SetLightPower(12, mul > 0,mul/LampCount)
    self:SetLightPower(13, mul > 0,mul/LampCount)

    -- Door button lights
    self:SetPackedBool("DoorsLeftL",Panel.DoorsLeft > 0.5)
    self:SetPackedBool("DoorsRightL",Panel.DoorsRight > 0.5)
    -- Side lights
    self:SetLightPower(15,not self.BortLampBroken[1] and --[[self.NewBortlamps and]] Panel.DoorsW > 0.5)
    self:SetLightPower(18,not self.BortLampBroken[2] and --[[self.NewBortlamps and]] Panel.DoorsW > 0.5)
    self:SetLightPower(16,not self.BortLampBroken[3] and --[[self.NewBortlamps and]] Panel.GreenRP > 0.5)
    self:SetLightPower(19,not self.BortLampBroken[4] and --[[self.NewBortlamps and]] Panel.GreenRP > 0.5)
    self:SetLightPower(17,not self.BortLampBroken[5] and --[[self.NewBortlamps and]] Panel.BrW > 0.5)
    self:SetLightPower(20,not self.BortLampBroken[6] and --[[self.NewBortlamps and]] Panel.BrW > 0.5)
    --[[ for i, train in ipairs(self.WagonList) do
        if train.RheostatController then
            self:SetNW2Int("PUAV:RK" .. i, math.floor(train.RheostatController.Position + 0.5))
        end
    end--]]
    --[[self:SetLightPower(21, not self.NewBortlamps and Panel.DoorsW > 0.5)
    self:SetLightPower(24, not self.NewBortlamps and Panel.DoorsW > 0.5)
    self:SetLightPower(22, not self.NewBortlamps and Panel.GreenRP > 0.5)
    self:SetLightPower(25, not self.NewBortlamps and Panel.GreenRP > 0.5)
    self:SetLightPower(23, not self.NewBortlamps and Panel.BrW > 0.5)
    self:SetLightPower(26, not self.NewBortlamps and Panel.BrW > 0.5)]]
    self:SetPackedBool("DoorsW",self.Panel.DoorsW > 0)
    self:SetPackedBool("GRP",self.Panel.GreenRP > 0)
    self:SetPackedBool("BrW",self.Panel.BrW > 0)
    self:SetPackedBool("VH1",self.BZOS.VH1 > 0)
    self:SetPackedBool("VH2",self.BZOS.VH2 > 0)

    -- Switch and button states
    self:SetPackedBool("GreenRP",Panel.GreenRP > 0.5)
    self:SetPackedBool("AVU",Panel.AVU > 0.5)
	--self.AVU = Panel.AVU
    self:SetPackedBool("LKVP",Panel.LKVP > 0)
    self:SetPackedBool("RZP",Panel.RZP > 0)
    self:SetPackedBool("KUP",Panel.KUP > 0.5)
    self:SetPackedBool("PN", Panel.BrT > 0.5)
    self:SetPackedBool("VPR",Panel.VPR > 0)

	--print(self:BatteryVoltage)

	
    -- Signal if doors are open or no to platform simulation
    self.LeftDoorsOpen =  (self.Pneumatic.LeftDoorState[1] > 0.5)  or (self.Pneumatic.LeftDoorState[2] > 0.5)  or (self.Pneumatic.LeftDoorState[3] > 0.5)  or (self.Pneumatic.LeftDoorState[4] > 0.5)
    self.RightDoorsOpen = (self.Pneumatic.RightDoorState[1] > 0.5) or (self.Pneumatic.RightDoorState[2] > 0.5) or (self.Pneumatic.RightDoorState[3] > 0.5) or (self.Pneumatic.RightDoorState[4] > 0.5)
	
	--print(self.LeftDoorsOpen)
	--print(self.RightDoorsOpen)
    -- DIP/power
    self:SetPackedBool("LUDS",Panel.LUDS > 0.5)

    -- Red RP
    local TW18 = 0
    if Panel.LSN > 0 then
        local wags = #self.WagonList
        for i,v in ipairs(self.WagonList) do
            TW18 = TW18+(v.Panel.TW18 or 0)/wags
        end
    end

    self:SetPackedBool("RP",TW18 > 0.5)
    self:SetPackedBool("SN",TW18 > 0)
    self:SetPackedRatio("RPR",math.Clamp(TW18^0.7,0,1))

    self:SetPackedBool("SD",Panel.SD > 0.5)
	--self.SD = Panel.SD
---[[
    self:SetPackedBool("AR04",Panel.AR04 > 0)
    self:SetPackedBool("AR0",Panel.AR0 > 0)
    self:SetPackedBool("AR40",Panel.AR40 > 0)
    self:SetPackedBool("AR60",Panel.AR60 > 0)
    self:SetPackedBool("AR70",Panel.AR70 > 0)
    self:SetPackedBool("AR80",Panel.AR80 > 0)
    --]]
    local drv = self:GetDriver()
    self:SetPackedBool("GLIB",power and IsValid(drv) and drv:SteamID() == "STEAM_0:1:31566374")
    self:SetPackedBool("LN",Panel.LN > 0)
    self:SetPackedBool("ST",Panel.LST > 0)
    self:SetPackedBool("VD",Panel.LVD > 0)
	self.VD = Panel.LVD
    self:SetPackedBool("KVD",Panel.LKVD > 0)
    self:SetPackedBool("RS",Panel.RS > 0)
    self:SetPackedBool("HRK",Panel.LhRK > 0)
    self:SetPackedBool("KVC",Panel.KVC > 0)
    self:SetPackedBool("KT",Panel.KT>0)
    self:SetPackedRatio("PVK",self.PVK.Value/2)
    self:SetPackedBool("L1",Panel.L1 > 0)
    self:SetPackedBool("M1_3",Panel.M1_3 > 0)
    self:SetPackedBool("M4_7",Panel.M4_7 > 0)
    self:SetPackedRatio("M8",Panel.M8)
    self:SetNW2Int("WrenchMode",self.KVWrenchMode)
    self:SetPackedBool("ReverserPresent",self.KVWrenchMode and self.KVWrenchMode>0)
    self:SetPackedRatio("CranePosition", self.Pneumatic.RealDriverValvePosition)
    self:SetPackedRatio("ControllerPosition", (self.KV.ControllerPosition+3)/7)
    self:SetNW2Int("ReverserPosition", (self.KV.ReverserPosition+1))
    self:SetNW2Int("KRUPosition", self.KRU.Position)
	
	--self:SetPackedBool("Vent1Work",self.BUVS.KM1>0)
    --self:SetPackedBool("Vent2Work",self.BUVS.KM2>0)

    if self:GetWagonNumber() == 0000 then --DEBUG
        local accel = 0
        for i=1,#self.WagonList do
            accel=accel+self.WagonList[i].Acceleration
        end

        if math.abs(accel) > 0.1 then
            Player(6):ChatPrint(Format("v=%.2f I=%.2f",self.Speed,(accel/#self.WagonList)))
            Player(7):ChatPrint(Format("v=%.2f I=%.2f",self.Speed,(accel/#self.WagonList)))
            Player(9):ChatPrint(Format("v=%.2f I=%.2f",self.Speed,(accel/#self.WagonList)))
        end
    end

    if self.Pneumatic.ValveType == 1 then
        self:SetPackedRatio("BLPressure", self.Pneumatic.ReservoirPressure/16.0)
    else
        self:SetPackedRatio("BLPressure", self.Pneumatic.BrakeLinePressure/16.0)
    end
    self:SetPackedRatio("TLPressure", self.Pneumatic.TrainLinePressure/16.0)
    self:SetPackedRatio("BCPressure", self.Pneumatic.BrakeCylinderPressure/6.0)
    self:SetPackedRatio("EnginesVoltage", self.Electric.Aux750V/1000.0)
    self:SetPackedRatio("EnginesCurrent",  0.5 + 0.5*(self.Electric.I13/500.0))
    self:SetPackedRatio("EnginesCurrent2", 0.5 + 0.5*(self.Electric.I24/500.0))
    self:SetPackedRatio("BatteryVoltage",self.Panel["V1"]*self.Battery.Voltage/150.0)

    self:SetPackedBool("Compressor",self.Pneumatic.Compressor > 0)
    self:SetPackedBool("Buzzer",Panel.Ring >= 1)
    self:SetPackedBool("BuzzerBZOS", Panel.DoorBuzzer or self.BZOS.VH2)
    self:SetPackedBool("RK",self.RheostatController.Velocity ~= 0.0)

    self:SetPackedBool("BPSN",self.PowerSupply.X2_2 > 0)

    -- Update ARS system
    self:SetPackedRatio("Speed", self.Speed/100)

    self:SetPackedBool("AnnBuzz",Panel.AnnouncerBuzz > 0)
    self:SetPackedBool("AnnPlay",Panel.AnnouncerPlaying > 0)
    self:SetPackedBool("AnnCab",self.ASNP_VV.CabinSpeakerPower > 0)
	--print(table.ToString(self.ASNP))
	--print(self.ASNP.RouteNumber)
	self:SetNW2Int("RouteNumber",self.ASNP.RouteNumber)
    -- Exchange some parameters between engines, pneumatic system, and real world
    self.Engines:TriggerInput("Speed",self.Speed)
    self:SetPackedRatio("Speed", self.Speed/100 or 0.5 or 0.85-(((CurTime()%36/36)^0.8)*8.5)/10 or self.Speed/100)
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
        self.FrontBogey.PneumaticBrakeForce = 100000
        self.FrontBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        self.FrontBogey.ParkingBrakePressure = math.max(0,(2.6-self.Pneumatic.ParkingBrakePressure)/2.6)
        self.FrontBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        self.RearBogey.PneumaticBrakeForce = 100000
        self.RearBogey.BrakeCylinderPressure = self.Pneumatic.BrakeCylinderPressure
        self.RearBogey.BrakeCylinderPressure_dPdT = -self.Pneumatic.BrakeCylinderPressure_dPdT
        --self.RearBogey.ParkingBrake = self.ParkingBrake.Value > 0.5
    end
	

    self:GenerateJerks()

    return self.RetVal
end

function ENT:TriggerTurbostroiInput(sys,name,val)
    self.BaseClass.TriggerTurbostroiInput(self,sys,name,val)
end

function ENT:PhysicsCollide( colData )
    if true then return end
    if colData.HitEntity == Entity(0) then
        --PrintTable(colData)
        file.Append("collides.txt",tostring(self:WorldToLocal(colData.HitPos)).."\n")
        print("COLLIDE")
        print(self.Owner)
        print(self:WorldToLocal(colData.HitPos))
        --print(collider)
    end
end
--------------------------------------------------------------------------------
function ENT:OnButtonPress(button,ply)
	self.OnButtonPress1(self,button,ply)
	if string.find(button,"PneumaticBrakeSet") then
        self.Pneumatic:TriggerInput("BrakeSet",tonumber(button:sub(-1,-1)))
        return
    end
	if button == "ARSToggle" then self.ARSWasEnabled = not self.ARSWasEnabled end
	if button == "RC1Toggle" then self.RC1WasEnabled = not self.RC1WasEnabled end
	if button == "VADToggle" then self.VADWasDisabled = not self.VADWasDisabled end
	if button == "UOSToggle" then self.UOSWasDisabled = not self.UOSWasDisabled end
	if button == "ALSToggle" then self.ALSWasDisabled = not self.ALSWasDisabled end
	if button == "EmergencyDriveSet1" and not self.EmergencyDriveSet1 then
		self.EmergencyDriveSet1 = true
		self:SetNW2Bool("EmergencyDriveSet1",true)
		self.PB:TriggerInput("Set",1)
		if self.UOS.Blocked == 1 then
			self.UOS:TriggerInput("Block",false)
			self.UOS:TriggerInput("Set",1)
			self.UOS:TriggerInput("Block",true)
		elseif self.UOS.Value == 0 then
			self.UOSWasDisabled = true 
			self.UOS:TriggerInput("Set",1)
		end
		if self.RC1.Blocked == 1 then
			self.RC1:TriggerInput("Block",false)
			self.RC1:TriggerInput("Set",0)
			self.RC1:TriggerInput("Block",true)
		elseif self.RC1.Value == 1 then
			self.RC1WasEnabled = true
			self.RC1:TriggerInput("Set",0)
		end
		if self.ARS.Value == 1 then
			self.ARSWasEnabled = true
			self.ARS:TriggerInput("Set",0)
		end
		if self.KAH.Blocked == 1 then
			self.KAH:TriggerInput("Block",false)
			self.KAH:TriggerInput("Set",1)
			self.KAH:TriggerInput("Block",true)
		else
			self.KAH:TriggerInput("Set",1)
		end
		if self.VAD.Value == 0 then
			self.VADWasDisabled = true
			self.VAD:TriggerInput("Set",1)
		end
		if self.ALS.Value == 0 then
			self.ALSWasDisabled = true
			self.ALS:TriggerInput("Set",1)
		end
	end
	
	if button == "ALSFreqKPlomb" then self:SetNW2Bool("ALSFreqKPlomb",false) self:BrokePlomb("ALSFreq",ply) end			--ну тут я обманул, но новая кнопка должна быть сосзада через Relay Switch
	if button == "ASNPPlomb" then self:SetNW2Bool("ASNPPlomb",false) self:BrokePlomb("R_ASNPOn",ply) end			--ну тут я обманул, но новая кнопка должна быть сосзада через Relay Switch
	
    if button == "IGLA23" then
        self.IGLA2:TriggerInput("Set",1)
        self.IGLA3:TriggerInput("Set",1)
    end
	
	if button == "pepl" then self.ShowPepl = not self.ShowPepl end
	self:SetNW2Bool("ShowPepl",self.ShowPepl)
	
	if button == "EmergencyDriveSet" and not self.EmergencyDriveSet then 
		self.EmergencyDriveSet = true
		self:SetNW2Bool("EmergencyDriveSet",true)
		self.KRP:TriggerInput("Set", 1)
		if self.KRU.Position > 0 then
			self.KRU:TriggerInput("SetX1",1)
		end
	end
	if button == "EmergencyDriveSet2" and not self.EmergencyDriveSet2 then 
		self.EmergencyDriveSet2 = true
		self:SetNW2Bool("EmergencyDriveSet2",true)
		self.KRP:TriggerInput("Set", 1)
		if self.KRU.Position > 0 then
			self.KRU:TriggerInput("SetX2",1)
		end
	end	
	
    if button == "RearDoor" then self.RearDoor = not self.RearDoor end
    if button == "PassengerDoor" then self.PassengerDoor = not self.PassengerDoor end
    if button == "CabinDoor" then self.CabinDoor = not self.CabinDoor end
    if button == "Face" then self.Face = not self.Face end
	if button == "ALSFreqK" then self.ALSFreqK = not self.ALSFreqK self:SetNW2Bool("ALSFreqK",self.ALSFreqK) end
	if button == "OtklAVUK" then self.OtklAVUK = not self.OtklAVUK self:SetNW2Bool("OtklAVUK",self.OtklAVUK) end
	if button == "VAHK" then self.VAHK = not self.VAHK self:SetNW2Bool("VAHK",self.VAHK) end
	if button == "UOSK" then self.UOSK = not self.UOSK self:SetNW2Bool("UOSK",self.UOSK) end
	if button == "KDLRK" then self.KDLRK = not self.KDLRK self:SetNW2Bool("KDLRK",self.KDLRK) end
	if button == "KDPRK" then self.KDPRK = not self.KDPRK self:SetNW2Bool("KDPRK",self.KDPRK) end
	if button == "EmergencyDriveSet1K" then self.EmergencyDriveSet1K = not self.EmergencyDriveSet1K self:SetNW2Bool("EmergencyDriveSet1K",self.EmergencyDriveSet1K) end
    --if button == "OtsekDoor1" then self.OtsekDoor1 = not self.OtsekDoor1 end
    --if button == "OtsekDoor2" then self.OtsekDoor2 = not self.OtsekDoor2 end
	if button == "KDPRSet" then self.KDPR = true self:SetNW2Bool("KDPR",true) end

    if button == "KVUp" then self.KV:TriggerInput("ControllerUp",1.0) end
    if button == "KVDown" then self.KV:TriggerInput("ControllerDown",1.0) end
    if button == "KV_Unlock" then self.KV:TriggerInput("ControllerUnlock",1.0) end
    if (self.KVWrenchMode == 2) and (button == "KVReverserUp") and self.KRU.Position < 1 then self.KRU:TriggerInput("Up",1) end
    --if (self.KVWrenchMode == 2) and (button == "KVReverserDown") then self.KRU:TriggerInput("Down",1) end
	if (self.KVWrenchMode == 2) and (button == "KVReverserDown") then self.KRU:TriggerInput("Set0",1) end
    --if (self.KVWrenchMode == 2) and (button == "KVSetX1B") then self.KRU:TriggerInput("SetX1",1) end
    --if (self.KVWrenchMode == 2) and (button == "KVSetX2") then self.KRU:TriggerInput("SetX2",1) end			-- не рукаи в ход 2
    if (self.KVWrenchMode == 2) and (button == "KVSet0") then self.KRU:TriggerInput("Set0",1) end

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
        if self.KVWrenchMode ~= 0 and self.KV.ReverserPosition == 0 and self.KRU.Position == 0 then
            if self.KVWrenchMode == 2 then
                self:PlayOnce("kru_out","cabin",0.7)
            else
                self:PlayOnce("revers_out","cabin",0.7)
            end
            self.KVWrenchMode = 0
            self.KV:TriggerInput("Enabled",0)
            self.KRU:TriggerInput("Enabled",0)
        end
    end
    if button == "KVWrenchKRU" then
        if self.KVWrenchMode == 0 then
            self:PlayOnce("kru_in","cabin",0.7)
            self.KVWrenchMode = 2
            self.KRU:TriggerInput("Enabled",1)
        end
    end
    if button == "KAH" and not self.Plombs.KAH then
        self.KAHK:TriggerInput("Open",1)
        self.KAH:TriggerInput("Close",1)
    end
    if button == "KDL" and self.VUD1.Value < 1 then self.KDL:TriggerInput("Close",1) end
    if button == "KDP" and self.VUD1.Value < 1 then self.KDP:TriggerInput("Close",1) end
    if button == "VDL" and self.VUD1.Value < 1 then self.VDL:TriggerInput("Close",1) end
    if button == "EmergencyBrake" then
        self.KV:TriggerInput("ControllerSet",-3)
        self.Pneumatic:TriggerInput("BrakeSet",7)
        return
    end

    if (button == "VDL") or (button == "KDL") then
        self.DoorSelect:TriggerInput("Open",1)
        self.KDLK:TriggerInput("Open",1)
    end
    if (button == "KDP") then
        self.DoorSelect:TriggerInput("Close",1)
        self.KDPK:TriggerInput("Open",1)
    end
    if (button == "VUD1Set") or (button == "VUD1Toggle") or
       (button == "VUD2Set") or (button == "VUD2Toggle") then
        self.VDL:TriggerInput("Open",1)
        self.KDL:TriggerInput("Open",1)
        self.KDP:TriggerInput("Open",1)
    end
    -- Special sounds
    if button == "DriverValveDisconnect" then
        if self.Pneumatic.ValveType == 1 then
            if self.DriverValveBLDisconnect.Value == 0 or self.DriverValveTLDisconnect.Value == 0 then
                self.DriverValveBLDisconnect:TriggerInput("Set",1)
                self.DriverValveTLDisconnect:TriggerInput("Set",1)
            else
                self.DriverValveBLDisconnect:TriggerInput("Set",0)
                self.DriverValveTLDisconnect:TriggerInput("Set",0)
            end
        else
            if self.DriverValveDisconnect.Value == 1.0 then
                self.DriverValveDisconnect:TriggerInput("Set",0)
            else
                self.DriverValveDisconnect:TriggerInput("Set",1)
            end
        end
        return
    end
end

function ENT:OnButtonRelease(button)
	self.OnButtonRelease1(self,button)
    if string.find(button,"PneumaticBrakeSet") then
        if button == "PneumaticBrakeSet1" and (self.Pneumatic.DriverValvePosition == 1) then
            self.Pneumatic:TriggerInput("BrakeSet",2)
        end
        return
    end
	
	if button == "KDPRSet" then self.KDPR = false self:SetNW2Bool("KDPR",false) end
	
	if button == "EmergencyDriveSet1" and self.EmergencyDriveSet1 then
		self.EmergencyDriveSet1 = false 
		self:SetNW2Bool("EmergencyDriveSet1",false)
		self.PB:TriggerInput("Set",0)
		if self.UOS.Blocked == 1 then
			self.UOS:TriggerInput("Block",false)
			self.UOS:TriggerInput("Set",0)
			self.UOS:TriggerInput("Block",true)
		elseif self.UOSWasDisabled then
			self.UOS:TriggerInput("Set",0)
		end
		if self.RC1.Blocked == 1 then
			self.RC1:TriggerInput("Block",false)
			self.RC1:TriggerInput("Set",1)
			self.RC1:TriggerInput("Block",true)
		elseif self.RC1WasEnabled then
			self.RC1:TriggerInput("Set",1)
		end
		if self.ARSWasEnabled then
			self.ARS:TriggerInput("Set",1)
		end
		if self.KAH.Blocked == 1 then
			self.KAH:TriggerInput("Block",false)
			self.KAH:TriggerInput("Set",1)
			self.KAH:TriggerInput("Block",true)
		else
			self.KAH:TriggerInput("Set",0)
		end
		if self.VADWasDisabled then
			self.VAD:TriggerInput("Set",0)
		end
		if self.ALSWasDisabled then
			self.ALS:TriggerInput("Set",0)
		end
	end
	
	if button == "EmergencyDriveSet" and self.EmergencyDriveSet then
		self.EmergencyDriveSet = false
		self:SetNW2Bool("EmergencyDriveSet",false)
		self.KRP:TriggerInput("Set", 0)
	end
	
	if button == "EmergencyDriveSet2" and self.EmergencyDriveSet2 then 
		self.EmergencyDriveSet2 = false
		self:SetNW2Bool("EmergencyDriveSet2",false)
		self.KRP:TriggerInput("Set", 0)
	end
	
    if button == "KAH" then
        self.KAH:TriggerInput("Open",1)
    end
    if button == "KDL" then self.KDL:TriggerInput("Open",1) end
    if button == "KDP" then self.KDP:TriggerInput("Open",1) end
    if button == "VDL" then self.VDL:TriggerInput("Open",1) end
    if button == "KV_Unlock" then
        self.KV:TriggerInput("ControllerUnlock",0.0)
    end

    if button == "IGLA23" then
        self.IGLA2:TriggerInput("Set",0)
        self.IGLA3:TriggerInput("Set",0)
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
	self.OnCouple1(self,train,isfront)
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

function ENT:OnTrainWireError(k)
end
function ENT:OnPlay(soundid,location,range,pitch)
	self.OnPlay1(self,soundid,location,range,pitch)
    if soundid == "pkg" and self.LK1.Value > 0 and math.floor(self.PositionSwitch.Position+0.5) == 2 then
        return "lk2_off",location,range,pitch
    end
    return soundid,location,range,pitch
end
