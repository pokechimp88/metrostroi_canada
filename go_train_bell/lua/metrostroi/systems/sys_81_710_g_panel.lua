--------------------------------------------------------------------------------
-- 81-710 controller panel
--------------------------------------------------------------------------------
-- Copyright (C) 2013-2018 Metrostroi Team & FoxWorks Aerospace s.r.o.
-- Contains proprietary code. See license.txt for additional information.
--------------------------------------------------------------------------------
Metrostroi.DefineSystem("81_710_g_Panel")

function TRAIN_SYSTEM:Initialize()
    -- Выключатель батареи (ВБ)
    self.Train:LoadSystem("VB","Relay","VB-11", {bass = true})

    -- Buttons on the panel
    self.Train:LoadSystem("DoorSelect","Relay","Switch", {bass = true, normally_closed = false })
    self.Train:LoadSystem("V4","Relay","Switch", {bass = true}) --LOn
    self.Train:LoadSystem("V5","Relay","Switch", {bass = true}) --LOff
    self.Train:LoadSystem("KU9","Relay","Switch", {bass = true}) --VRP
    self.Train:LoadSystem("KU15","Relay","Switch", {bass = true}) --RezMK
    self.Train:LoadSystem("V1","Relay","Switch", {bass = true}) --VMK
    self.Train:LoadSystem("VU14","Relay","Switch", {bass = true}) --VUS
    self.Train:LoadSystem("V2","Relay","Switch", {bass = true }) --VDL1
    self.Train:LoadSystem("V3","Relay","Switch", { normally_closed = true, bass = true }) --VDL2
    self.Train:LoadSystem("V6","Relay","Switch", {bass = true}) --VDL
    self.Train:LoadSystem("KU12","Relay","Switch", {bass = true}) --KDL
    self.Train:LoadSystem("KU7","Relay","Switch", {bass = true}) --KDP
    self.Train:LoadSystem("V10","Relay","Switch", {bass = true}) --KRZD
    self.Train:LoadSystem("KU8","Relay","Switch", {bass = true}) --KSN
    self.Train:LoadSystem("OtklAVU","Relay","Switch", {bass = true})
    self.Train:LoadSystem("KU10","Relay","Switch", {bass = true}) --KRP
    self.Train:LoadSystem("KU11","Relay","Switch", {bass = true}) --KSD
    self.Train:LoadSystem("KRR","Relay","Switch", {bass = true})

    self.Train:LoadSystem("R_UNch","Relay","Switch", {bass = true,})
    self.Train:LoadSystem("R_ZS","Relay","Switch", {bass = true, normally_closed = false})
    self.Train:LoadSystem("R_G","Relay","Switch", {bass = true,})
    self.Train:LoadSystem("R_Radio","Relay","Switch", {bass = true, normally_closed = false})
    self.Train:LoadSystem("R_Program1","Relay","Switch", {bass = true})
    self.Train:LoadSystem("R_Program2","Relay","Switch", {bass = true})
    self.Train:LoadSystem("R_Program1H","Relay","Switch", {bass = true})
    self.Train:LoadSystem("R_Program2H","Relay","Switch", {bass = true})
    self.Train:LoadSystem("Ring","Relay","Switch", {bass = true})

    -- АРС
    self.Train:LoadSystem("PB","Relay","Switch", {bass = true})
    self.Train:LoadSystem("RUM","Relay","Switch",{bass = true, normally_closed = true })
    self.Train:LoadSystem("VAH","Relay","Switch", {bass = true,})
    self.Train:LoadSystem("VAD","Relay","Switch", {bass = true})
    self.Train:LoadSystem("ARS","Relay","Switch", {bass = true})
    self.Train:LoadSystem("ALS","Relay","Switch", {bass = true })
    self.Train:LoadSystem("KVT","Relay","Switch", {bass = true})
    self.Train:LoadSystem("KB","Relay","Switch", {bass = true})
    self.Train:LoadSystem("KAH","Relay","Switch", {bass = true})

    --САММ
    self.Train:LoadSystem("SAMMSchemeOff","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMStart","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMReset","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMOn","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMX2","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMAhead","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMAccept","Relay","Switch", {bass = true})
    self.Train:LoadSystem("SAMMUnit","Relay","Switch", {bass = true})


    -- Автоматические выключатели (АВ)
    self.Train:LoadSystem("VU1","Relay","Switch", {bass = true})
    self.Train:LoadSystem("VU2","Relay","Switch", {bass = true})
    self.Train:LoadSystem("VU3","Relay","Switch", {bass = true})
    self.Train:LoadSystem("AV","Relay","Switch", {bass = true})
    self.Train:LoadSystem("VU","Relay","Switch", {bass = true, normally_closed = true})
    self.Train:LoadSystem("PLights","Relay","Switch",{bass = true})
    self.Train:LoadSystem("GLights","Relay","Switch",{bass = true})

    self.Train:LoadSystem("RST","Relay","Switch", {bass = true, normally_closed = true})

    self.V1 = 0
    self.GRP = 0
    self.RRP = 0
    self.TW18 = 0
    self.SD = 0
    self.Sequence = 0
    self.Headlights1 = 0
    self.Headlights2 = 0
    self.RedLights = 0
    self.EmergencyLights2 = 0
    self.EmergencyLights1 = 0
    self.MainLights1 = 0
    self.MainLights2 = 0
    self.PanelLights = 0
    self.GaugeLights = 0
    self.Ring = 0
    self.KT = 0
    self.AVU = 0

    self.VPR = 0

    self.AR04 = 0
    self.AR0 = 0
    self.AR40 = 0
    self.AR60 = 0
    self.AR70 = 0
    self.AR80 = 0
    self.KT = 0
    self.KVD = 0

    self.AnnouncerPlaying = 0

    self.CBKIPower = 0
    self.PCBKPower = 0
end

function TRAIN_SYSTEM:Outputs()
    return { "V1","GRP","RRP","TW18","SD","Sequence","Headlights1","Headlights2","RedLights","EmergencyLights2","EmergencyLights1","MainLights1","MainLights2","Ring","KT","AnnouncerPlaying","AVU","PanelLights","GaugeLights","VPR","AR04","AR0","AR40","AR60","AR70","AR80","KT","KVD","CBKIPower","PCBKPower"}
end