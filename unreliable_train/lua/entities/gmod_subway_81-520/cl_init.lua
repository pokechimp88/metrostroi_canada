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

ENT.ClientProps["salon"] = {
  model = "models/metrostroi_train/81-718/interior.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
}
ENT.ClientProps["body_additional"] = {
  model = "models/metrostroi_train/81-717/717_body_additional.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
}
ENT.ClientProps["schemes"] = {
  model = "models/metrostroi_train/81-717/labels/schemes.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
  callback = function(ent)
    ent.PassSchemesDone = false
  end,
}
ENT.ClientProps["destination"] = {
  model = "models/metrostroi_train/81-717/labels/destination.mdl",
  pos = Vector(-0.3, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
  callback = function(ent)
    ent.LastStation.Reloaded = false
  end,
}
ENT.ClientProps["destination1"] = {
  model = "models/metrostroi_train/81-717/labels/destination.mdl",
  pos = Vector(-0.3, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
  callback = function(ent)
    ent.LastStation.Reloaded = false
  end,
}
ENT.ButtonMap["LastStation"] = {
  pos = Vector(457.7, -27.4, 1.75),
  ang = Angle(0, 90, 90),
  width = 876,
  height = 205,
  scale = 0.0625,
  buttons = {
    { ID = "LastStation-", x = 000, y = 0, w = 438, h = 205, tooltip = "" },
    { ID = "LastStation+", x = 438, y = 0, w = 438, h = 205, tooltip = "" },
  }
}
ENT.ClientProps["brake_valve_334"] = {
  model = "models/metrostroi_train/81-717/brake_valves/334.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 1,
}
ENT.ClientProps["brake_valve_013"] = {
  model = "models/metrostroi_train/81-717/brake_valves/013.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 1,
}
ENT.ClientProps["seats_old"] = {
  model = "models/metrostroi_train/81-717/couch_old.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 1.5,
}
ENT.ClientProps["seats_old_cap"] = {
  model = "models/metrostroi_train/81-717/couch_cap_l.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 0.8,
}
ENT.ClientProps["seats_new"] = {
  model = "models/metrostroi_train/81-717/couch_new.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 1.5,
}
ENT.ClientProps["seats_new_cap"] = {
  model = "models/metrostroi_train/81-717/couch_new_cap.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 0.8,
}

ENT.ClientProps["mask22_mvm"] = {
  model = "models/metrostroi_train/81-717/mask_22.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["mask222_mvm"] = {
  model = "models/metrostroi_train/81-717/mask_222.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["mask222_lvz"] = {
  model = "models/metrostroi_train/81-717/mask_spb_222.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["mask141_mvm"] = {
  model = "models/metrostroi_train/81-718/mask.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights222_1"] = {
  model = "models/metrostroi_train/81-717/lamps/headlights_222_group1.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights222_2"] = {
  model = "models/metrostroi_train/81-717/lamps/headlights_222_group2.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights141_1"] = {
  model = "models/metrostroi_train/81-718/headlights.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights141_2"] = {
  model = "models/metrostroi_train/81-718/headlights2.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights22_1"] = {
  model = "models/metrostroi_train/81-717/lamps/headlights_22_group2.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["Headlights22_2"] = {
  model = "models/metrostroi_train/81-717/lamps/headlights_22_group1.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["RedLights"] = {
  model = "models/metrostroi_train/81-717/lamps/redlights.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  color = Color(200, 200, 200),
  nohide = true,
}
ENT.ClientProps["RedLights2"] = {
    model = "models/metrostroi_train/81-718/red_light.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0.000000,0.000000,0.000000),
    hide=2,
}
--[[
ENT.ClientProps["otsek_cap_l"] = {
    model = "models/metrostroi_train/81-717/otsek_cap_l.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0)
}
ENT.ClientProps["otsek_cap_r"] = {
    model = "models/metrostroi_train/81-717/otsek_cap_r.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0)
}
]]
ENT.ClientProps["door_otsek1"] = {
  model = "models/metrostroi_train/81-717/door_otsek1.mdl",
  pos = Vector(375.35, -15.324, 5.167),
  ang = Angle(0, -90, 0),
  hideseat = 1.7,
}
ENT.ClientProps["door_otsek2"] = {
  model = "models/metrostroi_train/81-717/door_otsek2.mdl",
  pos = Vector(375.35, -59.65, 5.167),
  ang = Angle(0, -90, 0),
  hideseat = 1.7,
}
ENT.ClientProps["cap_l"] = {
  model = "models/metrostroi_train/81-717/couch_cap_r.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 0.8,
}
ENT.ClientProps["door1"] = {
    model = "models/metrostroi_train/81-718/door_torec.mdl",
    pos = Vector(-473.749,15.924,-1.926),
    ang = Angle(0,-90,0),
    hide = 2,
}
ENT.ClientProps["door2"] = {
    model = "models/metrostroi_train/81-717/cab_door.mdl",
    pos = Vector(377.322,28.267,-1.599),
    ang = Angle(0,-90,0),
    hide = 2,
}
ENT.ClientProps["door3"] = {
    model = "models/metrostroi_train/81-718/door_cabine.mdl",
    pos = Vector(443.493,65.111,0.277),
    ang = Angle(0,-90,0),
    hide = 2,
}
ENT.ClientProps["cabine_mvm"] = {
  model = "models/metrostroi_train/81-717/cabine_spb_central.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
}
ENT.ClientProps["cabine_lvz"] = {
  model = "models/metrostroi_train/81-717/cabine_kvr.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hide = 2,
}
ENT.ClientProps["pult"] = {
  model = "models/metrostroi_train/81-710/ezh3_panel.mdl",
  pos = Vector(-7.5, -10, 5.5),
  ang = Angle(0, 6.68, 0),
  hide = 2,
}

ENT.ClientProps["panel1"] = {
    model = "models/metrostroi_train/81-502/luds.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel2"] = {
    model = "models/metrostroi_train/81-502/speedm.mdl",
    pos = Vector(5,70,11),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_04"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_nch.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_0"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_0.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_40"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_40.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_60"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_60.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_70"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_70.mdl",
    pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}
ENT.ClientProps["panel1_80"] = {
    model = "models/metrostroi_train/81-502/indicators/ars_80.mdl",
   pos = Vector(7.5,63.5,8),
    ang = Angle(0,-5,0)
}

local KVs = {
  "models/metrostroi_train/81-717/kv_black.mdl",
  "models/metrostroi_train/81-717/kv_white.mdl",
  "models/metrostroi_train/81-717/kv_wood.mdl",
  "models/metrostroi_train/81-717/kv_yellow.mdl",
}
ENT.ClientProps["Controller"] = {
  model = "models/metrostroi_train/81-717/kv_black.mdl",
  pos = Vector(435.848 + 0.08, 16.1, -19.779 + 4.75 - 0.01),
  ang = Angle(0, -90, -32),
  hideseat = 0.2,
  modelcallback = function(ent, cent)
    if ent.Anims.Controller then ent.Anims.Controller.reload = true end
    return KVs[ent:GetNW2Int("KVType", 1)]
  end,
}

--var="ZS",vmin=0,vmax=1,min=0,max=1,speed=16,damping=false,
-- Main panel
ENT.ButtonMap["Block5_6"] = {
    pos = Vector(448.5,27.4,-3.5),--446 -- 14 -- -0,5
    ang = Angle(0,-83.8,13),
    width = 750,
    height = 240,
    scale = 0.0588,
    hideseat=0.2,

    buttons = {
	{ ID = "VMKToggle",   x=35, y=30, w=45,h=80, tooltip="Air compressor switch", model = {
            model = "models/metrostroi_train/switches/vudblack.mdl", z=-29,
            var="VMK",speed=6,
            sndvol = 1, snd = function(val) return val and "vu224_on" or "vu224_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "KDLRSet", x=46, y=61+15+48*2, radius=20, tooltip="Open left doors", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = -1,
            var="KDLR",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button1_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "Radio13Set", x=46+44*1, y=61+15+48*2, radius=20, tooltip="Radio 13V voltage test", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="Radio13",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "ARS13Set", x=46+44*2, y=61+15+48*2, radius=20, tooltip="ARS 13V voltage test", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="ARS13",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "L_1Toggle", x=58+29*3, y=69, radius=20, tooltip="Interior lights", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=1,
            var="L_1",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "BPSNonToggle", x=54+29*2, y=69, radius=20, tooltip="BPSN power switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=1,
            var="BPSNon",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
	{ID = "L_4Toggle", x=46+29*3, y=61+15+48*1, radius=20, tooltip="Headlight switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=1,
            var="L_4",speed=16,
            sndvol = 1, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "ARSRToggle", x=46+29*2, y=61+15+48*1, radius=20, tooltip="ARS-R (backup ARS) toggle", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=1,
            var="ARSR",speed=16,
            sndvol = 1, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "ALSFreqToggle", x=46+29*1, y=61+15+48*1, radius=20, tooltip="ALS decoder frequency toggle", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=1,
            var="ALSFreq",speed=16,
            sndvol = 1, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "VADToggle", x=46, y=61+15+48*1, radius=20, tooltip="Emergency door mode", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=1,
            var="VAD",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        ---Блок Основной
        {ID = "KSNSet",         x=227, y=61, radius=20, tooltip="Failure signalling", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = -1,
            var="KSN",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_Program1Set",          x=227, y=61+48*1, radius=20, tooltip="Announcer program 1", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="R_Program1",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_Program2Set",          x=227, y=61+48*2, radius=20, tooltip="Announcer program 2", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="R_Program2",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "VUSToggle",   x=258, y=61+4, radius=20, tooltip="VUS: Headlight brightness switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="VUS",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "L_3Toggle",   x=258, y=61+4+48*1, radius=20, tooltip="Gauge lights", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="L_3",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "VAHToggle",   x=258, y=61+4+48*2, radius=20, tooltip="Emergency drive mode", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="VAH",speed=16,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=24,z=-2,var="VAHPl", ID="VAHPl",},
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "ConverterProtectionSet",           x=292, y=61+3+48*1, radius=20, tooltip="BPSN converter protection button", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="ConverterProtection",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "OtklBVSet",          x=341, y=61+3+48*1, radius=20, tooltip="Disable BV (Trip overload relay)", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="OtklBV",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "VZ1Set",         x=341, y=61+6.5+48*2, radius=20, tooltip="Pneumatic valve #1", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="VZ1",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "KVTRSet",          x=340, y=61+1, radius=20, tooltip="ARS-R (spare) brake perception button", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = -1,
            var="KVTR",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "KVTSet",          x=292, y=61+1, radius=20, tooltip="Brake perception button", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = -1,
            var="KVT",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "ARSToggle",   x=374, y=61+4, radius=20, tooltip="ARS: Speed regulation switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="ARS",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_UNchToggle",    x=374, y=61+4+48, radius=20, tooltip="Amplifier power switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="R_UNch",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "VUD1Toggle",     x=493, y=55, w=45,h=80, tooltip="Close doors", model = {
            model = "models/metrostroi_train/switches/vudblack.mdl", z=-30,
            var="VUD1",speed=6,
            sndvol = 1, snd = function(val) return val and "vu224_on" or "vu224_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_RadioToggle",   x=374, y=160, radius=20, tooltip="Announcement system power switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t1.mdl",ang = 180,z=-2,
            var="R_Radio",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "ALSToggle",   x=374+40, y=61+2, radius=20, tooltip="ALS: Cab signalling switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="ALS",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "VozvratRPSet",            x=374+43, y=58+47*1, radius=20, tooltip="Reset overload relay (enable BV)", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="VozvratRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "RingSet",         x=374+40, y=61+1+47*2, radius=20, tooltip="Cabin buzzer", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -1,
            var="Ring",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "L_2Toggle",   x=372+40*2, y=61+7, radius=20, tooltip="Cabin lighting", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="L_2",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
	{ID = "DoorSelectToggle",   x=292, y=61+6.5+48*2, radius=20, tooltip="Door selection switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="DoorSelect",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "KRZDSet", x=374+40*2, y=61+4+48, radius=20, tooltip="Emergency door close", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",ang = 180,z=-2,
            var="KRZD",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button1_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "KDPSet",  x=374+40*2+12+45, y=61+4+48*2, radius=20, tooltip="Open right doors", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",ang = 180,z=-2,
            var="KDP",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button1_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "KDLSet",  x=374+40*2+12, y=61+4+48*2, radius=20, tooltip="Open left doors", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",ang = 180,z=-2,
            var="KDL",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},

        ---Блок Резервный
        {ID = "KAHSet",  x=610, y=61+4+48*2, radius=20, tooltip="Emergency drive mode for driving without ARS", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",ang = 180,z=-2,
            var="KAH",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "RezMKSet",    x=610+48*2, y=61+4+48*2, radius=20, tooltip="Emergency compressor startup", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_metal.mdl",ang = 180,z=-2,
            var="RezMK",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button2_on" or "button1_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "KRPSet",  x=610+48*1, y=61+4+48*2, radius=20, tooltip="Emergency start button", model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",ang = 180,z=-2,
            var="KRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button3_on" or "button2_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
	{ID = "R_ZSToggle",   x=693-30, y=61+2+48, radius=20, tooltip="Emergency intercom switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="R_ZS",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_VPRToggle",   x=693+30, y=61+2+48, radius=20, tooltip="Cab radio switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="R_VPR",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "R_GToggle",   x=693, y=61+2+48, radius=20, tooltip="Cab loudspeaker switch", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="R_G",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "OVTToggle",   x=600, y=80, radius=20, tooltip="Disable automatic valve braking", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
	     plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=26,z=4,var="OVTPl",ID="OVTPl",},
            var="OVT",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "OtklAVUToggle",  x=600+25, y=80, radius=20, tooltip="Disable AVU (automatic control switch)", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="OtklAVU",speed=16,
	    plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=26,var="OtklAVUPl",ID="OtklAVUPl",},
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "VPToggle",  x=600+50, y=80, radius=20, tooltip="Auxiliary train mode", model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            var="VP",speed=16,
	    plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=26,z=4,var="VPPl",ID="VPPl",},
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},

        
    }
}

-- Front panel
ENT.ButtonMap["Block2"] = {
  pos = Vector(451.35, 19.25, 1.2),
  ang = Angle(0, 273, 62),
  width = 100,
  height = 100,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    {ID = "!Buzzer",x=0,y=24*0,radius = 12,tooltip="Alarm lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 3,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=75,x=-0.3,y=-0.3,z=20.6,color=Color(170,255,210),var="Buzzer"},
        }},
        {ID = "!LampLN",x=0,y=24*1,radius = 12,tooltip="Direction lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 2,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=14,x=-0.3,y=-0.3,z=20.6,color=Color(130,255,90),var="LN"},
        }},
        {ID = "!LKVD",x=0,y=48,radius = 12,tooltip="ARS overspeed",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=62,x=-0.3,y=-0.3,z=20.6,color=Color(255,60,40),var="KVD"},
        }},
        {ID = "!LKT",x=0,y=72,radius = 12,tooltip="Brake control",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 2,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=105,x=-0.3,y=-0.3,z=20.6,color=Color(100,255,100),var="KT"},
        }},

        {ID = "!AVULight",x=29,y=24*0,radius = 12,tooltip="AVU activated",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=43,x=-0.3,y=-0.3,z=20.6,color=Color(255,170,210),var="AVU"},
        }},
        {ID = "!LampRS",x=29,y=24*1,radius = 12,tooltip="Equal speed lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=4,x=-0.3,y=-0.3,z=20.6,color=Color(130,255,90),var="RS"},
        }},
    	{ID = "!ARS",x=29,y=24*2, radius=10, tooltip="Normal ARS mode", model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 3,z = -3,
            lamp = {speed=16,model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=25,x=-0.3,y=-0.3,z=20.6, color=Color(100,255,100), var="L_ARS" },
        }},
        {ID = "!AB",x=29,y=24*3, radius=10, tooltip="Autoblocking ARS mode", model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 3,z = -3,
            lamp = {speed=16,model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=25,x=-0.3,y=-0.3,z=20.6, color=Color(255,255,100), var="AB" },
        }},
	{ID = "!L1Light",x=29*2.5,y=24*2, radius=10, tooltip="Ventilation lamp", model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 3,z = -3,
            lamp = {speed=16,model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=25,x=-0.3,y=-0.3,z=20.6, color=Color(255,100,100), var="L1" },
        }},
	{ ID = "V11Toggle", x = 29*2.5, y = 0, radius = 8, tooltip = "Ventilation group 1", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl", ang = 0,
      var = "V11", speed = 12, vmin = 1, vmax = 0,
      sndvol = 0.5, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
	{ ID = "V12Toggle", x = 29*2.5, y = 24, radius = 8, tooltip = "Ventilation group 2", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl", ang = 0,
      var = "V12", speed = 12, vmin = 1, vmax = 0,
      sndvol = 0.5, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
	{ ID = "V13Toggle", x = 29*2.5, y = 24*3, radius = 8, tooltip = "Emergency ventilation", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl", ang = 0,
      var = "V13", speed = 12, vmin = 1, vmax = 0,
      sndvol = 0.5, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}

ENT.ButtonMap["AB2"] = {
    pos = Vector(447,62.6,22.75),
    ang = Angle(0,0,90),
    width = 40,
    height = 50,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "AB2Set", x=0,y=0,w=40,h=50,tooltip="Переход на АБ(Помощник машиниста)", model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_1.mdl",
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_2.mdl",anim=true, var="ABLamp", speed=6,z=2.2},
            labels={{model="models/metrostroi_train/81-707/labels/vu_labels.mdl",skin=13,ang=90,z=1,x=0,y=-20}},
            var="AB2",speed=16,vmin=1,vmax=0,
            sndvol = 0.10, snd = function(val) return val and "button1_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ClientProps["blank1"] = {
  model = "models/metrostroi_train/equipment/rri_informator_portable.mdl",
  pos = Vector(452.4, 1.3, -3),
  ang = Angle(-28, 183, -0.5),
  hideseat = 0.2,
}
ENT.ClientProps["blank2"] = {
  model = "models/metrostroi_train/equipment/rri_informator_portable.mdl",
  pos = Vector(452, 9.6, -3),
  ang = Angle(-28, 183, -0.5),
  hideseat = 0.2,
}
ENT.ClientProps["blank3"] = {
  model = "models/metrostroi_train/equipment/rri_informator_portable.mdl",
  pos = Vector(451.5, 18, -2.9),
  ang = Angle(-28, 184.1, -1),
  hideseat = 0.2,
}
ENT.ButtonMap["Block4"] = {
  pos = Vector(451.7, 12.5, 1),
  ang = Angle(0, 273, 62),
  width = 300,
  height = 100,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "R_ASNPMenuSet", x = 69, y = 56, radius = 8, tooltip = "ASNP: Menu", model = {
      model = "models/metrostroi_train/81-720/button_round.mdl", z = -1,
      var = "R_ASNPMenu", speed = 12, vmin = 0, vmax = 0.9,
      sndvol = 0.5, snd = function(val) return val and "pnm_button1_on" or "pnm_button1_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "R_ASNPUpSet", x = 123, y = 24.5 - 9, radius = 8, tooltip = "ASNP: Up", model = {
      model = "models/metrostroi_train/81-720/button_round.mdl", z = -1,
      var = "R_ASNPUp", speed = 12, vmin = 0, vmax = 0.9,
      sndvol = 0.5, snd = function(val) return val and "pnm_button1_on" or "pnm_button2_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "R_ASNPDownSet", x = 123, y = 24.5 + 9, radius = 8, tooltip = "ASNP: Down", model = {
      model = "models/metrostroi_train/81-720/button_round.mdl", z = -1,
      var = "R_ASNPDown", speed = 12, vmin = 0, vmax = 0.9,
      sndvol = 0.5, snd = function(val) return val and "pnm_button2_on" or "pnm_button1_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "R_ASNPOnToggle", x = 20, y = 22, radius = 8, tooltip = "ASNP: Power switch", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl", ang = 0,
      var = "R_ASNPOn", speed = 12, vmin = 1, vmax = 0,
      sndvol = 0.5, snd = function(val) return val and "pnm_on" or "pnm_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
	{ID = "!ASNPOn",x=20,y=48,radius = 12,tooltip="ASNP: PNM power lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 3,z = -22.8,
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",ang=75,x=-0.3,y=-0.3,z=20.6,color=Color(210,255,170),var="R_ASNPOn"},
        }},
        {ID = "!AnnPlay",x=35,y=48,radius = 12,tooltip="ASNP: Announcer playback lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 2,z = -22.8,
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",ang=14,x=-0.3,y=-0.3,z=20.6,color=Color(255,200,90),var="AnnPlay"},
        }},
    	{ID = "!LEKK",x=160 + 29*0,y=24*0,radius = 12,tooltip="EKK lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 3,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=75,x=-0.3,y=-0.3,z=20.6,color=Color(210,170,255),var="LEKK"},
        }},
        {ID = "!LPU",x=160 + 29*0,y=24*1,radius = 12,tooltip="Low power",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 2,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=14,x=-0.3,y=-0.3,z=20.6,color=Color(255,130,90),var="LPU"},
        }},
        {ID = "!PNT",x=160 + 29*0,y=24*2,radius = 12,tooltip="Train brake applied",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=62,x=-0.3,y=-0.3,z=20.6,color=Color(255,170,100),var="PN"},
        }},
        {ID = "!PNW",x=160 + 29*0,y=24*3,radius = 12,tooltip="Wagon brake applied",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 2,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=105,x=-0.3,y=-0.3,z=20.6,color=Color(255,130,90),var="BrW"},
        }},
        {ID = "!LRP",x=160 + 29*1,y=24*0,radius = 12,tooltip="Red RP lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=43,x=-0.3,y=-0.3,z=20.6,color=Color(255,60,40),var="RPR",getfunc = function(ent) return ent:GetPackedRatio("RPR") end},
        }},
        {ID = "!LKVC",x=160 + 29*1,y=24*1,radius = 12,tooltip="No high voltage",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=4,x=-0.3,y=-0.3,z=20.6,color=Color(255,60,40),var="KVC"},
        }},
        {ID = "!LVD",x=160 + 29*1,y=24*2,radius = 12,tooltip="Engine run",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 0,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=87,x=-0.3,y=-0.3,z=20.6,color=Color(100,255,100),var="VD"},
        }},
        {ID = "!LST",x=160 + 29*1,y=24*3,radius = 12,tooltip="Brake applied",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 4,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=32,x=-0.3,y=-0.3,z=20.6,color=Color(255,170,110),var="ST"},
        }},

	{ID = "!GreenRPLight",x=160+29*3,y=24,radius=20,tooltip="Green RP lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=2,x=-0.3,y=-0.3,z=20.6,var="GreenRP",color=Color(100,255,100)}
        }},
        {ID = "!LampRP",x=160+29*2,y=0,radius=20,tooltip="Red RP lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=62,x=-0.3,y=-0.3,z=20.6,var="RP",color=Color(255,60,40)},
        }},
	{ID = "!LampLSN",x=160+29*3,y=0,radius=20,tooltip="Circuits failed to assemble",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=62,x=-0.3,y=-0.3,z=20.6,var="LSN",color=Color(255,60,40)},
        }},
        {ID = "!LKVPLight",x=160+29*2,y=24*2,radius=20,tooltip="BPSN activated",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 3,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=25,x=-0.3,y=-0.3,z=20.6,var="LKVP",color=Color(255,170,110)},
        }},
        {ID = "!SPLight",x=160+29*2,y=24*3,radius=20,tooltip="Fire alarm lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=63,x=-0.3,y=-0.3,z=20.6,var="LSP",color=Color(100,255,50)},
        }},
        {ID = "!LZP",x=160+29*3,y=24*2,radius=20,tooltip="BPSN protection lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=63,x=-0.3,y=-0.3,z=20.6,var="RZP",color=Color(255,200,50)},
        }},
	{ID = "!LampLHRK",x=160+29*2,y=24,radius=20,tooltip="Rheostat controller lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=63,x=-0.3,y=-0.3,z=20.6,var="HRK",color=Color(255,200,50)},
        }},
	{ID = "!LSD",x=160+29*3,y=24*3,radius=20,tooltip="Door closed lamp",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",ignorepanel = true,skin = 1,z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=63,x=-0.3,y=-0.3,z=20.6,var="SD",color=Color(200,255,50)},
        }},
  }

}

ENT.ButtonMap["ASNPScreen"] = {
  pos = Vector(451.52, 10.5, 0.3),
  ang = Angle(0, 273, 62),
  width = 512,
  height = 128,
  scale = 0.025 / 2.69,

  hideseat = 0.2,
  hide = true,
}
ENT.ClientProps["speed"] = {
    model = "models/metrostroi_train/equipment/arrow_volt2.mdl",
    pos = Vector(456.5, -26.25, 24),
    ang = Angle(-90.000000,-5.000000,-25.100000),
    hideseat = 0.2,
}

ENT.ButtonMap["BZOS_C"] = {
  pos = Vector(439.9, -62.2, -1),
  ang = Angle(0, 180, 90),
  width = 16,
  height = 60,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "SAB1Toggle", x = 8.2, y = 8, radius = 8, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl", ang = 180, z = -4,
      var = "SAB1", speed = 16,
      sndvol = 0.5, snd = function(val) return val and "pnm_on" or "pnm_off" end,
      sndmin = 50, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "!VH1", x = 8.2, y = 27, radius = 4, tooltip = "", model = {
      lamp = { speed = 16, model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl", z = -5, var = "VH1",
        color = Color(175, 250, 20) }
    },
    },
    { ID = "!VH2", x = 8.2, y = 44, radius = 4, tooltip = "", model = {
      lamp = { speed = 16, model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl", z = -5, var = "VH2",
        color = Color(255, 56, 30) }
    },
    },
  }
}
ENT.ButtonMap["BZOS_R"] = table.Copy(ENT.ButtonMap["BZOS_C"])
ENT.ButtonMap["BZOS_R"].pos = ENT.ButtonMap["BZOS_R"].pos - Vector(0.3, 0, -0.1)
for k, v in pairs(ENT.ButtonMap["BZOS_R"].buttons) do v.ID = "1:" .. v.ID end

-- AV panel
ENT.ButtonMap["AV_C"] = {
  pos = Vector(396, -17.5, 44.6),
  ang = Angle(0, 90, 90),
  width = 680,
  height = 590,
  scale = 0.0625,
  hide = 0.8,

  buttons = {
    { ID = "A53Toggle", x = 30 + 36.7 * 0, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A56Toggle", x = 30 + 36.7 * 1, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A54Toggle", x = 30 + 36.7 * 2, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A17Toggle", x = 30 + 36.7 * 3, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A44Toggle", x = 30 + 36.7 * 4, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A39Toggle", x = 30 + 36.7 * 5, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A70Toggle", x = 30 + 36.7 * 6, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A14Toggle", x = 30 + 36.7 * 7, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A74Toggle", x = 30 + 36.7 * 8, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A26Toggle", x = 30 + 36.7 * 9, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "AR63Toggle", x = 30 + 36.7 * 10, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "AS1Toggle", x = 30 + 36.7 * 11, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A13Toggle", x = 30 + 36.7 * 12, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A21Toggle", x = 30 + 36.7 * 13, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A31Toggle", x = 30 + 36.7 * 14, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A32Toggle", x = 30 + 36.7 * 15, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A16Toggle", x = 30 + 36.7 * 16, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    { ID = "A12Toggle", x = 30 + 36.7 * 17, y = 60 + 157 * 0, radius = 25, tooltip = "" },
    ------------------------------------------------------------------------
    { ID = "A24Toggle", x = 30 + 36.7 * 0, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A49Toggle", x = 30 + 36.7 * 1, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A27Toggle", x = 30 + 36.7 * 2, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A72Toggle", x = 30 + 36.7 * 3, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A50Toggle", x = 30 + 36.7 * 4, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A15Toggle", x = 30 + 36.7 * 5, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 8 },
    { ID = "AV3Toggle", x = 30 + 36.7 * 6, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "AV2Toggle", x = 30 + 36.7 * 7, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 9 },
    { ID = "AV4Toggle", x = 30 + 36.7 * 8, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 10 },
    { ID = "AV5Toggle", x = 30 + 36.7 * 9, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 11 },
    { ID = "AV6Toggle", x = 30 + 36.7 * 10, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 12 },
    { ID = "AV1Toggle", x = 30 + 36.7 * 11, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 13 },
    { ID = "A29Toggle", x = 30 + 36.7 * 12, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A46Toggle", x = 30 + 36.7 * 13, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A47Toggle", x = 30 + 36.7 * 14, y = 60 + 157 * 1, radius = 25, tooltip = "", lab = 17 },
    { ID = "A71Toggle", x = 30 + 36.7 * 15, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A7Toggle", x = 30 + 36.7 * 16, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    { ID = "A9Toggle", x = 30 + 36.7 * 17, y = 60 + 157 * 1, radius = 25, tooltip = "" },
    ------------------------------------------------------------------------
    { ID = "A84Toggle", x = 30 + 36.7 * 0, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A8Toggle", x = 30 + 36.7 * 1, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A52Toggle", x = 30 + 36.7 * 2, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A19Toggle", x = 30 + 36.7 * 3, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A48Toggle", x = 30 + 36.7 * 4, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A10Toggle", x = 30 + 36.7 * 5, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A22Toggle", x = 30 + 36.7 * 6, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A30Toggle", x = 30 + 36.7 * 7, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A1Toggle", x = 30 + 36.7 * 8, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A2Toggle", x = 30 + 36.7 * 9, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A3Toggle", x = 30 + 36.7 * 10, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A4Toggle", x = 30 + 36.7 * 11, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A5Toggle", x = 30 + 36.7 * 12, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A6Toggle", x = 30 + 36.7 * 13, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A18Toggle", x = 30 + 36.7 * 14, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A73Toggle", x = 30 + 36.7 * 15, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A20Toggle", x = 30 + 36.7 * 16, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    { ID = "A25Toggle", x = 30 + 36.7 * 17, y = 60 + 157 * 2, radius = 25, tooltip = "" },
    ------------------------------------------------------------------------
    { ID = "A11Toggle", x = 30 + 36.7 * 0, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A37Toggle", x = 30 + 36.7 * 1, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A45Toggle", x = 30 + 36.7 * 2, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A38Toggle", x = 30 + 36.7 * 3, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A51Toggle", x = 30 + 36.7 * 4, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A65Toggle", x = 30 + 36.7 * 5, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A66Toggle", x = 30 + 36.7 * 6, y = 60 + 157 * 3, radius = 25, tooltip = "", lab = 16 },
    { ID = "A42Toggle", x = 30 + 36.7 * 7, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A43Toggle", x = 30 + 36.7 * 8, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A41Toggle", x = 30 + 36.7 * 9, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A40Toggle", x = 30 + 36.7 * 10, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A75Toggle", x = 30 + 36.7 * 11, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A76Toggle", x = 30 + 36.7 * 12, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A60Toggle", x = 30 + 36.7 * 13, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A58Toggle", x = 30 + 36.7 * 14, y = 60 + 157 * 3, radius = 25, tooltip = "", lab = 14 },
    { ID = "A57Toggle", x = 30 + 36.7 * 15, y = 60 + 157 * 3, radius = 25, tooltip = "" },
    { ID = "A59Toggle", x = 30 + 36.7 * 16, y = 60 + 157 * 3, radius = 25, tooltip = "", lab = 15 },
    { ID = "A28Toggle", x = 30 + 36.7 * 17, y = 60 + 157 * 3, radius = 25, tooltip = "" },
  }
}
for i, button in pairs(ENT.ButtonMap.AV_C.buttons) do
  button.model = {
    model = "models/metrostroi_train/81-720/button_av1.mdl", z = -25,
    var = button.ID:Replace("Toggle", ""), speed = 8,
    sndvol = 0.8, snd = function(val) return val and "av_on" or "av_off" end, sndmin = 80, sndmax = 1e3 / 3,
    sndang = Angle(-90, 0, 0),
  }
  button.ID = "1:" .. button.ID
  if button.lab then
    button.model.labels = { { model = "models/metrostroi_train/81-717/labels/label_717.mdl", skin = button.lab,
      ang = Angle(-90, 90, 0), z = 40, x = 2, y = (14 <= button.lab and button.lab <= 16) and -62 or -65 } }
  end
end
ENT.ButtonMap["Battery_C"] = {
    pos = Vector(410.0,-57,21),
    ang = Angle(0,90,90),
    width = 255,
    height = 280,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        --{ID = "1:RC1Pl",x=45,y=108,radius=20,tooltip=""},
        {ID = "1:UOSToggle",x=40,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_rcuos.mdl",z=17,ang=180,
            var="UOS",speed=0.5,vmin=1,vmax=0.87,
            plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=0,x=25,y=28,var="UOSPl",ID="UOSPl",z=-15,},
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "1:VBToggle",x=215,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_vb.mdl",z=17,ang=180,
            var="VB",speed=0.5,vmin=1,vmax=0.87,
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "1:RC1Toggle",x=40,y=240,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_rc1.mdl",z=17,ang=180,
            var="RC1",speed=0.5,vmin=1,vmax=0.87,
            plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=230,x=-28,y=28,var="RC1Pl",ID="RC1Pl",z=-15,},
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "1:AB1Set", x=210, y=140,radius=20,tooltip="Переход на АБ(Машинист)", model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_1.mdl",vmin=1,vmax=0,
            var="AB1",speed=16,
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_2.mdl",anim=true, var="ABLamp", speed=6, z = 2.2},
            labels={{model="models/metrostroi_train/81-707/labels/vu_labels.mdl",skin=13,ang=90,x=0,y=-20}},
            sndvol = 0.10, snd = function(val) return val and "button1_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},

    }
}



ENT.ButtonMap["VBD_C"] = {
    pos = Vector(410.0,-56.15,36),
    ang = Angle(0,90,90),
    width = 50,
    height = 125,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "1:VBDToggle",x=25,y=25,radius=25,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=90,x=1,y=-26,var="VBDPl",ID="VBDPl",},
            var="VBD",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "1:UPPS_OnToggle",x=25,y=100,radius=25,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl",ang = 180,z=-2,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=90,x=1,y=-26,var="UPPS_OnPl",ID="UPPS_OnPl",},
            var="UPPS_On",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},

    }
}

ENT.ButtonMap["AV_R"] = {
    pos = Vector(398.5+11,-52.9+0.6,37.1),
    ang = Angle(0,90,90),
    width = 398,
    height = 358,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A11Toggle",x=29.7*0,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A17Toggle",x=29.7*1,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A44Toggle",x=29.7*2,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A26Toggle",x=29.7*3,y=155*0,w=25,h=45,tooltip=""},
        {ID = "AR63Toggle",x=29.7*4,y=155*0,w=25,h=45,tooltip=""},
        {ID = "AS1Toggle",x=29.7*5,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A21Toggle",x=29.7*6,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A49Toggle",x=29.7*7,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A27Toggle",x=29.7*8,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A10Toggle",x=29.7*9,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A53Toggle",x=29.7*10,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A54Toggle",x=29.7*11,y=155*0,w=25,h=45,tooltip=""},
        {ID = "A84Toggle",x=29.7*12,y=155*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A76Toggle",x=29.7*0,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A48Toggle",x=29.7*1,y=155*1,w=25,h=45,tooltip=""},
        {ID = "AV1Toggle",x=29.7*2,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A29Toggle",x=29.7*3,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A46Toggle",x=29.7*4,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A47Toggle",x=29.7*5,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A43Toggle",x=29.7*6,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A42Toggle",x=29.7*7,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A74Toggle",x=29.7*8,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A73Toggle",x=29.7*9,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A71Toggle",x=29.7*10,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A41Toggle",x=29.7*11,y=155*1,w=25,h=45,tooltip=""},
        {ID = "A45Toggle",x=29.7*12,y=155*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A75Toggle",x=29.7*0,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A8Toggle",x=29.7*1,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A52Toggle",x=29.7*2,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A72Toggle",x=29.7*3,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A31Toggle",x=29.7*4,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A32Toggle",x=29.7*5,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A13Toggle",x=29.7*6,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A1Toggle",x=29.7*7,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A20Toggle",x=29.7*8,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A25Toggle",x=29.7*9,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A30Toggle",x=29.7*10,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A56Toggle",x=29.7*11,y=155*2,w=25,h=45,tooltip=""},
        {ID = "A65Toggle",x=29.7*12,y=155*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_R.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",z=-25,
        var=button.ID:Replace("Toggle",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    button.ID = "2:"..button.ID
end
ENT.ButtonMap["AV_S"] = {
    pos = Vector(392,-33,-20),
    ang = Angle(0,270,90),
    width = 300,
    height = 165,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A2Toggle",x=25*0,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A3Toggle",x=25*1,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A4Toggle",x=25*2,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A5Toggle",x=25*3,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A6Toggle",x=25*4,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A70Toggle",x=25*5,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A14Toggle",x=25*6,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A39Toggle",x=25*7,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A28Toggle",x=25*8,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A38Toggle",x=25*9,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A22Toggle",x=25*10,y=60*0,w=25,h=45,tooltip=""},
        --{ID = "A8Toggle",x=25*11,y=60*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "AISToggle",x=25*0,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A12Toggle",x=25*1,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A16Toggle",x=25*2,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A37Toggle",x=25*3,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A51Toggle",x=25*4,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A24Toggle",x=25*5,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A19Toggle",x=25*6,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A66Toggle",x=25*7,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A18Toggle",x=25*8,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A40Toggle",x=25*9,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A80Toggle",x=25*10,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A50Toggle",x=25*11,y=60*1,w=25,h=45,tooltip=""},
        --{ID = "A52Toggle",x=25*12,y=60*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "AV2Toggle",x=25*1,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV3Toggle",x=25*2,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV4Toggle",x=25*3,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV5Toggle",x=25*4,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV6Toggle",x=25*5,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A15Toggle",x=25*6,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A57Toggle",x=25*7,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A81Toggle",x=25*8,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A7Toggle",x=25*9,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A9Toggle",x=25*10,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A68Toggle",x=25*11,y=60*2,w=25,h=45,tooltip=""},
        --{ID = "A72Toggle",x=25*12,y=60*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_S.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",z=-25,
        var=button.ID:Replace("Toggle",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
end
ENT.ButtonMap["Battery_R"] = {
    pos = Vector(410.0,-54.25,8),
    ang = Angle(0,90,90),
    width = 440,
    height = 157,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "2:RC1Toggle",x=64,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_rc1.mdl",z=17,ang=180,
            var="RC1",speed=0.5,vmin=1,vmax=0.87,
            plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=230,x=-28,y=28,var="RC1Pl",ID="RC1Pl",z=-15,},
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "2:VBToggle",x=220,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_vb.mdl",z=17,ang=180,
            var="VB",speed=0.5,vmin=1,vmax=0.87,
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "2:UOSToggle",x=376,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_rcuos.mdl",z=17,ang=180,
            var="UOS",speed=0.5,vmin=1,vmax=0.87,
            plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=0,x=25,y=28,var="UOSPl",ID="UOSPl",z=-15,},
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "2:AB1Set", x=376,y=120,radius=25,tooltip="Переход на АБ(Машинист)", model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_1.mdl",vmin=1,vmax=0,
            var="AB1",speed=16,
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_2.mdl",anim=true, var="ABLamp", speed=6, z=2.2},
            labels={{model="models/metrostroi_train/81-707/labels/vu_labels.mdl",skin=13,ang=90,x=0,y=-20}},
            sndvol = 0.10, snd = function(val) return val and "button1_on" or "button3_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["VBD_R"] = {
  pos = Vector(402, -18.05, 15),
  ang = Angle(0, 180, 90),
  width = 50,
  height = 125,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "2:VBDToggle", x = 25, y = 25, radius = 25, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl", ang = 180, z = -2,
      plomb = { model = "models/metrostroi_train/81/plomb.mdl", ang = 90, x = 1, y = -26, var = "VBDPl", ID = "VBDPl", },
      var = "VBD", speed = 16,
      sndvol = 1, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "2:UPPS_OnToggle", x = 25, y = 100, radius = 25, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_tumbler_t2.mdl", ang = 180, z = -2,
      plomb = { model = "models/metrostroi_train/81/plomb.mdl", ang = 90, x = 1, y = -26, var = "UPPS_OnPl",
        ID = "UPPS_OnPl", },
      var = "UPPS_On", speed = 16,
      sndvol = 1, snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}

ENT.ButtonMap["CabVent_C"] = {
  pos = Vector(455.4, 47-0.6, -13),
  ang = Angle(0, -90, 0),
  width = 70,
  height = 62,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "PVK-", x = 0, y = 0, w = 35, h = 62, tooltip = "" },
    { ID = "!PVK", x = 35, y = 31, model = {
      model = "models/metrostroi_train/81-717/buttons/breaker_common001.mdl", ang = 180, z = 15,
      getfunc = function(ent) return ent:GetPackedRatio("PVK") end, var = "PVK", speed = 4, min = 1, max = 0.75,
      sndvol = 1, snd = function(val, val2) return "pvk" .. val2 end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "PVK+", x = 35, y = 0, w = 35, h = 62, tooltip = "" },
  }
}
ENT.ButtonMap["CabVent_R"] = table.Copy(ENT.ButtonMap["CabVent_C"])
ENT.ButtonMap["CabVent_R"].pos = ENT.ButtonMap["CabVent_R"].pos - Vector(-0.2, 0.6, 1.1)
for k, v in pairs(ENT.ButtonMap["CabVent_R"].buttons) do v.ID = "1:" .. v.ID end
-- Train driver helpers panel
ENT.ButtonMap["HelperPanel_C"] = {
  pos = Vector(447, 62.6, 17.75),
  ang = Angle(0, 0, 90),
  width = 76,
  height = 305,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "VUD2Toggle", x = 0, y = 0, w = 76, h = 86, tooltip = "", model = {
      model = "models/metrostroi_train/switches/vudbrown.mdl", z = 25,
      var = "VUD2", speed = 6,
      sndvol = 1, snd = function(val) return val and "vu224_on" or "vu224_off" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "VDLSet", x = 0, y = 86, w = 76, h = 86, tooltip = "", model = {
      model = "models/metrostroi_train/switches/vudbrown.mdl", z = 25,
      var = "VDL", speed = 6,
      sndvol = 1, snd = function(val) return val and "vu224_on" or "vu224_off" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "R_Program1HSet", x = 38, y = 230, radius = 20, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -3,
      var = "R_Program1H", speed = 16, vmin = 1, vmax = 0,
      sndvol = 0.07, snd = function(val) return val and "button3_on" or "button2_off" end,
      sndmin = 60, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "R_Program2HSet", x = 38, y = 285, radius = 20, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_button_black.mdl", z = -3,
      var = "R_Program2H", speed = 16, vmin = 1, vmax = 0,
      sndvol = 0.07, snd = function(val) return val and "button1_on" or "button3_off" end,
      sndmin = 60, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["HelperPanel_R"] = table.Copy(ENT.ButtonMap["HelperPanel_C"])
ENT.ButtonMap["HelperPanel_R"].pos = ENT.ButtonMap["HelperPanel_R"].pos - Vector(0.7, 0, -0.65)
for k, v in pairs(ENT.ButtonMap["HelperPanel_R"].buttons) do v.ID = "1:" .. v.ID end

ENT.ClientProps["reverser"] = {
  model = "models/metrostroi_train/reversor/reversor_classic.mdl",
  pos = Vector(438, -29.9, -14.9),
  ang = Angle(-90 - 22, 180, 90),
  hideseat = 0.2,
  modelcallback = function(ent)
    return ent.HasGoldenReverser and "models/metrostroi_train/reversor/reversor_gold.mdl" or
        "models/metrostroi_train/reversor/reversor_classic.mdl"
  end,
}
ENT.ClientProps["krureverser"] = {
  model = "models/metrostroi_train/reversor/reversor_classic.mdl",
  pos = Vector(444, 16.5, -7),
  ang = Angle(30, 6, 90),
  hideseat = 0.2,
  modelcallback = function(ent)
    return ent.HasGoldenReverser and "models/metrostroi_train/reversor/reversor_gold.mdl" or
        "models/metrostroi_train/reversor/reversor_classic.mdl"
  end,
}

-- UAVA
ENT.ButtonMap["UAVAPanel"] = {
  pos = Vector(423, -57, -25.0),
  ang = Angle(0, 180, 90),
  width = 180,
  height = 200,
  scale = 0.0625,

  buttons = {
    { ID = "UAVAToggle", x = 0, y = 0, w = 60, h = 200, tooltip = "", model = {
      plomb = { var = "UAVAPl", ID = "UAVAPl", },
      var = "UAVA",
      sndid = "UAVALever", sndvol = 1, snd = function(val) return val and "uava_on" or "uava_off" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
    { ID = "UAVAContactSet", x = 60, y = 0, w = 120, h = 200, tooltip = "" },
  }
}
ENT.ClientProps["UAVALever"] = {
  model = "models/metrostroi_train/81-703/cabin_uava.mdl",
  pos = Vector(422.7, -59.4, -31.6),
  ang = Angle(3, -180, 0),
  hideseat = 0.2,
}

ENT.ButtonMap["Stopkran"] = {
  pos = Vector(401, 62, 17),
  ang = Angle(0, 0, 90),
  width = 200,
  height = 1300,
  scale = 0.1 / 2,
  buttons = {
    { ID = "EmergencyBrakeValveToggle", x = 0, y = 0, w = 200, h = 1300, tooltip = "" },
  }
}
ENT.ClientProps["stopkran"] = {
  model = "models/metrostroi_train/81-717/stop_mvm.mdl",
  pos = Vector(408.45, 62.15, 11.5),
  ang = Angle(0, 0, 0),
  hideseat = 0.2,
}
ENT.ClientSounds["EmergencyBrakeValve"] = { { "stopkran", function() return "disconnect_valve" end, 1, 1, 50, 1e3,
  Angle(-90, 0, 0) } }


ENT.ButtonMap["DriverValveBLDisconnect"] = {
  pos = Vector(426.1, -27.3, -20),
  ang = Angle(90, -150, 90),
  width = 200,
  height = 100,
  scale = 0.0625,

  buttons = {
    { ID = "DriverValveBLDisconnectToggle", x = 0, y = 0, w = 200, h = 100, tooltip = "", model = {
      var = "DriverValveBLDisconnect", sndid = "brake_disconnect",
      sndvol = 1, snd = function(val) return "disconnect_valve" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["DriverValveTLDisconnect"] = {
  pos = Vector(429.3, -23, -15),
  ang = Angle(90, -150, 90),
  width = 200,
  height = 90,
  scale = 0.0625,

  buttons = {
    { ID = "DriverValveTLDisconnectToggle", x = 0, y = 0, w = 200, h = 90, tooltip = "", model = {
      var = "DriverValveTLDisconnect", sndid = "train_disconnect",
      sndvol = 1, snd = function(val) return val and "pneumo_TL_open" or "pneumo_TL_disconnect" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["EPKDisconnect"] = {
  pos = Vector(435, -40, -23),
  ang = Angle(0, -90 - 45, 45),
  width = 200,
  height = 120,
  scale = 0.0625,

  buttons = {
    { ID = "EPKToggle", x = 0, y = 0, w = 200, h = 120, tooltip = "", model = {
      var = "EPK" --,sndid="EPK_disconnect",
      --sndvol = 1,snd = function(val) return "disconnect_valve" end,
      --sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
    } },
  }
}
ENT.ButtonMap["EPVDisconnect"] = {
  pos = Vector(435, -40, -23),
  ang = Angle(0, -90 - 45, 45),
  width = 200,
  height = 120,
  scale = 0.0625,

  buttons = {
    { ID = "EPKToggle", x = 0, y = 0, w = 200, h = 120, tooltip = "", model = {
      var = "EPK" --,sndid="EPK_disconnect",
      --sndvol = 1,snd = function(val) return "disconnect_valve" end,
      --sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
    } },
  }
}

ENT.ClientProps["brake_disconnect"] = {
  model = "models/metrostroi_train/81-707/cran1.mdl",
  pos = Vector(427.3, -28.9, -32.5),
  ang = Angle(90, -60, 90),
  hideseat = 0.2,
}
ENT.ClientSounds["EPK"] = {
  { "EPK_disconnect", function() return "disconnect_valve" end, 1, 1, 90, 1e3, Angle(-90, 0, 0) },
  { "EPV_disconnect", function() return "disconnect_valve" end, 1, 1, 90, 1e3, Angle(-90, 0, 0) },
}
ENT.ClientProps["EPK_disconnect"] = {
  model = "models/metrostroi_train/81-707/cran1.mdl",
  pos = Vector(432.4, -44.25, -24.7),
  ang = Angle(0, -90, 0),
  hideseat = 0.2,
}
ENT.ClientProps["EPV_disconnect"] = {
  model = "models/metrostroi_train/81-707/cran1.mdl",
  pos = Vector(431.15, -43.5, -24.7),
  ang = Angle(0, -90, 0),
  hideseat = 0.2,
}
ENT.ClientProps["train_disconnect"] = {
  model = "models/metrostroi_train/81-707/cran3.mdl",
  pos = Vector(430.1, -24.0, -24.1),
  ang = Angle(90, -60, 90),
  hideseat = 0.2,
}


ENT.ButtonMap["DriverValveDisconnect"] = {
  pos = Vector(425, -23, -27),
  ang = Angle(90, -150, 90),
  width = 200,
  height = 90,
  scale = 0.0625,

  buttons = {
    { ID = "DriverValveDisconnectToggle", x = 0, y = 0, w = 200, h = 90, tooltip = "", model = {
      var = "DriverValveDisconnect", sndid = "valve_disconnect",
      sndvol = 1, snd = function(val) return "disconnect_valve" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ClientProps["valve_disconnect"] = {
  model = "models/metrostroi_train/81-707/cran3.mdl",
  pos = Vector(428.15, -22.95, -37.43),
  ang = Angle(90, 240 + 2, 90),
  hideseat = 0.2,
}

ENT.ButtonMap["FrontPneumatic"] = {
  pos = Vector(470 - 9, -45.0, -58.0 + 5),
  ang = Angle(0, 90, 90),
  width = 900,
  height = 100,
  scale = 0.1,
  hideseat = 0.2,
  hide = true,
  screenHide = true,

  buttons = {
    { ID = "FrontBrakeLineIsolationToggle", x = 000, y = 0, w = 400, h = 100, tooltip = "" },
    { ID = "FrontTrainLineIsolationToggle", x = 500, y = 0, w = 400, h = 100, tooltip = "" },
  }
}
ENT.ClientProps["FrontBrake"] = { --
  model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
  pos = Vector(449 + 11, -31, -62),
  ang = Angle(-15, -90, 0),
  hide = 2,
}
ENT.ClientProps["FrontTrain"] = { --
  model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
  pos = Vector(449 + 11, 31, -62),
  ang = Angle(15, -90, 0),
  hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = { { "FrontBrake", function() return "disconnect_valve" end, 1, 1, 50, 1e3,
  Angle(-90, 0, 0) } }
ENT.ClientSounds["FrontTrainLineIsolation"] = { { "FrontTrain", function() return "disconnect_valve" end, 1, 1, 50, 1e3,
  Angle(-90, 0, 0) } }

ENT.ButtonMap["RearPneumatic"] = {
  pos = Vector(-473 - 1, 45.0, -58.0 + 5),
  ang = Angle(0, 270, 90),
  width = 900,
  height = 100,
  scale = 0.1,
  hideseat = 0.2,
  hide = true,
  screenHide = true,
  buttons = {
    { ID = "RearTrainLineIsolationToggle", x = 500, y = 0, w = 400, h = 100, tooltip = "" },
    { ID = "RearBrakeLineIsolationToggle", x = 000, y = 0, w = 400, h = 100, tooltip = "" },
  }
}
ENT.ClientProps["RearTrain"] = { --
  model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
  pos = Vector(-450 - 22, -34, -62),
  ang = Angle(-15, 90, 0),
  hide = 2,
}
ENT.ClientProps["RearBrake"] = { --
  model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
  pos = Vector(-450 - 22, 34, -62),
  ang = Angle(15, 90, 0),
  hide = 2,
}
ENT.ClientSounds["RearBrakeLineIsolation"] = { { "RearBrake", function() return "disconnect_valve" end, 1, 1, 50, 1e3,
  Angle(-90, 0, 0) } }
ENT.ClientSounds["RearTrainLineIsolation"] = { { "RearTrain", function() return "disconnect_valve" end, 1, 1, 50, 1e3,
  Angle(-90, 0, 0) } }


ENT.ButtonMap["GV"] = {
  pos = Vector(170 - 3 - 9.5, 50 + 20, -60 + 2),
  ang = Angle(0, 225 - 15, 90),
  width = 260,
  height = 260,
  scale = 0.1,
  buttons = {
    { ID = "GVToggle", x = 0, y = 0, w = 260, h = 260, tooltip = "", model = {
      var = "GV", sndid = "gv",
      sndvol = 0.8, sndmin = 80, sndmax = 1e3 / 3, sndang = Angle(-90, 0, 0),
      snd = function(val) return val and "gv_f" or "gv_b" end,
    } },
  }
}
ENT.ClientProps["gv"] = {
  model = "models/metrostroi/81-717/gv.mdl",
  pos = Vector(153.5 - 3 - 9.5, 36 + 20, -78 + 2),
  ang = Angle(-90, 90, -90),
  color = Color(150, 255, 255),
  hide = 0.5,
}
ENT.ClientProps["gv_wrench"] = {
  model = "models/metrostroi_train/reversor/reversor_classic.mdl",
  pos = ENT.ClientProps["gv"].pos,
  ang = Angle(-90, 0, 0),
  hide = 0.5,
}

ENT.ButtonMap["AirDistributor"] = {
  pos = Vector(-185, -68, -50),
  ang = Angle(0, 0, 90),
  width = 170,
  height = 80,
  scale = 0.1,
  hideseat = 0.1,
  hide = true,
  screenHide = true,

  buttons = {
    { ID = "AirDistributorDisconnectToggle", x = 0, y = 0, w = 170, h = 80, tooltip = "" },
  }
}
local yventpos = {
    -414.5+0*117,
    -414.5+1*117+6.2,
    -414.5+2*117+5,
    -414.5+3*117+2,
    -414.5+4*117+0.5,
    -414.5+5*117-2.3,
    -414.5+6*117-2.3,
}
for i=1,7 do
    ENT.ClientProps["vent"..i] = {
        model = "models/metrostroi_train/81-720/vent.mdl",
        pos = Vector(yventpos[i],0,62),
        ang = Angle(0,0,0),
        hide = 1.1,
    }
end
for i = 0, 3 do
  ENT.ClientProps["TrainNumberL" .. i] = {
    model = "models/metrostroi_train/common/bort_numbers.mdl",
    pos = Vector(275 + 16 + i * 6.6 - 5 * 6.6 / 2, 67.4, 32.8),
    ang = Angle(0, 180, 0),
    skin = i,
    hide = 1.5,
    callback = function(ent)
      ent.WagonNumber = false
    end,
  }
  ENT.ClientProps["TrainNumberR" .. i] = {
    model = "models/metrostroi_train/common/bort_numbers.mdl",
    pos = Vector(-295 + 16 - i * 6.6 - 5 * 6.6 / 2, -67.4, 32.8),
    ang = Angle(0, 0, 0),
    skin = i,
    hide = 1.5,
    callback = function(ent)
      ent.WagonNumber = false
    end,
  }
end

ENT.ButtonMap["Route"] = {
    pos = Vector(457,43.4,-3.5),
    ang = Angle(0,99,90),
    width = 153,
    height = 130,
    scale = 0.0625,
    buttons = {
        {ID = "RouteNumber1+",x=76.5*0,y=0,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber2+",x=76.5*1,y=0,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber1-",x=76.5*0,y=65,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber2-",x=76.5*1,y=65,w=76.5,h=65,tooltip=""},
    }
}
ENT.ClientProps["route"] = {
    model = "models/metrostroi_train/common/routes/ezh/route_holder.mdl",
    pos = Vector(-8,0,-5.65),
    ang = Angle(0,1,0),
    hide = 2,
}

ENT.ClientProps["route1"] = {
    model = "models/metrostroi_train/common/routes/ezh/route_number1.mdl",
    pos = ENT.ClientProps["route"].pos,
    ang = ENT.ClientProps["route"].ang,
    skin=6,
    hide = 2,
    callback = function(ent)
        ent.RouteNumber.Reloaded = false
    end,
}
ENT.ClientProps["route2"] = {
    model = "models/metrostroi_train/common/routes/ezh/route_number2.mdl",
    pos = ENT.ClientProps["route"].pos,
    ang = ENT.ClientProps["route"].ang,
    skin=1,
    hide = 2,
    callback = function(ent)
        ent.RouteNumber.Reloaded = false
    end,
}

ENT.ButtonMap["CabinDoor"] = {
  pos = Vector(414.5, 64, 56.7),
  ang = Angle(0, 0, 90),
  width = 642,
  height = 2000,
  scale = 0.1 / 2,
  buttons = {
    { ID = "CabinDoor", x = 0, y = 0, w = 642, h = 2000, tooltip = "", model = {
      var = "door2", sndid = "door2",
      sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["OtsekDoor1"] = {
  pos = Vector(394.5, 28, 12.6),
  ang = Angle(0, 180, 90),
  width = 310,
  height = 130,
  scale = 0.1 / 2,
  buttons = {
    { ID = "OtsekDoor1", x = 0, y = 0, w = 310, h = 130, tooltip = "", model = {
      var = "door_otsek1", sndid = "door_otsek1",
      sndvol = 1, snd = function(val) return "otsek_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["OtsekDoor2"] = {
  pos = Vector(394.5, 28, -15.5),
  ang = Angle(0, 180, 90),
  width = 310,
  height = 130,
  scale = 0.1 / 2,
  buttons = {
    { ID = "OtsekDoor2", x = 0, y = 0, w = 310, h = 130, tooltip = "", model = {
      var = "door_otsek2", sndid = "door_otsek2",
      sndvol = 1, snd = function(val) return "otsek_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}

ENT.ButtonMap["PassengerDoor"] = {
  pos = Vector(390 - 12.2, 29, 50.6), --28
  ang = Angle(0, 90, 90),
  width = 642,
  height = 2000,
  scale = 0.1 / 2,
  buttons = {
    { ID = "PassengerDoor", x = 0, y = 0, w = 642, h = 2000, tooltip = "", model = {
      var = "door3", sndid = "door3",
      sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["PassengerDoor1"] = {
  pos = Vector(390 - 12.2, 29 + 32, 50.6), --28
  ang = Angle(0, -90, 90),
  width = 642,
  height = 2000,
  scale = 0.1 / 2,
  buttons = {
    { ID = "PassengerDoor", x = 0, y = 0, w = 642, h = 2000, tooltip = "" },
  }
}
ENT.ButtonMap["CabinDoor"] = {
  pos = Vector(411, 64, 50),
  ang = Angle(0, 0, 90),
  width = 665,
  height = 2000,
  scale = 0.1 / 2,
  buttons = {
    { ID = "CabinDoor", x = 0, y = 0, w = 665, h = 2000, tooltip = "", model = {
      var = "door2", sndid = "door2",
      sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["RearDoor"] = {
  pos = Vector(-470 - 3, -16, 48.4 - 2),
  ang = Angle(0, 90, 90),
  width = 642,
  height = 1900,
  scale = 0.1 / 2,
  buttons = {
    { ID = "RearDoor", x = 0, y = 0, w = 642, h = 1900, tooltip = "", model = {
      var = "door1", sndid = "door1",
      sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
      sndmin = 90, sndmax = 1e3, sndang = Angle(-90, 0, 0),
    } },
  }
}
--[[ ENT.ButtonMap["LeftMirror"] = {
    pos = Vector(470.0-0.1,72.75,37.4),
    ang = Angle(0,-60,90),
    width = 128,
    height = 256,
    scale = 0.06,
}
ENT.ButtonMap["RightMirror"] = {
    pos = Vector(470.0+3.4,-72.75+6,37.4),
    ang = Angle(0,-60-60,90),
    width = 128,
    height = 256,
    scale = 0.06,
}--]]
--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false
ENT.ClientProps["brake013"] = {
  model = "models/metrostroi_train/81-717/cran13.mdl",
  pos = Vector(431.5, -20.3, -10.2),
  ang = Angle(0, 180, 0),
  hideseat = 0.2,
}
ENT.ClientProps["brake334"] = {
  model = "models/metrostroi_train/81-703/cabin_cran_334.mdl",
  pos = Vector(432.27, -22.83, -8.2),
  ang = Angle(0, -230, 0),
  hideseat = 0.2,
}
if not ENT.ClientSounds["br_013"] then ENT.ClientSounds["br_013"] = {} end
table.insert(ENT.ClientSounds["br_013"], { "brake013", function(ent, _, var) return "br_013" end, 0.7, 1, 50, 1e3,
  Angle(-90, 0, 0) })
if not ENT.ClientSounds["br_334"] then ENT.ClientSounds["br_334"] = {} end
table.insert(ENT.ClientSounds["br_334"],
  { "brake334", function(ent, _, var) return "br_334_" .. var end, 1, 1, 50, 1e3, Angle(-90, 0, 0) })



ENT.ClientProps["PB"] = {
  model = "models/metrostroi_train/81-720/720_pb.mdl",
  pos = Vector(450, 18, -37),
  ang = Angle(0, -90, 8),
  hideseat = 0.2,
}
if not ENT.ClientSounds["PB"] then ENT.ClientSounds["PB"] = {} end
table.insert(ENT.ClientSounds["PB"],
  { "PB", function(ent, var) return var > 0 and "pb_on" or "pb_off" end, 1, 1, 50, 1e3, Angle(-90, 0, 0) })


ENT.ClientProps["train_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(452.9,-7.4,-1.4),
    ang = Angle(-63.75,2,0),
    hideseat = 0.2,
}
ENT.ClientProps["brake_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_tm.mdl",
    pos = Vector(452.9,-7.4,-1.4),
    ang = Angle(-63.75,2,0),
    hideseat = 0.2,
}
ENT.ClientProps["brake_cylinder"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(453.2,-13.3,-1.4),
    ang = Angle(-63.75,0,0),
    hideseat = 0.2,
}
ENT.ClientProps["ampermeter"] = {
  model = "models/metrostroi/81-717/volt_arrow.mdl",
  pos = Vector(452.269592, -30.540430, 16.922098),
  ang = Angle(90.500000, 0.000000, 40.000000),
  hideseat = 0.2,
}
ENT.ClientProps["voltmeter"] = {
  model = "models/metrostroi/81-717/volt_arrow.mdl",
  pos = Vector(452.246277, -30.519978, 12.287716),
  ang = Angle(90.500000, 0.000000, 40.000000),
  hideseat = 0.2,
}
ENT.ButtonMap["HVMeters"] = {
  pos = Vector(453.3, -28.7, 20.1),
  ang = Angle(0, -130, 90),
  width = 68,
  height = 138,
  scale = 0.0625,

  buttons = {
    { ID = "!EnginesCurrent", x = 0, y = 0, w = 68, h = 64, tooltip = "Traction motor current (A)" },
    { ID = "!HighVoltage", x = 0, y = 74, w = 68, h = 64, tooltip = "Traction motor voltage (kV)" },
  }
}
ENT.ClientProps["volt1"] = {
  model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
  pos = Vector(450.23, 22.75, -1.25),
  ang = Angle(-65,3,0),
  hideseat = 0.2,
}


ENT.ClientProps["bortlamps1"] = {
  model = "models/metrostroi_train/81-717/bort_lamps_body.mdl",
  pos = Vector(-52, 67, 45.5),
  ang = Angle(0, 0, 0),
  hide = 2,
}
ENT.ClientProps["bortlamp1_w"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
  pos = ENT.ClientProps.bortlamps1.pos + Vector(0, 0.9, 3.25),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp1_g"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
  pos = ENT.ClientProps.bortlamps1.pos + Vector(0, 0.9, -0.1),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp1_y"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
  pos = ENT.ClientProps.bortlamps1.pos + Vector(0, 0.9, -3.3),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamps2"] = {
  model = "models/metrostroi_train/81-717/bort_lamps_body.mdl",
  pos = Vector(39, -67, 45.5),
  ang = Angle(0, 180, 0),
  hide = 2,
}
ENT.ClientProps["bortlamp2_w"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
  pos = ENT.ClientProps.bortlamps2.pos + Vector(0, -0.85, 3.2),
  ang = Angle(0, 180, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp2_g"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
  pos = ENT.ClientProps.bortlamps2.pos + Vector(0, -0.85, -0.1),
  ang = Angle(0, 180, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp2_y"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
  pos = ENT.ClientProps.bortlamps2.pos + Vector(0, -0.85, -3.35),
  ang = Angle(0, 180, 0),
  nohide = true,
}
---[[
ENT.ClientProps["bortlamps3"] = {
  model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
  pos = Vector(0, 67, 53.5),
  ang = Angle(90, 0, 0),
  hide = 2,
}
ENT.ClientProps["bortlamp3_w"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
  pos = ENT.ClientProps.bortlamps3.pos + Vector(3.28, 0.85, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp3_g"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
  pos = ENT.ClientProps.bortlamps3.pos + Vector(-0.06, 0.85, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp3_y"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
  pos = ENT.ClientProps.bortlamps3.pos + Vector(-3.35, 0.85, 0),
  ang = Angle(0, 0, 0),
  nohide = true,
}
ENT.ClientProps["bortlamps4"] = {
  model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
  pos = Vector(0, -67, 53.5),
  ang = Angle(90, 180, 0),
  hide = 2,
}
ENT.ClientProps["bortlamp4_w"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
  pos = ENT.ClientProps.bortlamps4.pos + Vector(-3.28, -0.85, 0),
  ang = Angle(0, 180, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp4_g"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
  pos = ENT.ClientProps.bortlamps4.pos + Vector(0.06, -0.85, 0),
  ang = Angle(0, 180, 0),
  nohide = true,
}
ENT.ClientProps["bortlamp4_y"] = {
  model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
  pos = ENT.ClientProps.bortlamps4.pos + Vector(3.35, -0.85, 0),
  ang = Angle(0, 180, 0),
  nohide = true,
} --]]
--------------------------------------------------------------------------------
-- Add doors
--[[ local function GetDoorPosition(i,k,j)
    if j == 0
    then return Vector(338.0-230.1*i+(1-k)*0.8,-65*(1-2*k),0.761)
    else return Vector(338.2-230.1*i+(1-k)*0.8,-65*(1-2*k),0.761)
    end
end
for i=0,3 do
    for k=0,1 do
        ENT.ClientProps["door"..i.."x"..k.."a"] = {
            model = "models/metrostroi_train/81-717/door_right_spb.mdl",
            pos = GetDoorPosition(i,k,0),
            ang = Angle(0,90 +180*k,0),
            hide = 2,
        }
        ENT.ClientProps["door"..i.."x"..k.."b"] = {
            model = "models/metrostroi_train/81-717/door_left_spb.mdl",
            pos = GetDoorPosition(i,k,1),
            ang = Angle(0,90 +180*k,0),
            hide = 2,
        }
    end
end--]]
ENT.ClientProps["door0x1"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos1.mdl",
    pos = Vector(338.445,65.164,0.807),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door1x1"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos2.mdl",
    pos = Vector(108.324,65.164,0.807),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door2x1"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos3.mdl",
    pos = Vector(-122.182+0.4,65.164,0.807),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door3x1"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos4.mdl",
    pos = Vector(-351.531,65.164,0.807),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door0x0"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos4.mdl",
    pos = Vector(338.445,-65.164,0.807),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door1x0"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos3.mdl",
    pos = Vector(108.324,-65.164,0.807),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door2x0"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos2.mdl",
    pos = Vector(-122.182+0.6,-65.164,0.807),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door3x0"] = {
    model = "models/metrostroi_train/81-718/81-718_doors_pos1.mdl",
    pos = Vector(-351.531,-65.164,0.807),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["Lamp_RTM1"] = {
  model = "models/metrostroi_train/81-717/rtmlamp.mdl",
  pos = Vector(448.35,-33.95,-3.9),
    ang = Angle(0,-35,0),
    hideseat = 0.2,
}
ENT.ClientProps["Lamps_cab1"] = {
  model = "models/metrostroi_train/81-717/lamps/lamp_cabine1.mdl",
  pos = Vector(0.25, 0, -0.65),
  ang = Angle(0, 0, 0),
  hideseat = 0.9,
}
ENT.ClientProps["Lamps_cab2"] = {
  model = "models/metrostroi_train/81-717/lamps/lamp_cabine2.mdl",
  pos = Vector(0, 0, -0.75),
  ang = Angle(0, 0, 0),
  hideseat = 0.9,
}
ENT.ClientProps["Lamps2_cab1"] = {
  model = "models/metrostroi_train/81-717/lamps/lamp_cabine1.mdl",
  pos = Vector(0.5, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 0.9,
}
ENT.ClientProps["Lamps2_cab2"] = {
  model = "models/metrostroi_train/81-717/lamps/lamp_cabine2.mdl",
  pos = Vector(0, 0, 0),
  ang = Angle(0, 0, 0),
  hideseat = 0.9,
}
local xpos = {
    -417.6,
    -354.2,
    -285.5,
    -236.0,
    -186.6,
    -123,
    -55.62,
    -11.79+5.7,
    46.24-2.8,
    104.27+2.65,
    162.30+12.25,
    220.33+3.8,
    278.36-4.9,
    336.3,
}
for i = 0,27 do
    ENT.ClientProps["lamp1_"..i+1] = {
        model = "models/metrostroi_train/81-717/lamps/lamp_typ2.mdl",
        pos = Vector(xpos[math.floor(i/2)+1], 29.7-(i%2)*59.4, 63.3),
        ang = Angle(0,0,-8+(i%2)*16),
        hideseat = 1.1,
    }
end


ENT.Lights = {
  -- Headlight glow
  [1] = { "headlight", Vector(460, 0, -40), Angle(0, 0, 0), Color(216, 161, 92), farz = 5144, brightness = 4, fov = 100,
    texture = "models/metrostroi_train/equipment/headlight", shadows = 1, headlight = true },
  [2] = { "headlight", Vector(460, 0, 50), Angle(-20, 0, 0), Color(255, 0, 0), fov = 160, brightness = 0.3, farz = 450,
    texture = "models/metrostroi_train/equipment/headlight2", shadows = 0, backlight = true },

  [3] = { "headlight", Vector(365, -9, 50), Angle(50, 40, -0), Color(206, 135, 80), hfov = 80, vfov = 80, farz = 100,
    brightness = 6, shadows = 1 },
  [4] = { "headlight", Vector(365, -51, 50), Angle(50, 40, -0), Color(206, 135, 80), hfov = 80, vfov = 80, farz = 100,
    brightness = 6, shadows = 1 },

  -- Manometers
  [40] = { "headlight", Vector(452.9,-7.5,0), Angle(45,0.000000,0.000000),
    Color(75, 255, 75), farz = 8, nearz = 2, shadows = 1, brightness = 1, fov = 155 },
  [41] = { "headlight", Vector(452.9,-13,0),Angle(45,0.000000,0.000000),
     Color(75, 255, 75), farz = 8, nearz = 2, shadows = 1, brightness = 1, fov = 150 },
  -- Battery
  [42] = { "headlight", Vector(450, 22.75, -1.5), Angle(-90.000000,0,0),
    Color(125, 255, 25), farz = 8, nearz = 2, shadows = 0, brightness = 1.5, fov = 120 },
  -- Speed
  [43] = { "headlight", Vector(456.5, -26.25, 23), Angle(-90.000000,-5.000000,-25.100000), Color(125, 255, 25), farz = 8,
    nearz = 2, shadows = 0, brightness = 1.5, fov = 120 },
  -- Voltmeter
  [44] = { "headlight", Vector(450.3, -32.306019, 13.236823), Angle(-18.000000, 25.541767, -90.600349),
    Color(75, 255, 75), farz = 10, nearz = 2, shadows = 1, brightness = 1, fov = 100 },
  [45] = { "headlight", Vector(450.3, -32.306019, 18.236823), Angle(-12.000000, 25.541767, -90.600349),
    Color(75, 255, 75), farz = 10, nearz = 2, shadows = 1, brightness = 1, fov = 100 },
}

function ENT:Initialize()
  self.BaseClass.Initialize(self)
  --self.Train:SetPackedRatio("EmergencyValve_dPdT",leak)
  --self.Train:SetPackedRatio("EmergencyValveEPK_dPdT",leak)
  --self.Train:SetPackedRatio("EmergencyBrakeValve_dPdT",leak)
  self.ASNP = self:CreateRT("717ASNP", 512, 128)
  self.LeftMirror = self:CreateRT("LeftMirror", 128, 256)
  self.RightMirror = self:CreateRT("RightMirror", 128, 256)

  self.CraneRamp = 0
  self.CraneLRamp = 0
  self.CraneRRamp = 0
  self.ReleasedPdT = 0
  self.EmergencyValveRamp = 0
  self.EmergencyValveEPKRamp = 0
  self.EmergencyBrakeValveRamp = 0
  self.FrontLeak = 0
  self.RearLeak = 0
  self.VentCab = 0
  self.VentRand = {}
    self.VentState = {}
    self.VentVol = {}
    for i=1,7 do
        self.VentRand[i] = math.Rand(0.5,2)
        self.VentState[i] = 0
        self.VentVol[i] = 0
    end
end

function ENT:UpdateWagonNumber()
  local count = math.max(3, math.ceil(math.log10(self.WagonNumber + 1)))
  for i = 0, 3 do
    self:ShowHide("TrainNumberL" .. i, i < count)
    self:ShowHide("TrainNumberR" .. i, i < count)
    if i < count and self.WagonNumber then
      local leftNum, rightNum = self.ClientEnts["TrainNumberL" .. i], self.ClientEnts["TrainNumberR" .. i]
      local num = math.floor(self.WagonNumber % (10 ^ (i + 1)) / 10 ^ i)
      if IsValid(leftNum) then
        leftNum:SetPos(self:LocalToWorld(Vector(275 + 16 + i * 6.6 - count * 6.6 / 2, 67.4, 32.8)))
        leftNum:SetSkin(num)
      end
      if IsValid(rightNum) then
        rightNum:SetPos(self:LocalToWorld(Vector(-295 + 16 - i * 6.6 - count * 6.6 / 2, -67.4, 32.8)))
        rightNum:SetSkin(num)
      end
    end
  end
end

local Cpos = {
  0, 0.2, 0.4, 0.5, 0.6, 0.8, 1
}
--------------------------------------------------------------------------------
function ENT:Think()
  self.BaseClass.Think(self)
  if not self.RenderClientEnts or self.CreatingCSEnts then
    self.RKTimer = nil
    self.OldBPSNType = nil

    self.RingType = nil
    return
  end

  if self.Scheme ~= self:GetNW2Int("Scheme", 1) then
    self.PassSchemesDone = false
    self.Scheme = self:GetNW2Int("Scheme", 1)
  end
  if self.RelaysConfig ~= self:GetNW2String("RelaysConfig") then
    self.RelaysConfig = self:GetNW2String("RelaysConfig")
    self:SetRelays()
  end
  if not self.PassSchemesDone and IsValid(self.ClientEnts.schemes) then
    local scheme = Metrostroi.Skins["717_new_schemes"] and Metrostroi.Skins["717_new_schemes"][self.Scheme]
    self.ClientEnts.schemes:SetSubMaterial(1, scheme and scheme[1])
    self.PassSchemesDone = true
  end

	--gauges
  self:SetLightPower(40, self:GetPackedBool("PanelLights"))
  self:SetLightPower(41, self:GetPackedBool("PanelLights"))
	--battery
	--HV meters
  self:SetLightPower(44, self:GetPackedBool("PanelLights"))
  self:SetLightPower(45, self:GetPackedBool("PanelLights"))

  local HL1 = self:Animate("Headlights1", self:GetPackedBool("Headlights1") and 1 or 0, 0, 1, 6, false)
  local HL2 = self:Animate("Headlights2", self:GetPackedBool("Headlights2") and 1 or 0, 0, 1, 6, false)
  local RL = self:Animate("RedLights_a", self:GetPackedBool("RedLights") and 1 or 0, 0, 1, 6, false)
  local headlight = HL1 * 0.6 + HL2 * 0.4
  self:SetLightPower(1, headlight > 0, headlight)
  self:SetLightPower(2, self:GetPackedBool("RedLights"), RL)


  local newBortlamps = self:GetNW2Bool("NewBortlamps")
  local Bortlamp_w = self:Animate("Bortlamp_w", self:GetPackedBool("DoorsW") and 1 or 0, 0, 1, 16, false)
  local Bortlamp_g = self:Animate("Bortlamp_g", self:GetPackedBool("GRP") and 1 or 0, 0, 1, 16, false)
  local Bortlamp_y = self:Animate("Bortlamp_y", self:GetPackedBool("BrW") and 1 or 0, 0, 1, 16, false)
  if newBortlamps then
    self:ShowHide("bortlamps1", true)
    self:ShowHide("bortlamps2", true)
    self:ShowHide("bortlamps3", false)
    self:ShowHide("bortlamps4", false)
    self:ShowHideSmooth("bortlamp1_w", Bortlamp_w)
    self:ShowHideSmooth("bortlamp1_g", Bortlamp_g)
    self:ShowHideSmooth("bortlamp1_y", Bortlamp_y)
    self:ShowHideSmooth("bortlamp2_w", Bortlamp_w)
    self:ShowHideSmooth("bortlamp2_g", Bortlamp_g)
    self:ShowHideSmooth("bortlamp2_y", Bortlamp_y)
    self:ShowHideSmooth("bortlamp3_w", 0)
    self:ShowHideSmooth("bortlamp3_g", 0)
    self:ShowHideSmooth("bortlamp3_y", 0)
    self:ShowHideSmooth("bortlamp4_w", 0)
    self:ShowHideSmooth("bortlamp4_g", 0)
    self:ShowHideSmooth("bortlamp4_y", 0)
  else
    self:ShowHide("bortlamps1", false)
    self:ShowHide("bortlamps2", false)
    self:ShowHide("bortlamps3", true)
    self:ShowHide("bortlamps4", true)
    self:ShowHideSmooth("bortlamp1_w", 0)
    self:ShowHideSmooth("bortlamp1_g", 0)
    self:ShowHideSmooth("bortlamp1_y", 0)
    self:ShowHideSmooth("bortlamp2_w", 0)
    self:ShowHideSmooth("bortlamp2_g", 0)
    self:ShowHideSmooth("bortlamp2_y", 0)
    self:ShowHideSmooth("bortlamp3_w", Bortlamp_w)
    self:ShowHideSmooth("bortlamp3_g", Bortlamp_g)
    self:ShowHideSmooth("bortlamp3_y", Bortlamp_y)
    self:ShowHideSmooth("bortlamp4_w", Bortlamp_w)
    self:ShowHideSmooth("bortlamp4_g", Bortlamp_g)
    self:ShowHideSmooth("bortlamp4_y", Bortlamp_y)
  end

  self:Animate("Controller", self:GetPackedRatio("ControllerPosition"), 0.3, 0.02, 2, false)

  self:Animate("reverser", self:GetNW2Int("ReverserPosition") / 2, 0, 0.27, 4, false)
  self:Animate("krureverser", self:GetNW2Int("KRUPosition") / 2, 0.53, 0.95, 4, false)
  self:ShowHide("reverser", self:GetNW2Int("WrenchMode", 0) == 1)
  self:ShowHide("krureverser", self:GetNW2Int("WrenchMode", 0) == 2)

  self:ShowHide("brake013", self:GetPackedBool("Crane013"))
  self:ShowHide("brake_valve_013", self:GetPackedBool("Crane013"))
  self:ShowHide("valve_disconnect", self:GetPackedBool("Crane013"))
  self:ShowHide("EPV_disconnect", self:GetPackedBool("Crane013"))
  self:HidePanel("DriverValveDisconnect", not self:GetPackedBool("Crane013"))

  self:ShowHide("brake334", not self:GetPackedBool("Crane013"))
  self:ShowHide("brake_valve_334", not self:GetPackedBool("Crane013"))
  self:ShowHide("brake_disconnect", not self:GetPackedBool("Crane013"))
  self:ShowHide("EPK_disconnect", not self:GetPackedBool("Crane013"))
  self:ShowHide("train_disconnect", not self:GetPackedBool("Crane013"))
  self:HidePanel("DriverValveBLDisconnect", self:GetPackedBool("Crane013"))
  self:HidePanel("DriverValveTLDisconnect", self:GetPackedBool("Crane013"))

  self:Animate("brake334", self:GetPackedRatio("CranePosition") / 5, 0.35, 0.65, 256, 24)
  self:Animate("brake013", Cpos[self:GetPackedRatio("CranePosition")] or 0, 0.03, 0.458, 256, 24)
  self:Animate("speed",self:GetPackedRatio("Speed"),0.337,0.663,60,3)

  local ARSType = self:GetNW2Int("ARSType", 1)
  if self.KVType ~= self:GetNW2Int("KVType", 1) then
    self:RemoveCSEnt("Controller")
    self.KVType = self:GetNW2Int("KVType", 1)
  end
	--Speedometer
  self:SetLightPower(43, self:GetPackedBool("PanelLights"))
  local speed = self:GetPackedRatio("Speed") * 100.0

  local handrails = self:GetNW2Bool("HandRails")
  local dot5 = self:GetNW2Bool("Dot5")
  local lvz = self:GetNW2Bool("LVZ")
  local newSeats = self:GetNW2Bool("NewSeats")
  local mask = self:GetNW2Bool("Mask")
  local mask22 = self:GetNW2Bool("Mask22")
  self:ShowHide("cabine_mvm", not dot5)
  self:ShowHide("destination", not dot5)
  self:HidePanel("Battery_C", dot5)
  self:HidePanel("AV_C", dot5)
  self:HidePanel("VBD_C", dot5)
  self:HidePanel("HelperPanel_C", dot5)
  self:HidePanel("BZOS_C", dot5)
  self:HidePanel("CabVent_C", dot5)
  self:ShowHide("cabine_lvz", dot5)
  self:ShowHide("destination1", dot5)
  self:HidePanel("Battery_R", not dot5)
  self:HidePanel("AV_R", not dot5)
  self:HidePanel("VBD_R", not dot5)
  self:HidePanel("CabVent_R", not dot5)
  self:HidePanel("HelperPanel_R", not dot5)
  self:HidePanel("BZOS_R", not dot5)
  self.LastStation.EntityName = dot5 and "destination1" or "destination"
  
  local lamps_cab2 = self:Animate("lamps_cab2", self:GetPackedBool("EqLights") and 1 or 0, 0, 1, 5, false)
  local lamps_cab1 = self:Animate("lamps_cab1", self:GetPackedBool("CabLights") and 1 or 0, 0, 1, 5, false)
  self:ShowHideSmooth("Lamps_cab2", dot5 and 0 or lamps_cab2)
  self:ShowHideSmooth("Lamps_cab1", dot5 and 0 or lamps_cab1)
  self:ShowHideSmooth("Lamps2_cab2", dot5 and lamps_cab2 or 0)
  self:ShowHideSmooth("Lamps2_cab1", dot5 and lamps_cab1 or 0)

  local lamps_rtm = self:Animate("lamps_rtm", self:GetPackedBool("VPR") and 1 or 0, 0, 1, 8, false)
  self:SetSoundState("vpr", lamps_rtm > 0 and 1 or 0, 1)

  self:ShowHideSmooth("Lamp_RTM1", not dot5 and lamps_rtm or 0)

  self:ShowHide("mask222_mvm", not mask and not lvz and not mask22)
  self:ShowHide("mask222_lvz", not mask and lvz and not mask22)
  self:ShowHide("mask141_mvm", mask and not mask22)
  self:ShowHide("mask22_mvm", mask22 and not mask)
  --self:ShowHide("mask141_lvz",mask and lvz)
  self:ShowHide("1:KVTSet", not lvz)
  self:ShowHide("1:KVTRSet", not lvz)
  self:ShowHide("2:KVTSet", lvz)
  self:ShowHide("2:KVTRSet", lvz)
    self:ShowHideSmooth("RedLights", not mask and RL or 0)
  self:ShowHideSmooth("RedLights2", mask and RL or 0)
  self:ShowHideSmooth("Headlights222_1", (not mask and not mask22) and HL1 or 0)
  self:ShowHideSmooth("Headlights222_2", (not mask and not mask22) and HL2 or 0)
  self:ShowHideSmooth("Headlights141_1", (mask and not mask22) and HL1 or 0)
  self:ShowHideSmooth("Headlights141_2", (mask and not mask22) and HL2 or 0)
  self:ShowHideSmooth("Headlights22_1", (mask22 and not mask) and HL1 or 0)
  self:ShowHideSmooth("Headlights22_2", (mask22 and not mask) and HL2 or 0)
  self:ShowHideSmooth("panel1_04", self:GetPackedBool("AR04") and 1 or 0)
  self:ShowHideSmooth("panel1_0", self:GetPackedBool("AR0") and 1 or 0)
  self:ShowHideSmooth("panel1_40", self:GetPackedBool("AR40") and 1 or 0)
  self:ShowHideSmooth("panel1_60", self:GetPackedBool("AR60") and 1 or 0)
  self:ShowHideSmooth("panel1_70", self:GetPackedBool("AR70") and 1 or 0)
  self:ShowHideSmooth("panel1_80", self:GetPackedBool("AR80") and 1 or 0)
  self:ShowHide("seats_old", not newSeats)
  self:ShowHide("seats_old_cap", not newSeats)
  self:ShowHide("seats_new", newSeats)
  self:ShowHide("seats_new_cap", newSeats)
  self:Animate("PB", self:GetPackedBool("PB") and 1 or 0, 0, 0.2, 12, false)
  self:Animate("UAVALever", self:GetPackedBool("UAVA") and 1 or 0, 0, 0.6, 128, 3, false)
  self:Animate("EPK_disconnect", self:GetPackedBool("EPK") and 1 or 0, 0.25, 0, 4, false)
  self:Animate("EPV_disconnect", self:GetPackedBool("EPK") and 1 or 0, 0.25, 0, 4, false)
  self:Animate("brake_disconnect", self:GetPackedBool("DriverValveBLDisconnect") and 1 or 0, 0.25, 0, 4, false)
  self:Animate("train_disconnect", self:GetPackedBool("DriverValveTLDisconnect") and 1 or 0, 0.25, 0, 4, false)
  self:Animate("valve_disconnect", self:GetPackedBool("DriverValveDisconnect") and 1 or 0, 0.25, 0, 4, false)
  self:Animate("stopkran", self:GetPackedBool("EmergencyBrakeValve") and 0 or 1, 0.25, 0, 128, 3, false)

  local c013 = self:GetNW2Int("Crane", 1) == 2
  self:ShowHide("brake_valve_334", not c013)
  self:ShowHide("brake334", not c013)
  self:ShowHide("brake_disconnect", not c013)
  self:ShowHide("train_disconnect", not c013)
  self:HidePanel("DriverValveBLDisconnect", c013)
  self:HidePanel("DriverValveTLDisconnect", c013)
  self:HidePanel("EPKDisconnect", c013)
  self:ShowHide("EPK_disconnect", not c013)
  self:ShowHide("brake_valve_013", c013)
  self:ShowHide("brake013", c013)
  self:ShowHide("valve_disconnect", c013)
  self:ShowHide("EPV_disconnect", c013)
  self:HidePanel("EPVDisconnect", not c013)
  self:HidePanel("DriverValveDisconnect", not c013)

  self:Animate("brake_line", self:GetPackedRatio("BLPressure"), 0.143, 0.88, 256, 2) --,0.01)
  self:Animate("train_line", self:GetPackedRatio("TLPressure"), 0.143, 0.88, 256, 0) --,0.01)
  self:Animate("brake_cylinder", self:GetPackedRatio("BCPressure"), 0.134, 0.874, 256, 0) --,0.03)

  self:Animate("voltmeter", self:GetPackedRatio("EnginesVoltage"), 0.396, 0.658, 256, 0.2, false)
  self:Animate("volt1", self:GetPackedRatio("BatteryVoltage"), 0.625, 0.376, 256, 0.2, false)
  self:Animate("ampermeter", self:GetPackedRatio("EnginesCurrent"), 0.39, 0.655, 256, 0.2, false)

  local otsek1 = self:Animate("door_otsek1", self:GetPackedBool("OtsekDoor1") and 1 or 0, 0, 0.25, 4, 0.5)
  local otsek2 = self:Animate("door_otsek2", self:GetPackedBool("OtsekDoor2") and 1 or 0, 0, 0.25, 4, 0.5)
  self:HidePanel("AV_S", not dot5 or otsek2 <= 0)
  local door1 = self:Animate("door1", self:GetPackedBool("RearDoor") and 1 or 0, 0, 0.25, 4, 0.5)
  local door2 = self:Animate("door2", self:GetPackedBool("PassengerDoor") and 1 or 0, 1, 0.8, 4, 0.5)
  local door3 = self:Animate("door3", self:GetPackedBool("CabinDoor") and 1 or 0, 0, 0.25, 4, 0.5)
  if self.Door1 ~= (door1 > 0) then
    self.Door1 = door1 > 0
    self:PlayOnce("door1", "bass", self.Door1 and 1 or 0)
  end
  if self.Door2 ~= (door2 < 1) then
    self.Door2 = door2 < 1
    self:PlayOnce("door2", "bass", self.Door2 and 1 or 0)
  end
  if self.Door3 ~= (door3 > 0) then
    self.Door3 = door3 > 0
    self:PlayOnce("door3", "bass", self.Door3 and 1 or 0)
  end
  if self.Otsek1 ~= (otsek1 > 0) then
    self.Otsek1 = otsek1 > 0
    if not self.Otsek1 then
      self:PlayOnce("door_otsek1", "bass", 1)
    end
  end
  if self.Otsek2 ~= (otsek2 > 0) then
    self.Otsek2 = otsek2 > 0
    if not self.Otsek2 then
      self:PlayOnce("door_otsek2", "bass", 1)
    end
  end
  self:SetLightPower(3, self.Otsek1 and self:GetPackedBool("EqLights"))
  self:SetLightPower(4, self.Otsek2 and self:GetPackedBool("EqLights"))

  for i = 1,28 do
        local colV = self:GetNW2Vector("lamp"..i)
        local col = Color(colV.x,colV.y,colV.z)
        self:ShowHideSmooth("lamp1_"..i,self:Animate("Lamp1_"..i,self:GetPackedBool("lightsActive"..i) and 1 or 0,0,1,6,false),col)
  end

  self:Animate("FrontBrake", self:GetNW2Bool("FbI") and 0 or 1, 0, 1, 3, false)
  self:Animate("FrontTrain", self:GetNW2Bool("FtI") and 1 or 0, 0, 1, 3, false)
  self:Animate("RearBrake", self:GetNW2Bool("RbI") and 0 or 1, 0, 1, 3, false)
  self:Animate("RearTrain", self:GetNW2Bool("RtI") and 1 or 0, 0, 1, 3, false)

  -- Main switch
  if self.LastGVValue ~= self:GetPackedBool("GV") then
    self.ResetTime = CurTime() + 1.5
    self.LastGVValue = self:GetPackedBool("GV")
  end
  self:Animate("gv_wrench", self.LastGVValue and 1 or 0, 0.5, 0.9, 128, 1, false)
  self:ShowHideSmooth("gv_wrench", CurTime() < self.ResetTime and 1 or 0.1)

  --self:InitializeSounds()
  if not self.DoorStates then self.DoorStates = {} end
  if not self.DoorLoopStates then self.DoorLoopStates = {} end
  for i = 0, 3 do
    for k = 0, 1 do
      local st = k == 1 and "DoorL" or "DoorR"
      local doorstate = self:GetPackedBool(st)
      local id, sid = st .. (i + 1), "door" .. i .. "x" .. k
      local state = self:GetPackedRatio(id)
      if (state ~= 1 and state ~= 0) ~= self.DoorStates[id] then
        if doorstate and state < 1 or not doorstate and state > 0 then
        else
          if state > 0 then
            self:PlayOnce(sid .. "o", "", 1, math.Rand(0.8, 1.2))
          else
            self:PlayOnce(sid .. "c", "", 1, math.Rand(0.8, 1.2))
          end
        end
        self.DoorStates[id] = (state ~= 1 and state ~= 0)
      end
      if (state ~= 1 and state ~= 0) then
        self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) + 2 * self.DeltaTime, 0, 1)
      else
        self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) - 6 * self.DeltaTime, 0, 1)
      end
      self:SetSoundState(sid .. "r", self.DoorLoopStates[id], 0.8 + self.DoorLoopStates[id] * 0.2)
      local n_l = "door" .. i .. "x" .. k --.."a"
      --local n_r = "door"..i.."x"..k.."b"
      local dlo = 1
      if self.Anims[n_l] then
        dlo = math.abs(state - (self.Anims[n_l] and self.Anims[n_l].oldival or 0))
        if dlo <= 0 and self.Anims[n_l].oldspeed then dlo = self.Anims[n_l].oldspeed / 14 end
      end

      self:Animate(n_l, state, 0, 0.95, dlo * 14, false) --0.8 + (-0.2+0.4*math.random()),0)
      --self:Animate(n_r,state,0,1,dlo*14,false)--0.8 + (-0.2+0.4*math.random()),0)
    end
  end

  local dT = self.DeltaTime
  local rollingi = math.min(1, self.TunnelCoeff + math.Clamp((self.StreetCoeff - 0.82) / 0.3, 0, 1))
  local rollings = math.max(self.TunnelCoeff * 0.6, self.StreetCoeff)
  local speed = self:GetPackedRatio("Speed") * 100.0
  local rol5 = math.Clamp(speed / 1, 0, 1) * (1 - math.Clamp((speed - 3) / 8, 0, 1))
  local rol10 = math.Clamp(speed / 12, 0, 1) * (1 - math.Clamp((speed - 25) / 8, 0, 1))
  local rol40p = Lerp((speed - 25) / 12, 0.6, 1)
  local rol40 = math.Clamp((speed - 23) / 8, 0, 1) * (1 - math.Clamp((speed - 55) / 8, 0, 1))
  local rol40p = Lerp((speed - 23) / 50, 0.6, 1)
  local rol70 = math.Clamp((speed - 50) / 8, 0, 1) * (1 - math.Clamp((speed - 72) / 5, 0, 1))
  local rol70p = Lerp(0.8 + (speed - 65) / 25 * 0.2, 0.8, 1.2)
  local rol80 = math.Clamp((speed - 70) / 5, 0, 1)
  local rol80p = Lerp(0.8 + (speed - 72) / 15 * 0.2, 0.8, 1.2)
  self:SetSoundState("rolling_5", math.min(1, rollingi * (1 - rollings) + rollings * 0.8) * rol5, 1)
  self:SetSoundState("rolling_10", rollingi * rol10, 1)
  self:SetSoundState("rolling_40", rollingi * rol40, rol40p)
  self:SetSoundState("rolling_70", rollingi * rol70, rol70p)
  self:SetSoundState("rolling_80", rollingi * rol80, rol80p)

  local rol10 = math.Clamp(speed / 15, 0, 1) * (1 - math.Clamp((speed - 18) / 35, 0, 1))
  local rol10p = Lerp((speed - 15) / 14, 0.6, 0.78)
  local rol40 = math.Clamp((speed - 18) / 35, 0, 1) * (1 - math.Clamp((speed - 55) / 40, 0, 1))
  local rol40p = Lerp((speed - 15) / 66, 0.6, 1.3)
  local rol70 = math.Clamp((speed - 55) / 20, 0, 1) --*(1-math.Clamp((speed-72)/5,0,1))
  local rol70p = Lerp((speed - 55) / 27, 0.78, 1.15)
  --local rol80 = math.Clamp((speed-70)/5,0,1)
  --local rol80p = Lerp(0.8+(speed-72)/15*0.2,0.8,1.2)
  self:SetSoundState("rolling_low", rol10 * rollings, rol10p) --15
  self:SetSoundState("rolling_medium2", rol40 * rollings, rol40p) --57
  --self:SetSoundState("rolling_medium1",0 or rol40*rollings,rol40p) --57
  self:SetSoundState("rolling_high2", rol70 * rollings, rol70p) --70

  self.ReleasedPdT = math.Clamp(self.ReleasedPdT +
    2 * (-self:GetPackedRatio("BrakeCylinderPressure_dPdT", 0) - self.ReleasedPdT) * dT, 0, 1)
  local release1 = math.Clamp((self.ReleasedPdT - 0.1) / 0.8, 0, 1) ^ 2
  self:SetSoundState("release1", release1, 1)
  self:SetSoundState("release2", (math.Clamp(0.3 - release1, 0, 0.3) / 0.3) * (release1 / 0.3), 1.0)
  self.FrontLeak = math.Clamp(self.FrontLeak + 10 * (-self:GetPackedRatio("FrontLeak") - self.FrontLeak) * dT, 0, 1)
  self.RearLeak = math.Clamp(self.RearLeak + 10 * (-self:GetPackedRatio("RearLeak") - self.RearLeak) * dT, 0, 1)
  self:SetSoundState("front_isolation", self.FrontLeak, 0.9 + 0.2 * self.FrontLeak)
  self:SetSoundState("rear_isolation", self.RearLeak, 0.9 + 0.2 * self.RearLeak)


  local ramp = self:GetPackedRatio("Crane_dPdT", 0)
  if c013 then
    if ramp > 0 then
      self.CraneRamp = self.CraneRamp + ((0.2 * ramp) - self.CraneRamp) * dT
    else
      self.CraneRamp = self.CraneRamp + ((0.9 * ramp) - self.CraneRamp) * dT
    end
    self.CraneRRamp = math.Clamp(self.CraneRRamp + 1.0 * ((1 * ramp) - self.CraneRRamp) * dT, 0, 1)
    self:SetSoundState("crane334_brake", 0, 1.0)
    self:SetSoundState("crane334_brake_reflection", 0, 1.0)
    self:SetSoundState("crane334_brake_slow", 0, 1.0)
    self:SetSoundState("crane334_release", 0, 1.0)
    self:SetSoundState("crane013_release", self.CraneRRamp ^ 1.5, 1.0)
    self:SetSoundState("crane013_brake", math.Clamp(-self.CraneRamp * 1.5 - 0.1, 0, 1) ^ 1.3, 1.0)
    local loudV = self:GetNW2Float("Crane013Loud", 0)
    if loudV > 0 then
      if ramp > 0 then
        self.CraneLRamp = self.CraneLRamp + (math.min(ramp, 0) - self.CraneLRamp) * dT * 0.5
      else
        self.CraneLRamp = self.CraneLRamp + (math.min(ramp, 0) - self.CraneLRamp) * dT * 1
      end
      self:SetSoundState("crane013_brake_l",
        (math.Clamp(-self.CraneRamp * 2.5 - 0.1, 0, 1) ^ 1.3) * (1 - math.Clamp((-self.CraneLRamp - loudV) * 3, 0, 1)),
        1.12 - math.Clamp((-self.CraneLRamp - 0.15) * 2, 0, 1) * 0.12)
    else
      self:SetSoundState("crane013_brake_l", 0, 1)
    end
    self:SetSoundState("crane013_brake2", math.Clamp(-self.CraneRamp * 1.5 - 0.95, 0, 1.5) ^ 2, 1.0)
  else
    self:SetSoundState("crane013_brake", 0, 1.0)
    self:SetSoundState("crane013_release", 0, 1.0)
    --self:SetSoundState("crane013_brake2",0,1.0)

    self.CraneRamp = math.Clamp(self.CraneRamp + 8.0 * ((1 * self:GetPackedRatio("Crane_dPdT", 0)) - self.CraneRamp) * dT
      , -1, 1)

    self:SetSoundState("crane334_brake_low", math.Clamp((-self.CraneRamp) * 2, 0, 1) ^ 2, 1)
    local high = math.Clamp(((-self.CraneRamp) - 0.5) / 0.5, 0, 1) ^ 1
    self:SetSoundState("crane334_brake_high", high, 1.0)
    self:SetSoundState("crane013_brake2", high * 2, 1.0)
    self:SetSoundState("crane334_brake_eq_high", --[[ math.Clamp(-self.CraneRamp*0,0,1)---]]
      math.Clamp(-self:GetPackedRatio("ReservoirPressure_dPdT") - 0.2, 0, 1) ^ 0.8 * 1, 1)
    self:SetSoundState("crane334_brake_eq_low", --[[ math.Clamp(-self.CraneRamp*0,0,1)---]]
      math.Clamp(-self:GetPackedRatio("ReservoirPressure_dPdT") - 0.4, 0, 1) ^ 0.8 * 1.3, 1)

    self:SetSoundState("crane334_release", math.Clamp(self.CraneRamp, 0, 1) ^ 2, 1.0)
  end
  local emergencyValveEPK = self:GetPackedRatio("EmergencyValveEPK_dPdT", 0)
  self.EmergencyValveEPKRamp = math.Clamp(self.EmergencyValveEPKRamp +
    1.0 * ((0.5 * emergencyValveEPK) - self.EmergencyValveEPKRamp) * dT, 0, 1)
  if self.EmergencyValveEPKRamp < 0.01 then self.EmergencyValveEPKRamp = 0 end
  self:SetSoundState("epk_brake", self.EmergencyValveEPKRamp, 1.0)

  --[[
    local emergencyBrakeValve = self:GetPackedRatio("EmergencyBrakeValve_dPdT", 0)
    self.EmergencyBrakeValveRamp = math.Clamp(self.EmergencyBrakeValveRamp + (emergencyBrakeValve-self.EmergencyBrakeValveRamp)*dT*8,0,1)
    --self:SetSoundState("valve_brake",self.EmergencyBrakeValveRamp,0.8+math.min(0.4,self.EmergencyBrakeValveRamp*0.8))
    local emerBrakeValve = self.EmergencyBrakeValveRamp
    self:SetSoundState("valve_brake_l",math.Clamp(emerBrakeValve/0.2,0,1),1)
    self:SetSoundState("valve_brake_m",math.Clamp((emerBrakeValve-0.2)/0.3,0,1),1)
    self:SetSoundState("valve_brake_h",math.Clamp((emerBrakeValve-0.5)/0.5,0,1),1)
--]]
  local emergencyBrakeValve = self:GetPackedRatio("EmergencyBrakeValve_dPdT", 0)
  self.EmergencyBrakeValveRamp = math.Clamp(self.EmergencyBrakeValveRamp +
    (emergencyBrakeValve - self.EmergencyBrakeValveRamp) * dT * 8, 0, 1)
  self:SetSoundState("valve_brake", self.EmergencyBrakeValveRamp, 0.8 + math.min(0.4, self.EmergencyBrakeValveRamp * 0.8))

  local emergencyValve = self:GetPackedRatio("EmergencyValve_dPdT", 0) ^ 0.4 * 1.2
  self.EmergencyValveRamp = math.Clamp(self.EmergencyValveRamp + (emergencyValve - self.EmergencyValveRamp) * dT * 16, 0
    , 1)
  local emer_brake = math.Clamp((self.EmergencyValveRamp - 0.9) / 0.05, 0, 1)
  local emer_brake2 = math.Clamp((self.EmergencyValveRamp - 0.2) / 0.4, 0, 1) *
      (1 - math.Clamp((self.EmergencyValveRamp - 0.9) / 0.1, 0, 1))
  self:SetSoundState("emer_brake", emer_brake, 1)
  self:SetSoundState("emer_brake2", emer_brake2, math.min(1, 0.8 + 0.2 * emer_brake2))
  --self:SetSoundState("emer_brake",self.EmergencyValveRamp*0.8,1)
  --self:SetSoundState("emer_brake",self.EmergencyValveRamp*0.8,1)
  -- Compressor
  self:SetSoundState("compressor", self:GetPackedBool("Compressor") and 0.6 or 0, 1)
  self:SetSoundState("compressor2", self:GetPackedBool("Compressor") and 0.8 or 0, 1)

  local vCstate = self:GetPackedRatio("M8") / 2
  if self.VentCab < vCstate then
    self.VentCab = math.min(1, self.VentCab + dT / 2.7)
  elseif self.VentCab > vCstate then
    self.VentCab = math.max(0, self.VentCab - dT / 2.7)
  end
  self:SetSoundState("vent_cabl", math.Clamp(self.VentCab * 2, 0, 1), 1)
  self:SetSoundState("vent_cabh", math.Clamp((self.VentCab - 0.5) * 2, 0, 1), 1)

  local v1state = self:GetPackedBool("M1_3")
  local v2state = self:GetPackedBool("M4_7")

  local ventSpeedAdd = math.Clamp(speed/30,0,1)
    for i=1,7 do
        local rand = self.VentRand[i]
        local vol = self.VentVol[i]
        local even = i%2 == 0
        local work = (even and v1state or not even and v2state)
	print(work)
        local target = math.min(1,(work and 1 or 0)+ventSpeedAdd*rand*0.4)*2
        if self.VentVol[i] < target then
            self.VentVol[i] = math.min(target,vol + dT/1.5*rand)
        elseif self.VentVol[i] > target then
            self.VentVol[i] = math.max(0,vol - dT/8*rand*(vol*0.3))
        end
        self.VentState[i] = (self.VentState[i] + 10*((self.VentVol[i]/2)^3)*dT)%1
        local vol1 = math.max(0,self.VentVol[i]-1)
        local vol2 = math.max(0,(self.VentVol[i-1] or self.VentVol[i+1])-1)
        self:SetSoundState("vent"..i,vol1*(0.7+vol2*0.3),0.5+0.5*vol1+math.Rand(-0.01,0.01))
        if IsValid(self.ClientEnts["vent"..i]) then
            self.ClientEnts["vent"..i]:SetPoseParameter("position",self.VentState[i])
        end
    end

  if self.RingType ~= self:GetNW2Int("RingType", 1) then
    self.RingType = self:GetNW2Int("RingType", 1)
    self:SetSoundState(self.RingName, 0, 0)

    self.RingPitch = 1
    self.RingVolume = 1
    if self.RingType == 1 then
      self.RingName = "ring2"
    elseif self.RingType == 2 then
      self.RingName = "ring3"
      self.RingVolume = 1.4
      self.RingPitch = 0.6
    elseif self.RingType == 3 then
      self.RingName = "ring3"
      self.RingVolume = 1.2
      self.RingPitch = 0.8
    elseif self.RingType == 4 then
      self.RingName = "ring3"
      self.RingPitch = 0.95
    elseif self.RingType == 5 then
      self.RingName = "ring"
      self.RingPitch = 0.8
    elseif self.RingType == 6 then
      self.RingName = "ring"
    elseif self.RingType == 7 then
      self.RingName = "ring4"
    elseif self.RingType == 8 then
      self.RingName = "ring5"
    elseif self.RingType == 9 then
      self.RingName = "ring6"
    end
    self.RingFade = 0
  end
  -- ARS/ringer alert
  local bzos = self.RingName == "ring" or self.RingName == "ring6" or self.RingName == "ring3" and RealTime() % 0.8 <
      0.35 or self.RingName ~= "ring3" and RealTime() % 0.5 > 0.25
  local ringstate = (self:GetPackedBool("Buzzer") or self:GetPackedBool("BuzzerBZOS") and bzos) and 1 or 0
  if 6 < self.RingType and self.RingType < 9 then
    self.RingFade = math.Clamp(self.RingFade +
      (ringstate - self.RingFade) * dT * (self:GetPackedBool("BuzzerBZOS") and 50 or 25), 0, 1)
    self:SetSoundState(self.RingName, self.RingFade * self.RingVolume, self.RingPitch)
  else
    self:SetSoundState(self.RingName, ringstate * self.RingVolume, self.RingPitch)
  end
  if self:GetPackedBool("RK") then self.RKTimer = CurTime() end
  self:SetSoundState("rk", (self.RKTimer and (CurTime() - self.RKTimer) < 0.2) and 0.7 or 0, 1)

  -- BPSN sound
  self.BPSNType = self:GetNW2Int("BPSNType", 13)
  if not self.OldBPSNType then self.OldBPSNType = self.BPSNType end
  if self.BPSNType ~= self.OldBPSNType then
    for i = 1, 12 do
      self:SetSoundState("bpsn" .. i, 0, 1.0)
    end
  end
  self.OldBPSNType = self.BPSNType
  if self.BPSNType < 13 then
    self:SetSoundState("bpsn" .. self.BPSNType, self:GetPackedBool("BPSN") and 1 or 0, 1) --FIXME громкость по другому
  end

  local cabspeaker = self:GetPackedBool("AnnCab")
  local work = self:GetPackedBool("AnnPlay")
  local buzz = self:GetPackedBool("AnnBuzz") and self:GetNW2Bool("AnnouncerBuzz")
  for k in ipairs(self.AnnouncerPositions) do
    self:SetSoundState("announcer_buzz" .. k, (buzz and (k ~= 1 and work or k == 1 and cabspeaker)) and 1 or 0, 1)
  end
  for k, v in ipairs(self.AnnouncerPositions) do
    if self.Sounds["announcer" .. k] and IsValid(self.Sounds["announcer" .. k]) then
      self.Sounds["announcer" .. k]:SetVolume((k ~= 1 and work or k == 1 and cabspeaker) and (v[3] or 1) or 0)
    end
  end
end

function ENT:Draw()
  self.BaseClass.Draw(self)
end

function ENT:DrawPost(special)
  --local dc = render.GetLightColor(self:LocalToWorld(Vector(460.0,0.0,5.0)))

  local distance = self:GetPos():Distance(LocalPlayer():GetPos())
  if distance > 1024 or special then return end

  self.RTMaterial:SetTexture("$basetexture", self.ASNP)
  self:DrawOnPanel("ASNPScreen", function(...)
    surface.SetMaterial(self.RTMaterial)
    surface.SetDrawColor(255, 255, 255)
    surface.DrawTexturedRectRotated(256, 64, 512, 128, 0)
  end)

  self:DrawOnPanel("AirDistributor", function()
    draw.DrawText(self:GetNW2Bool("AD") and "Air Distributor ON" or "Air Distributor OFF", "Trebuchet24", 0, 0,
      Color(0, 0, 0, 255))
  end)
end

function ENT:OnButtonPressed(button)
  if button == "PrevSign" then
    self.InfoTableTimeout = CurTime() + 2.0
  end
  if button == "NextSign" then
    self.InfoTableTimeout = CurTime() + 2.0
  end

  if button and button:sub(1, 3) == "Num" then
    self.InfoTableTimeout = CurTime() + 2.0
  end
end

function ENT:OnPlay(soundid, location, range, pitch)
  if location == "stop" then
    if IsValid(self.Sounds[soundid]) then
      self.Sounds[soundid]:Pause()
      self.Sounds[soundid]:SetTime(0)
    end
    return
  end
  if location == "bass" then
    if soundid == "VDOL" then
      return range > 0 and "vdol_on" or "vdol_off", location, 1, pitch
    end
    if soundid == "VDOP" then
      return range > 0 and "vdor_on" or "vdor_off", location, 1, pitch
    end
    if soundid == "VDZ" then
      return range > 0 and "vdz_on" or "vdz_off", location, 1, pitch
    end
    if soundid:sub(1, 4) == "IGLA" then
      return range > 0 and "igla_on" or "igla_off", location, 1, pitch
    end
    if soundid == "LK2" then
      local speed = self:GetPackedRatio("Speed")
      local id = range > 0 and "lk2_on" or "lk2_off"
      self.SoundPositions[id][1] = 350 - Lerp(speed / 0.1, 0, 250)
      return id, location, 1 - Lerp(speed / 10, 0.2, 0.8), pitch
    end
    if soundid == "LK3" then
      local speed = self:GetPackedRatio("Speed")
      local id = range > 0 and "lk3_on" or "lk3_off"
      self.SoundPositions[id][1] = 350 - Lerp(speed / 0.1, 0, 250)
      return id, location, 1 - Lerp(speed / 10, 0.2, 0.8), pitch
    end
    if soundid == "LK5" and range > 0 then
      local speed = self:GetPackedRatio("Speed")
      self.SoundPositions["lk5_on"][1] = 350 - Lerp(speed / 0.1, 0, 250)
      return "lk5_on", location, 1 - Lerp(speed / 10, 0.2, 0.8), pitch
    end
    if soundid == "brake" then
      self:PlayOnce("brake_f", location, range, pitch)
      self:PlayOnce("brake_b", location, range, pitch)
      return
    end
    if soundid == "RVT" then
      return range > 0 and "rvt_on" or "rvt_off", location, 1, pitch
    end
    if soundid == "K6" then
      return range > 0 and "k6_on" or "k6_off", location, 1, pitch
    end
    if soundid == "R1_5" then
      return range > 0 and "r1_5_on" or "r1_5_off", location, 1, pitch
    end
    if soundid == "RPB" then
      return range > 0 and "rpb_on" or "rpb_off", location, 1, pitch
    end
    if soundid == "KD" then
      return range > 0 and "kd_on" or "kd_off", location, 1, pitch
    end
    if soundid == "KK" then
      return range > 0 and "kk_on" or "kk_off", location, 1, pitch --0.8
    end
    if soundid == "K25" then
      return range > 0 and "k25_on" or "k25_off", location, 1, pitch
    end
    if soundid == "RO" then
      return range > 0 and "ro_on" or "ro_off", location, 1, pitch
    end
    if soundid == "Rp8" then
      return range > 0 and "rp8_on" or "rp8_off", location, 1, pitch
    end
    if soundid == "ROT1" then
      return range > 0 and "rot_on" or "rot_off", location, 1, pitch
    end
    if soundid == "ROT2" then
      return range > 0 and "rot_on" or "rot_off", location, 1, pitch
    end
    if soundid == "AVU" then
      return range > 0 and "avu_on" or "avu_off", location, 1, 0.9
    end
  elseif soundid:sub(1, 4) == "kv70" and self:GetNW2Bool("SecondKV") then return soundid .. "_2", location, range, pitch end
  return soundid, location, range, pitch
end

Metrostroi.GenerateClientProps()
