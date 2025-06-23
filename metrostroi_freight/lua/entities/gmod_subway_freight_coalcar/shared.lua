ENT.Type            = "anim"
ENT.Base            = "gmod_subway_base"

ENT.Author          = ""
ENT.Contact         = ""
ENT.Purpose         = ""
ENT.Instructions    = ""
ENT.PrintName	    = "Bathtub Coal Car"
ENT.Category        = "Metrostroi (trains)"
ENT.SkinsType = "freightcar"
ENT.Model = "models/gsgtrainprops/trains/rolling_stock/bathtub_thrall_coal.mdl"

ENT.Spawnable       = true
ENT.AdminSpawnable  = false
ENT.DontAccelerateSimulation = false

function ENT:PassengerCapacity()
    return 0 --Does not carry passengers
end

function ENT:GetStandingArea()
    return Vector(-450,-30,-62),Vector(380,30,-62)
end

function ENT:InitializeSounds()
    self.BaseClass.InitializeSounds(self)
    self.SoundNames["release"] = {loop=true,"subway_trains/common/pneumatic/release_2.wav"}
    self.SoundPositions["release"] = {320,1e9,Vector(-183,0,-70+65),0.1} --FIXME: Pos
    self.SoundNames["parking_brake"] = {loop=true,"subway_trains/common/pneumatic/autostop_loop.wav"}
    self.SoundPositions["parking_brake"] = {400,1e9,Vector(-183,0,-70+65),0.95}
    self.SoundNames["disconnect_valve"] = "subway_trains/common/switches/pneumo_disconnect_switch.mp3"

    self.SoundNames["front_isolation"] = {loop=true,"subway_trains/common/pneumatic/isolation_leak.wav"}
    self.SoundPositions["front_isolation"] = {300,1e9,Vector(462, 0,-63+65),1}
    self.SoundNames["rear_isolation"] = {loop=true,"subway_trains/common/pneumatic/isolation_leak.wav"}
    self.SoundPositions["rear_isolation"] = {300,1e9,Vector(-469, 0,-63+65),1}

    self.SoundNames["rolling_10"] = {loop=true,"subway_trains/ezh/rolling/40_rolling.wav"}
    self.SoundNames["rolling_45"] = {loop=true,"subway_trains/ezh/rolling/40_rolling.wav"}
    self.SoundNames["rolling_60"] = {loop=true,"subway_trains/ezh/rolling/70_rolling.wav"}
    self.SoundNames["rolling_70"] = {loop=true,"subway_trains/ezh/rolling/80_rolling.wav"}
    self.SoundPositions["rolling_10"] = {485,1e9,Vector(0,0,0),0.20}
    self.SoundPositions["rolling_45"] = {485,1e9,Vector(0,0,0),0.50}
    self.SoundPositions["rolling_60"] = {485,1e9,Vector(0,0,0),0.55}
    self.SoundPositions["rolling_70"] = {485,1e9,Vector(0,0,0),0.60}
    self.SoundNames["rolling_low"] = {loop=true,"subway_trains/717/rolling/rolling_outside_low.wav"}
    self.SoundNames["rolling_medium1"] = {loop=true,"subway_trains/717/rolling/rolling_outside_medium1.wav"}
    self.SoundNames["rolling_medium2"] = {loop=true,"subway_trains/717/rolling/rolling_outside_medium2.wav"}
    self.SoundNames["rolling_high2"] = {loop=true,"subway_trains/717/rolling/rolling_outside_high2.wav"}
    self.SoundPositions["rolling_low"] = {480,1e12,Vector(0,0,0),0.6*0.4}
    self.SoundPositions["rolling_medium1"] = {480,1e12,Vector(0,0,0),0.90*0.4}
    self.SoundPositions["rolling_medium2"] = {480,1e12,Vector(0,0,0),0.90*0.4}
    self.SoundPositions["rolling_high2"] = {480,1e12,Vector(0,0,0),1.00*0.4}

    self.SoundNames["door_cab_open"] = "subway_trains/common/door/cab/door_open.mp3"
    self.SoundNames["door_cab_close"] = "subway_trains/common/door/cab/door_close.mp3"

    local function GetDoorPosition(i,k,j)
        if j == 0
        then return Vector(377.0 - 36.0 + 1*(k) - 230*i,-64*(1-2*k),-10)
        else return Vector(377.0 - 36.0 + 1*(k) - 230*i,-64*(1-2*k),-10)
        end
    end
end

function ENT:InitializeSystems()
    --self:LoadSystem("TR","TR_3B")
    self:LoadSystem("Electric","Boxcar_Electric")

    self:LoadSystem("Pneumatic","Boxcar_Pneumatic")


    self:LoadSystem("Panel","81_710_g_Panel")

end

function ENT:PostInitializeSystems()

end

ENT.AnnouncerPositions = {
}
---------------------------------------------------
-- Defined train information
-- Types(for wagon limit system):
-- 0 = Head or intherim
-- 1 = Only head
-- 2 = Only intherim
---------------------------------------------------
ENT.SubwayTrain = {
    Type = "81-722",
    Name = "81-723",
    WagType = 2,
    Manufacturer = "MVM",
    EKKType = 710, --pass through EKK cables
}
ENT.NumberRanges = {{100000,999999}}
