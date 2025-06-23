--------------------------------------------------------------------------------
-- All the models, materials, sounds belong to their corresponding authors. Permission is granted to only distribute these models through Garry's Mod Steam Workshop and the official Metrostroi GitHub accounts for use with Garry's Mod and Metrostroi Subway Simulator.
--
-- It is forbidden to use any of these models, materials, sounds and other content for any commercial purposes without an explicit permission from the authors. It is forbidden to make any changes in these files in any derivative projects without an explicit permission from the author.
--
-- The following models are (C) 2015-2018 oldy (Aleksandr Kravchenko). All rights reserved.
-- models\metrostroi_train\81-502:
-- - 81-502  (Ema-502 head)
-- - 81-501  (Em-501 intermediate)
-- models\metrostroi_train\81-702:
-- - 81-702  (D head)
-- - 81-702  (D intermediate)
-- models\metrostroi_train\81-703:
-- - 81-703  (E head)
-- - 81-508  (E intermediate)
-- models\metrostroi_train\81-707:
-- - 81-707  (Ezh head)
-- - 81-708  (Ezh1 intermediate)
-- models\metrostroi_train\81-710:
-- - 81-710  (Ezh3 head)
-- - 81-508T (Em-508T intermediate)
-- models\metrostroi_train\81-717:
-- - 81-717  (Moscow head)
-- - 81-714  (Moscow intermediate)
-- - 81-717  (St. Petersburg head)
-- - 81-714  (St. Petersburg intermediate)
-- models\metrostroi_train\81-718:
-- - 81-718  (TISU head)
-- - 81-719  (TISU intermediate)
-- models\metrostroi_train\81-720:
-- - 81-720  (Yauza head)
-- - 81-721  (Yauza intermediate)
-- - 81-722  (Yubileyniy head)
-- models\metrostroi_train\81-722:
-- - 81-723  (Yubileyniy intermediate motor)
-- - 81-724  (Yubileyniy intermediate trailer)
--------------------------------------------------------------------------------
include("shared.lua")

--------------------------------------------------------------------------------
ENT.ClientProps = {}
ENT.ButtonMap = {}
ENT.AutoAnims = {}
ENT.ClientSounds = {}
--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false


ENT.ButtonMap["FrontPneumatic"] = {
    pos = Vector(323-20,-30,-69+65),
    ang = Angle(0,90,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "FrontBrakeLineIsolationToggle",x=000, y=0, w=400, h=400, tooltip="Front brake line"},
        {ID = "FrontTrainLineIsolationToggle",x=500, y=0, w=400, h=400, tooltip="Front main reservoir"},
    }
}
ENT.ClientProps["FrontBrake"] = {
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(323-20, -30+0.5, -69+65),
    ang = Angle( 15,-90,0),
    hide = 2,30
}
ENT.ClientProps["FrontTrain"] = {
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(323-20, 30+0.5, -69+65),
    ang = Angle(-15,-90,0),
    hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = {{"FrontBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["FrontTrainLineIsolation"] = {{"FrontTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ButtonMap["RearPneumatic"] = {
    pos = Vector(-324+20,30,-69+65),
    ang = Angle(0,270,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "RearBrakeLineIsolationToggle",x=000, y=0, w=400, h=400, tooltip="Rear brake line"},
        {ID = "RearTrainLineIsolationToggle",x=500, y=0, w=400, h=400, tooltip="Rear main reservoir"},
    }
}
ENT.ClientProps["RearTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(-323+20, -30, -69+65),
    ang = Angle(-15,90,0),
    hide = 2,
}
ENT.ClientProps["RearBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(-323+20, 30, -69+65),
    ang = Angle( 15,90,0),
    hide = 2,
}
ENT.ClientSounds["RearBrakeLineIsolation"] = {{"RearBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["RearTrainLineIsolation"] = {{"RearTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}

--[[ENT.ButtonMap["FrontDoor"] = {
    pos = Vector(462,17,41.3), --28
    ang = Angle(0,-90,90),
    width = 680,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "FrontDoor",x=0,y=0,w=680,h=2000, tooltip="Передняя дверь", model = {
            var="FrontDoor",sndid="door_cab_f",
            sndvol = 1, snd = function(val) return val and "door_cab_open" or "door_cab_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["RearDoor"] = {
    pos = Vector(-468,-17,41.3), --28
    ang = Angle(0,90,90),
    width = 680,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=680,h=2000, tooltip="Задняя дверь", model = {
            var="RearDoor",sndid="door_cab_b",
            sndvol = 1, snd = function(val) return val and "door_cab_open" or "door_cab_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}]]

for i=0,5 do
    ENT.ClientProps["TrainNumberL"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(60+i*6.6-4*6.6/2,10,18),
        ang = Angle(0,180,4),
        skin=0,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
end
for i=0,5 do
    ENT.ClientProps["TrainNumberR"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(53-i*6.6+4*6.6/2,-64.1,18),
        ang = Angle(0,0,4),
        skin=0,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
end
--------------------------------------------------------------------------------
-- Add doors
--------------------------------------------------------------------------------

--[[ENT.ClientProps["door_cab_f"] = {
    model = "models/metrostroi_train/81-722/81-722_door_cab_t.mdl",
    pos = Vector(460.4,-18,-9),
    ang = Angle(0,90,-0.15),
    hide=2,
}
ENT.ClientProps["door_cab_b"] = {
    model = "models/metrostroi_train/81-722/81-722_door_cab_t.mdl",
    pos = Vector(-466.7,18,-9),
    ang = Angle(0,-90,-0.15),
    hide=2,
}]]



ENT.Lights = {

}

function ENT:Initialize()
    self.BaseClass.Initialize(self)

    self.ReleasedPdT = 0

    self.FrontLeak = 0
    self.RearLeak = 0
    self.ParkingBrake = 0
end
function ENT:UpdateWagonNumber()
    local count = math.max(5,math.ceil(math.log10(self.WagonNumber+1)))
    for i=0,5 do
        --self:ShowHide("TrainNumberL"..i,i<count)
        --self:ShowHide("TrainNumberR"..i,i<count)
        --if i< count then
        local leftNum,rightNum = self.ClientEnts["TrainNumberL"..i],self.ClientEnts["TrainNumberR"..i]
        local num = math.floor(self.WagonNumber%(10^(i+1))/10^i)
        if IsValid(leftNum) then
            leftNum:SetPos(self:LocalToWorld(Vector(210+i*6.6-count*6.6/2,54.5,25)))
            leftNum:SetSkin(num)
        end
        if IsValid(rightNum) then
            rightNum:SetPos(self:LocalToWorld(Vector(-210-i*6.6+count*6.6/2,-54.5,25)))
            rightNum:SetSkin(num)
        end
        --end
    end
end
function ENT:Think()
    self.BaseClass.Think(self)
    if not self.RenderClientEnts or self.CreatingCSEnts then
        return
    end

    self:Animate("FrontBrake", self:GetNW2Bool("FbI") and 0 or 1,0,1, 3, false)
    self:Animate("FrontTrain",  self:GetNW2Bool("FtI") and 1 or 0,0,1, 3, false)
    self:Animate("RearBrake",   self:GetNW2Bool("RbI") and 0 or 1,0,1, 3, false)
    self:Animate("RearTrain",   self:GetNW2Bool("RtI") and 1 or 0,0,1, 3, false)

    local door_f = self:GetPackedBool("FrontDoor")
    local door_b = self:GetPackedBool("RearDoor")
    local door_cab_f = self:Animate("door_cab_f",door_f and 1 or -0.05,1,0.75, 8, 0.05)
    local door_cab_b = self:Animate("door_cab_b",door_b and 1 or -0.05,1,0.75, 8, 0.05)

    local door1s = (door_cab_f < 1 or door_f)
    if self.Door1 ~= door1s then
        self.Door1 = door1s
        self:PlayOnce("FrontDoor","bass",door1s and 1 or 0)
    end
    local door2s = (door_cab_b < 1 or door_b)
    if self.Door2 ~= door2s then
        self.Door2 = door2s
        self:PlayOnce("RearDoor","bass",door2s and 1 or 0)
    end

    local dT = self.DeltaTime

    self.FrontLeak = math.Clamp(self.FrontLeak + 10*(-self:GetPackedRatio("FrontLeak")-self.FrontLeak)*dT,0,1)
    self.RearLeak = math.Clamp(self.RearLeak + 10*(-self:GetPackedRatio("RearLeak")-self.RearLeak)*dT,0,1)
    self:SetSoundState("front_isolation",self.FrontLeak,0.9+0.2*self.FrontLeak)
    self:SetSoundState("rear_isolation",self.RearLeak,0.9+0.2*self.RearLeak)

    local parking_brake = math.max(0,-self:GetPackedRatio("ParkingBrakePressure_dPdT",0))
    self.ParkingBrake = self.ParkingBrake+(parking_brake-self.ParkingBrake)*dT*10
    self:SetSoundState("parking_brake",self.ParkingBrake,1.4)

    local dPdT = self:GetPackedRatio("BrakeCylinderPressure_dPdT")
    self.ReleasedPdT = math.Clamp(self.ReleasedPdT + 4*(-self:GetPackedRatio("BrakeCylinderPressure_dPdT",0)-self.ReleasedPdT)*dT,0,1)
    --print(dPdT)
    self:SetSoundState("release",math.Clamp(self.ReleasedPdT,0,1)^1.65,1.0)

    self.PreviousCompressorState = state
    local rollingi = math.min(1,self.TunnelCoeff+math.Clamp((self.StreetCoeff-0.82)/0.5,0,1))
    local rollings = math.max(self.TunnelCoeff*0.6,self.StreetCoeff)
    local tunstreet = (rollingi+rollings*0.2)
    local speed = self:GetPackedRatio("Speed", 0)
    local rol10 = math.Clamp(speed/25,0,1)*(1-math.Clamp((speed-25)/8,0,1))
    local rol45 = math.Clamp((speed-23)/8,0,1)*(1-math.Clamp((speed-50)/8,0,1))
    local rol45p = Lerp((speed-25)/25,0.8,1)
    local rol60 = math.Clamp((speed-50)/8,0,1)*(1-math.Clamp((speed-65)/5,0,1))
    local rol60p = Lerp((speed-50)/15,0.8,1)
    local rol70 = math.Clamp((speed-65)/5,0,1)
    local rol70p = Lerp((speed-65)/25,0.8,1.2)
    self:SetSoundState("rolling_10",rollingi*rol10,1)
    self:SetSoundState("rolling_45",rollingi*rol45,1)
    self:SetSoundState("rolling_60",rollingi*rol60,1)
    self:SetSoundState("rolling_70",rollingi*rol70,1)


    local rol10 = math.Clamp(speed/15,0,1)*(1-math.Clamp((speed-18)/35,0,1))
    local rol10p = Lerp((speed-15)/14,0.6,0.78)
    local rol40 = math.Clamp((speed-18)/35,0,1)*(1-math.Clamp((speed-55)/40,0,1))
    local rol40p = Lerp((speed-15)/66,0.6,1.3)
    local rol70 = math.Clamp((speed-55)/20,0,1)--*(1-math.Clamp((speed-72)/5,0,1))
    local rol70p = Lerp((speed-55)/27,0.78,1.15)
    --local rol80 = math.Clamp((speed-70)/5,0,1)
    --local rol80p = Lerp(0.8+(speed-72)/15*0.2,0.8,1.2)
    self:SetSoundState("rolling_low"    ,rol10*rollings,rol10p) --15
    self:SetSoundState("rolling_medium2",rol40*rollings,rol40p) --57
    --self:SetSoundState("rolling_medium1",0 or rol40*rollings,rol40p) --57
    self:SetSoundState("rolling_high2"  ,rol70*rollings,rol70p) --70

end

function ENT:Draw()
    self.BaseClass.Draw(self)
end

function ENT:OnButtonPressed(button)
end

function ENT:OnPlay(soundid,location,range,pitch)
    if location == "stop" then
        if IsValid(self.Sounds[soundid]) then
            self.Sounds[soundid]:Pause()
            self.Sounds[soundid]:SetTime(0)
        end
        return
    end
    if soundid == "BatteryOn" and range > 0 then
        return "battery_on_1",location,1,pitch
    end
    if soundid == "BatteryOff" then
        return range > 0 and "battery_off_1" or "battery_off_2",location,1,pitch
    end
    return soundid,location,range,pitch
end

local dist = {}
for id,panel in pairs(ENT.ButtonMap) do
    if not panel.buttons then continue end
    for k,v in pairs(panel.buttons) do
        if v.model then
            local dist = dist[id] or 150
            if v.model.model then
                v.model.hideseat=dist
            elseif v.model.lamp then
                v.model.lamp.hideseat=dist
            end
        end
    end
end
Metrostroi.GenerateClientProps()