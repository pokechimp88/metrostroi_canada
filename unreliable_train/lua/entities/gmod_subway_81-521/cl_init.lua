﻿--------------------------------------------------------------------------------
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
ENT.ClientSounds = {}
ENT.AutoAnims = {}

ENT.ClientProps["salon"] = {
    model = "models/metrostroi_train/81-718/interior_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["schemes"] = {
    model = "models/metrostroi_train/81-717/labels/schemes.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
    callback = function(ent)
        ent.PassSchemesDone = false
    end,
}
ENT.ClientProps["body_additional"] = {
    model = "models/metrostroi_train/81-717/714_body_additional.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["seats_old"] = {
    model = "models/metrostroi_train/81-717/couch_old_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=1.5,
}
ENT.ClientProps["seats_new"] = {
    model = "models/metrostroi_train/81-717/couch_new_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=1.5,
}
ENT.ClientProps["seats_old_cap"] = {
    model = "models/metrostroi_train/81-717/couch_cap_l.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=0.8,
}
ENT.ClientProps["seats_old_cap_o"] = {
    model = "models/metrostroi_train/81-717/couch_cap_l.mdl",
    pos = Vector(-285,410,13),
    ang = Angle(0,70,-70),
    hideseat=0.8,
}
ENT.ClientProps["seats_new_cap"] = {
    model = "models/metrostroi_train/81-717/couch_new_cap.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=0.8,
}
ENT.ClientProps["seats_new_cap_o"] = {
    model = "models/metrostroi_train/81-717/couch_new_cap.mdl",
    pos = Vector(-285,410,13),
    ang = Angle(0,70,-70),
    hideseat=0.8,
}
ENT.ClientProps["otsek_cap_l"] = {
    model = "models/metrostroi_train/81-717/otsek_cap_l.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=0.8,
}
ENT.ClientProps["otsek_cap_r"] = {
    model = "models/metrostroi_train/81-717/otsek_cap_r.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=0.8,
}

ENT.ButtonMap["FrontPneumatic"] = {
    pos = Vector(470-9,-45.0,-58.0+5),
    ang = Angle(0,90,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "FrontBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
        {ID = "FrontTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
    }
}
ENT.ClientProps["FrontBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(449+11, -34, -62),
    ang = Angle( 15,-90,0),
    hide = 2,
}
ENT.ClientProps["FrontTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(449+11, 34, -62),
    ang = Angle(-15,-90,0),
    hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = {{"FrontBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["FrontTrainLineIsolation"] = {{"FrontTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}


ENT.ButtonMap["RearPneumatic"] = {
    pos = Vector(-473-0.5,45.0,-58.0+5),
    ang = Angle(0,270,90),
    width = 1050,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "RearTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
        {ID = "RearBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
    }
}
ENT.ClientProps["RearTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(-450-22, -34, -62),
    ang = Angle(-15,90,0),
    hide = 2,
}
ENT.ClientProps["RearBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(-450-22, 34, -62),
    ang = Angle( 15,90,0),
}
ENT.ClientSounds["RearBrakeLineIsolation"] = {{"RearBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["RearTrainLineIsolation"] = {{"RearTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}

ENT.ButtonMap["GV"] = {
    pos = Vector(170-3-9.5,50+20,-60+2),
    ang = Angle(0,225-15,90),
    width = 260,
    height = 260,
    scale = 0.1,
    buttons = {
        {ID = "GVToggle",x=0, y=0, w= 260,h = 260, tooltip="", model = {
            var="GV",sndid = "gv",
            sndvol = 0.8,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
            snd = function(val) return val and "gv_f" or "gv_b" end,
        }},
    }
}
ENT.ClientProps["gv"] = {
    model = "models/metrostroi/81-717/gv.mdl",
    pos = Vector(153.5-3-9.5,36+20,-78+2),
    ang = Angle(-90,90,-90),
    color = Color(150,255,255),
    hide = 0.5,
}
ENT.ClientProps["gv_wrench"] = {
    model = "models/metrostroi_train/reversor/reversor_classic.mdl",
    pos = ENT.ClientProps["gv"].pos,
    ang = Angle(-90,0,0),
    hide = 0.5,
}

ENT.ButtonMap["AirDistributor"] = {
    pos = Vector(-185,-68,-50),
    ang = Angle(0,0,90),
    width = 170,
    height = 80,
    scale = 0.1,
    hideseat=0.1,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "AirDistributorDisconnectToggle",x=0,y=0,w= 170,h = 80,tooltip=""},
    }
}
ENT.ButtonMap["UESPM1"] = {
  pos = Vector(-73.5,-62,19),
  ang = Angle(0, 0, -90),
  width = 290,
  height = 110,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "1:RingSet", x = 130, y = 80, radius = 20, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = 5,
      var = "Ring", speed = 16, vmin = 1, vmax = 0,
      sndvol = 0.07, snd = function(val) return val and "button1_on" or "button2_off" end, sndmin = 60, sndmax = 1e3 / 3,
      sndang = Angle(-90, 0, 0),
    } },
  }
}
ENT.ButtonMap["UESPM2"] = {
  pos = Vector(151,-62,19),
  ang = Angle(0, 0, -90),
  width = 290,
  height = 110,
  scale = 0.0625,
  hideseat = 0.2,

  buttons = {
    { ID = "2:RingSet", x = 130, y = 80, radius = 20, tooltip = "", model = {
      model = "models/metrostroi_train/81-710/ezh3_button_red.mdl", z = 5,
      var = "Ring", speed = 16, vmin = 1, vmax = 0,
      sndvol = 0.07, snd = function(val) return val and "button1_on" or "button2_off" end, sndmin = 60, sndmax = 1e3 / 3,
      sndang = Angle(-90, 0, 0),
    } },
  }
}
-- Battery panel
ENT.ButtonMap["Battery"] = {
    pos = Vector(-470.0,-10,50.6),
    ang = Angle(0,-90,180),
    width = 100,
    height = 100,
    scale = 0.08,
    hide=0.8,

    buttons = {
        {ID = "VBToggle", x=0, y=0, w=100, h=100, tooltip="ВБ: Выключатель батареи", model = {
            model = "models/metrostroi_train/81-717/battery_enabler.mdl",
            var="VB",speed=0.5,vmin=1,vmax=0.8,
            sndvol = 0.8, snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["couch_cap"] = {
    pos = Vector(-460,60,0),
    ang = Angle(0,0,70),
    width = 1000,
    height = 600,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "CouchCap",x=0,y=0,w=1000,h=600, tooltip=""}
    }
}
ENT.ButtonMap["couch_cap_o"] = {
    pos = Vector(-464,-21,-45),
    ang = Angle(0,70,5),
    width = 1100,
    height = 380,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "CouchCap",x=0,y=0,w=1100,h=380, tooltip=""}
    }
}
ENT.ButtonMap["Stopkran"] = {
    pos = Vector(-397,-60,0),
    ang = Angle(0,180,70),
    width = 1000,
    height = 600,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "EmergencyBrakeValveToggle",x=0,y=0,w=1000,h=600,tooltip=""},
    }
}
ENT.ButtonMap["AV_S"] = {
    pos = Vector(-456,60,-15),
    ang = Angle(0,0,90),
    width = 325,
    height = 205,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A53Toggle",x=25*0,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A56Toggle",x=25*1,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A54Toggle",x=25*2,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A24Toggle",x=25*3,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A39Toggle",x=25*4,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A23Toggle",x=25*5,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A14Toggle",x=25*6,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A13Toggle",x=25*7,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A31Toggle",x=25*8,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A32Toggle",x=25*9,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A16Toggle",x=25*10,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A12Toggle",x=25*11,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A49Toggle",x=25*12,y=80*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A15Toggle",x=25*0,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A27Toggle",x=25*1,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A50Toggle",x=25*2,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A8Toggle",x=25*3,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A52Toggle",x=25*4,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A19Toggle",x=25*5,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A10Toggle",x=25*6,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A22Toggle",x=25*7,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A30Toggle",x=25*8,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A1Toggle",x=25*9,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A2Toggle",x=25*10,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A3Toggle",x=25*11,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A4Toggle",x=25*12,y=80*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A5Toggle",x=25*0,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A6Toggle",x=25*1,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A72Toggle",x=25*2,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A38Toggle",x=25*3,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A20Toggle",x=25*4,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A25Toggle",x=25*5,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A37Toggle",x=25*6,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A55Toggle",x=25*7,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A45Toggle",x=25*8,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A66Toggle",x=25*9,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A51Toggle",x=25*10,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A65Toggle",x=25*11,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A28Toggle",x=25*12,y=80*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_S.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",
        var=button.ID:Replace("Toggle",""),speed=8,z=-15,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    button.ID = "1:"..button.ID
end
ENT.ButtonMap["AV_T"] = {
    pos = Vector(-468,23,-18),
    ang = Angle(0,80,90),
    width = 225,
    height = 45,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A70Toggle",x=25*0,y=0,w=25,h=45,tooltip=""},
        {ID = "AV2Toggle",x=25*1,y=0,w=25,h=45,tooltip=""},
        {ID = "AV3Toggle",x=25*2,y=0,w=25,h=45,tooltip=""},
        {ID = "AV4Toggle",x=25*3,y=0,w=25,h=45,tooltip=""},
        {ID = "AV5Toggle",x=25*4,y=0,w=25,h=45,tooltip=""},
        {ID = "A81Toggle",x=25*5,y=0,w=25,h=45,tooltip=""},
        {ID = "AV6Toggle",x=25*6,y=0,w=25,h=45,tooltip=""},
        {ID = "A80Toggle",x=25*7,y=0,w=25,h=45,tooltip=""},
        {ID = "A18Toggle",x=25*8,y=0,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_T.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",
        var=button.ID:Replace("Toggle",""),speed=8,z=-15,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    button.ID = "1:"..button.ID
end

ENT.ButtonMap["DriverValveBLTLDisconnect"] = {
    pos = Vector(-466,44,-18),
    ang = Angle(0,80,90),
    width = 160,
    height = 140,
    scale = 0.0625,

    buttons = {
        {ID = "DriverValveBLDisconnectToggle", x=0, y=0, w=80, h=140, tooltip="", model = {
            var="DriverValveBLDisconnect",sndid="brake_disconnect",
            sndvol = 1, snd = function(val) return "disconnect_valve" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "DriverValveTLDisconnectToggle", x=80, y=0, w=80, h=140, tooltip="", model = {
            var="DriverValveTLDisconnect",sndid="train_disconnect",
            sndvol = 1, snd = function(val) return val and "pneumo_TL_open" or "pneumo_TL_disconnect" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ClientProps["brake_disconnect"] = {
    model = "models/metrostroi_train/81-707/cran1.mdl",
    pos = Vector(-466,47,-24),
    ang = Angle(90,80,90),
    hideseat=0.2,
}
ENT.ClientProps["train_disconnect"] = {
    model = "models/metrostroi_train/81-707/cran3.mdl",
    pos = Vector(-465,51,-24),
    ang = Angle(90,80,90),
    hideseat=0.2,
}
ENT.ClientProps["brake013"] = {
    model = "models/metrostroi_train/81-717/cran13.mdl",
    pos = Vector(-466,49,-10),
    ang = Angle(0,58,0),
    hideseat = 0.2,
}
ENT.ClientProps["brake334"] = {
    model = "models/metrostroi_train/81-703/cabin_cran_334.mdl",
    pos = Vector(-466,49,-10),
    ang = Angle(0,-50,0),
    hideseat = 0.2,
}
if not ENT.ClientSounds["br_013"] then ENT.ClientSounds["br_013"] = {} end
table.insert(ENT.ClientSounds["br_013"],{"brake013",function(ent,_,var) return "br_013" end,0.7,1,50,1e3,Angle(-90,0,0)})
if not ENT.ClientSounds["br_334"] then ENT.ClientSounds["br_334"] = {} end
table.insert(ENT.ClientSounds["br_334"],{"brake334",function(ent,_,var) return "br_334_"..var end,1,1,50,1e3,Angle(-90,0,0)})

ENT.ButtonMap["Shunt"] = {
    pos = Vector(-468,28,-5),
    ang = Angle(0,80,90),
    width = 206,
    height = 200,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "BPSNonToggle",x=39,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="BPSNon",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "!RZPLight",x=39,y=130,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",z = -4,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=2,x=-0.3,y=-0.3,z=20.6,var="RZP",color=Color(255,60,40)}
        }},
        {ID = "ConverterProtectionSet",x=39,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="ConverterProtection",speed=16,min=1,max=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "L_1Toggle",x=80,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="L_1",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end, sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "OtklBVSet",x=80,y=130,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="OtklBV",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button1_on" or "button1_off" end, sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "StartSet",x=80,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="Start",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button2_off" end, sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "VozvratRPSet",x=121,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="VozvratRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button1_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},

        {ID = "RV", x=176, y=140, radius=0, model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_common001.mdl",ang=270,z=12,
            var="RV",speed=2,min=1,max=0.5,getfunc = function(ent) return ent:GetPackedRatio("RV") end,
            sndvol = 0.8, snd = function(_,val) return val%2>0 and "pak_on" or "pak_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID="RV-",x=176-30, y=140-30, w=30,h=60, tooltip="ВТПР(влево)"},
        {ID="RV+",x=176   , y=140-30, w=30,h=60, tooltip="ВТПР(вправо)"},
    }
}

ENT.ButtonMap["VU"] = {
    pos = Vector(-468.7,24,-5),
    ang = Angle(0,80,90),
    width = 60,
    height = 120,
    scale = 0.0625,
    hideseat = 0.2,

    buttons = {
        {ID = "A84Toggle", x=0, y=0, w=60,h=120, tooltip="", model = {
            model = "models/metrostroi_train/Equipment/vu22_brown.mdl", z=-20, ang = Angle(180,-90,0),
            plomb = {model = "models/metrostroi_train/equipment/vu_plomb_right.mdl",ang=Angle(-90,90,0),x=25,y=33.2,z=9.3,var="A84Pl", ID="A84Pl",},
            var="A84",speed=6,
            sndvol = 1, snd = function(val) return val and "vu22_on" or "vu22_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(0,0,0),
        }},
    }
}

ENT.ButtonMap["FrontDoor"] = {
    pos = Vector(470-11,16,48.4-2),
    ang = Angle(0,-90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "FrontDoor",x=0,y=0,w=642,h=1900, tooltip="Передняя дверь", model = {
            var="door1",sndid="door1",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ClientProps["door1"] = {
    model = "models/metrostroi_train/81-718/door_torec.mdl",
    pos = Vector(459.2,-15.9,-2.7),
    ang = Angle(0,89.5,0),
    hide=2,
}

ENT.ButtonMap["RearDoor"] = {
    pos = Vector(-470-3,-16,48.4-2),
    ang = Angle(0,90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=642,h=1900, tooltip="Задняя дверь", model = {
            var="door2",sndid="door2",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ClientProps["door2"] = {
    model = "models/metrostroi_train/81-718/door_torec.mdl",
    pos = Vector(-472.5,15.75,-2.7),
    ang = Angle(0,-90,0),
    hide=2,
}

--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false


ENT.ClientProps["train_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(-465.05,14.2,58.55),
    ang = Angle(-90,0,180),
    hideseat=0.8,
}
ENT.ClientProps["brake_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_tm.mdl",
    pos = Vector(-465.01,14.2,58.55),
    ang = Angle(-90,0,180),
    hideseat=0.8,
}
ENT.ClientProps["brake_cylinder"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(-464.94,9.0,58.45),
    ang = Angle(-90,0,180),
    hideseat=0.8,
}
--------------------------------------------------------------------------------
ENT.ClientProps["voltmeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(-464.80,-13.07,56.81),
    ang = Angle(-90,0,180),
    hideseat=0.8,
    bscale = Vector(1.2,1.2,1.65)
}
ENT.ClientProps["ampermeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(-464.80,-8.04,56.81),
    ang = Angle(-90,0,180),
    hideseat=0.8,
    bscale = Vector(1.2,1.2,1.65)
}

ENT.ClientProps["bortlamps1"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-52,67,45.5),
    ang = Angle(0,0,0),
    hide = 2,
}
ENT.ClientProps["bortlamp1_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,3.25),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,-0.1),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,-3.3),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamps2"] = {
    model = "models/metrostroi_train/81-717/bort_lamps_body.mdl",
    pos = Vector(39,-67,45.5),
    ang = Angle(0,180,0),
    hide = 2,
}
ENT.ClientProps["bortlamp2_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,3.25),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,-0.1),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,-3.3),
    ang = Angle(0,180,0),
    nohide = true,
}
--[[
ENT.ClientProps["bortlamps3"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-6.5,67,51.2),
    ang = Angle(90,0,0),
    hide = 2,
}
ENT.ClientProps["bortlamp3_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(3.28,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp3_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(-0.06,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp3_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(-3.33,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamps4"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-6.5,-67,51.2),
    ang = Angle(90,180,0),
    hide = 2,
}
ENT.ClientProps["bortlamp4_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(-3.28,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp4_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(0.06,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp4_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(3.33,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}--]]
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
    336.3+5.6,
    394.24+11.25,
}
for i = 0,29 do
    ENT.ClientProps["lamp1_"..i+1] = {
        model = "models/metrostroi_train/81-717/lamps/lamp_typ2.mdl",
        pos = Vector(xpos[math.floor(i/2)+1], 29.7-(i%2)*59.4, 63.3),
        ang = Angle(0,0,-8+(i%2)*16),
        hide = 1.1,
    }
end
local yventpos = {
    -414.5+0*117,
    -414.5+1*117+6.2,
    -414.5+2*117+5,
    -414.5+3*117+2,
    -414.5+4*117-6.2,
    -414.5+5*117-9,
    -414.5+6*117-10.2,
    -414.5+7*117-4,
}
for i=1,8 do
    ENT.ClientProps["vent"..i] = {
        model = "models/metrostroi_train/81-720/vent.mdl",
        pos = Vector(yventpos[i],0,62),
        ang = Angle(0,0,0),
        hide = 1.1,
    }
end
for i=0,3 do
    ENT.ClientProps["TrainNumberL"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(275+16+i*6.6-5*6.6/2,67.4,32.8),
        ang = Angle(0,180,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
    ENT.ClientProps["TrainNumberR"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(-295+16-i*6.6-5*6.6/2,-67.4,32.8),
        ang = Angle(0,0,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
end
--------------------------------------------------------------------------------
function ENT:UpdateWagonNumber()
    local count = math.max(3,math.ceil(math.log10(self.WagonNumber+1)))
    for i=0,3 do
	self:ShowHide("TrainNumberL"..i,i<count)
        self:ShowHide("TrainNumberR"..i,i<count)
        local leftNum,rightNum = self.ClientEnts["TrainNumberL"..i],self.ClientEnts["TrainNumberR"..i]
        local num = math.floor(self.WagonNumber%(10^(i+1))/10^i)
        if IsValid(leftNum) then
            leftNum:SetPos(self:LocalToWorld(Vector(275+16+i*6.6-count*6.6/2,67.4,32.8)))
            leftNum:SetSkin(num)
        end
        if IsValid(rightNum) then
            rightNum:SetPos(self:LocalToWorld(Vector(-295+16-i*6.6-count*6.6/2,-67.4,32.8)))
            rightNum:SetSkin(num)
        end
    end
end
function ENT:Initialize()
    self.BaseClass.Initialize(self)
    self.CraneRamp = 0
    self.CraneLRamp = 0
    self.CraneRRamp = 0
    self.EmergencyBrakeValveRamp = 0
    self.ReleasedPdT = 0
    self.FrontLeak = 0
    self.RearLeak = 0

    self.VentRand = {}
    self.VentState = {}
    self.VentVol = {}
    for i=1,8 do
        self.VentRand[i] = math.Rand(0.5,2)
        self.VentState[i] = 0
        self.VentVol[i] = 0
    end

end
--------------------------------------------------------------------------------
local Cpos = {
    0,0.2,0.4,0.5,0.6,0.8,1
}
function ENT:Think()
    self.BaseClass.Think(self)
    if self.FirstTick~=false and (not self.RenderClientEnts or self.CreatingCSEnts) then
        self.RKTimer = nil
        self.OldBPSNType = nil
        return
    end

    if self.Scheme ~= self:GetNW2Int("Scheme",1) then
        self.PassSchemesDone = false
        self.Scheme = self:GetNW2Int("Scheme",1)
    end
    if not self.PassSchemesDone and IsValid(self.ClientEnts.schemes) then
        local scheme = Metrostroi.Skins["717_new_schemes"] and Metrostroi.Skins["717_new_schemes"][self.Scheme]
        self.ClientEnts.schemes:SetSubMaterial(1,scheme and scheme[1])
        self.PassSchemesDone = true
    end

    local Bortlamp_w = self:Animate("Bortlamp_w",self:GetPackedBool("DoorsW") and 1 or 0,0,1,16,false)
    local Bortlamp_g = self:Animate("Bortlamp_g",self:GetPackedBool("GRP") and 1 or 0,0,1,16,false)
    local Bortlamp_y = self:Animate("Bortlamp_y",self:GetPackedBool("BrW") and 1 or 0,0,1,16,false)
    self:ShowHideSmooth("bortlamp1_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp1_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp1_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp2_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp2_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp2_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp3_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp3_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp3_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp4_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp4_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp4_y",Bortlamp_y)

    local dot5 = self:GetNW2Bool("Dot5")
    local lvz = self:GetNW2Bool("LVZ")
    local custom = self:GetNW2Bool("Custom")
    local newSeats = self:GetNW2Bool("NewSeats")
    self:ShowHide("seats_old",not newSeats)
    self:ShowHide("seats_new",newSeats)

    local capOpened = self:GetPackedBool("CouchCap")
    local c013 = self:GetPackedBool("Crane013")
    self:ShowHide("seats_old_cap_o",capOpened and not newSeats)
    self:ShowHide("seats_old_cap",not capOpened and not newSeats)
    self:ShowHide("seats_new_cap_o",capOpened and newSeats)
    self:ShowHide("seats_new_cap",not capOpened and newSeats)
    self:HidePanel("couch_cap",capOpened)
    self:HidePanel("couch_cap_o",not capOpened)
    self:HidePanel("AV_S",not capOpened)
    self:HidePanel("AV_T",not capOpened)
    self:HidePanel("Stopkran",not capOpened)
    self:ShowHide("otsek_cap_r",not capOpened)
    self:ShowHide("brake334",capOpened and not c013)
    self:ShowHide("brake013",capOpened and c013)
    self:ShowHide("brake_disconnect",capOpened)
    self:ShowHide("train_disconnect",capOpened)
    self:HidePanel("DriverValveBLTLDisconnect",not capOpened)
    self:HidePanel("Shunt",not capOpened)
    self:HidePanel("VU",not capOpened)

    self:Animate("brake_disconnect",self:GetPackedBool("DriverValveBLDisconnect") and 1 or 0,0.25,0,  4,false)
    self:Animate("train_disconnect",self:GetPackedBool("DriverValveTLDisconnect") and 1 or 0,0.25,0,  4,false)
    self:Animate("brake334",self:GetPackedRatio("CranePosition")/5,0.35,0.65,256,24)
    self:Animate("brake013",Cpos[self:GetPackedRatio("CranePosition")] or 0, 0.03, 0.458,  256,24)

    self:Animate("brake_line",      self:GetPackedRatio("BLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("train_line",      self:GetPackedRatio("TLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("brake_cylinder",  self:GetPackedRatio("BCPressure"),0.14, 0.875,  256,2)--,,0.03)
    self:Animate("voltmeter",       self:GetPackedRatio("BatteryVoltage"),0.601, 0.400)
    if self:GetPackedRatio("BatteryVoltage") > 0 then
        self:Animate("ampermeter",      0.47+math.Clamp((self:GetPackedRatio("BatteryVoltage")-0.44)/1.3,0,1),0.604, 0.398)
    else
        self:Animate("ampermeter",      0.5,0.604, 0.398)
    end

    for i = 1,30 do
        local colV = self:GetNW2Vector("lamp"..i)
        local col = Color(colV.x,colV.y,colV.z)
        self:ShowHideSmooth("lamp1_"..i,self:Animate("Lamp1_"..i,self:GetPackedBool("lightsActive"..i) and 1 or 0,0,1,6,false),col)
    end

    local door1 = self:Animate("door1", self:GetPackedBool("FrontDoor") and 0.99 or 0,0,0.25, 4, 0.5)
    local door2 = self:Animate("door2", self:GetPackedBool("RearDoor") and (self:GetPackedBool("CouchCap") and 0.25 or 0.99) or 0,0,0.25, 4, 0.5)

    if self.Door1 ~= (door1 > 0) then
        self.Door1 = door1 > 0
        self:PlayOnce("door1","bass",self.Door1 and 1 or 0)
    end
    if self.Door2 ~= (door2 > 0) then
        self.Door2 = door2 > 0
        self:PlayOnce("door2","bass",self.Door2 and 1 or 0)
    end



    self:Animate("FrontBrake", self:GetNW2Bool("FbI") and 0 or 1,0,1, 3, false)
    self:Animate("FrontTrain",  self:GetNW2Bool("FtI") and 1 or 0,0,1, 3, false)
    self:Animate("RearBrake",   self:GetNW2Bool("RbI") and 0 or 1,0,1, 3, false)
    self:Animate("RearTrain",   self:GetNW2Bool("RtI") and 1 or 0,0,1, 3, false)

    -- Main switch
    if self.LastGVValue ~= self:GetPackedBool("GV") then
        self.ResetTime = CurTime()+1.5
        self.LastGVValue = self:GetPackedBool("GV")
    end
    self:Animate("gv_wrench",self.LastGVValue and 1 or 0,0.5,0.9,128,1,false)
    self:ShowHideSmooth("gv_wrench",    CurTime() < self.ResetTime and 1 or 0.1)

    if not self.DoorStates then self.DoorStates = {} end
    if not self.DoorLoopStates then self.DoorLoopStates = {} end
    for i=0,3 do
        for k=0,1 do
            local st = k==1 and "DoorL" or "DoorR"
            local doorstate = self:GetPackedBool(st)
            local id,sid = st..(i+1),"door"..i.."x"..k
            local state = self:GetPackedRatio(id)
            --print(state,self.DoorStates[state])
            if (state ~= 1 and state ~= 0) ~= self.DoorStates[id] then
                if doorstate and state < 1 or not doorstate and state > 0 then
                else
                    if state > 0 then
                        self:PlayOnce(sid.."o","",1,math.Rand(0.8,1.2))
                    else
                        self:PlayOnce(sid.."c","",1,math.Rand(0.8,1.2))
                    end
                end
                self.DoorStates[id] = (state ~= 1 and state ~= 0)
            end
            if (state ~= 1 and state ~= 0) then
                self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) + 2*self.DeltaTime,0,1)
            else
                self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) - 6*self.DeltaTime,0,1)
            end
            self:SetSoundState(sid.."r",self.DoorLoopStates[id],0.8+self.DoorLoopStates[id]*0.2)
            local n_l = "door"..i.."x"..k--.."a"
            --local n_r = "door"..i.."x"..k.."b"
            local dlo = 1
            --local dro = 1
            if self.Anims[n_l] then
                dlo = math.abs(state-(self.Anims[n_l] and self.Anims[n_l].oldival or 0))
                if dlo <= 0 and self.Anims[n_l].oldspeed then dlo = self.Anims[n_l].oldspeed/14 end
            end
            self:Animate(n_l,state,0,0.95, dlo*14,false)--0.8 + (-0.2+0.4*math.random()),0)
            --self:Animate(n_r,state,0,1, dlo*14,false)--0.8 + (-0.2+0.4*math.random()),0)
        end
    end

    local dT = self.DeltaTime
    local rollingi = math.min(1,self.TunnelCoeff+math.Clamp((self.StreetCoeff-0.82)/0.3,0,1))
    local rollings = math.max(self.TunnelCoeff*0.6,self.StreetCoeff)
    local speed = self:GetPackedRatio("Speed")*100.0
    local rol5 = math.Clamp(speed/1,0,1)*(1-math.Clamp((speed-3)/8,0,1))
    local rol10 = math.Clamp(speed/12,0,1)*(1-math.Clamp((speed-25)/8,0,1))
    local rol40p = Lerp((speed-25)/12,0.6,1)
    local rol40 = math.Clamp((speed-23)/8,0,1)*(1-math.Clamp((speed-55)/8,0,1))
    local rol40p = Lerp((speed-23)/50,0.6,1)
    local rol70 = math.Clamp((speed-50)/8,0,1)*(1-math.Clamp((speed-72)/5,0,1))
    local rol70p = Lerp(0.8+(speed-65)/25*0.2,0.8,1.2)
    local rol80 = math.Clamp((speed-70)/5,0,1)
    local rol80p = Lerp(0.8+(speed-72)/15*0.2,0.8,1.2)
    self:SetSoundState("rolling_5",math.min(1,rollingi*(1-rollings)+rollings*0.8)*rol5,1)
    self:SetSoundState("rolling_10",rollingi*rol10,1)
    self:SetSoundState("rolling_40",rollingi*rol40,rol40p)
    self:SetSoundState("rolling_70",rollingi*rol70,rol70p)
    self:SetSoundState("rolling_80",rollingi*rol80,rol80p)
--[[
    local rol_motors = math.Clamp((speed-55)/10,0,1) ---ANY IDEAS?? MOTORS BACKGROUND SOUNDS AT HISPEED
    local rol_motorsp = Lerp((speed-72)/25*0.2,0.85,1.1)
    self:SetSoundState("rolling_motors",rol_motors,rol_motorsp) ---ANY IDEAS??--]]

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

    self.ReleasedPdT = math.Clamp(self.ReleasedPdT + 2*(-self:GetPackedRatio("BrakeCylinderPressure_dPdT",0)-self.ReleasedPdT)*dT,0,1)
    local release1 = math.Clamp((self.ReleasedPdT-0.1)/0.8,0,1)^2
    self:SetSoundState("release1",release1,1)
    self:SetSoundState("release2",(math.Clamp(0.3-release1,0,0.3)/0.3)*(release1/0.3),1.0)
    self.FrontLeak = math.Clamp(self.FrontLeak + 10*(-self:GetPackedRatio("FrontLeak")-self.FrontLeak)*dT,0,1)
    self.RearLeak = math.Clamp(self.RearLeak + 10*(-self:GetPackedRatio("RearLeak")-self.RearLeak)*dT,0,1)
    self:SetSoundState("front_isolation",self.FrontLeak,0.9+0.2*self.FrontLeak)
    self:SetSoundState("rear_isolation",self.RearLeak,0.9+0.2*self.RearLeak)

    local ramp = self:GetPackedRatio("Crane_dPdT",0)
    if c013 then
        if ramp > 0 then
            self.CraneRamp = self.CraneRamp + ((0.2*ramp)-self.CraneRamp)*dT
        else
            self.CraneRamp = self.CraneRamp + ((0.9*ramp)-self.CraneRamp)*dT
        end
        self.CraneRRamp = math.Clamp(self.CraneRRamp + 1.0*((1*ramp)-self.CraneRRamp)*dT,0,1)
        self:SetSoundState("crane334_brake",0,1.0)
        self:SetSoundState("crane334_brake_reflection",0,1.0)
        self:SetSoundState("crane334_brake_slow",0,1.0)
        self:SetSoundState("crane334_release",0,1.0)
        self:SetSoundState("crane013_release",self.CraneRRamp^1.5,1.0)
        self:SetSoundState("crane013_brake",math.Clamp(-self.CraneRamp*1.5-0.1,0,1)^1.3,1.0)
        local loudV = self:GetNW2Float("Crane013Loud",0)
        if loudV>0 then
            if ramp>0 then
                self.CraneLRamp = self.CraneLRamp + (math.min(ramp,0)-self.CraneLRamp)*dT*0.5
            else
                self.CraneLRamp = self.CraneLRamp + (math.min(ramp,0)-self.CraneLRamp)*dT*1
            end
            self:SetSoundState("crane013_brake_l",(math.Clamp(-self.CraneRamp*2.5-0.1,0,1)^1.3)*(1-math.Clamp((-self.CraneLRamp-loudV)*3,0,1)),1.12-math.Clamp((-self.CraneLRamp-0.15)*2,0,1)*0.12)
        else
            self:SetSoundState("crane013_brake_l",0,1)
        end
        self:SetSoundState("crane013_brake2",math.Clamp(-self.CraneRamp*1.5-0.95,0,1.5)^2,1.0)
    else
        self:SetSoundState("crane013_brake",0,1.0)
        self:SetSoundState("crane013_release",0,1.0)
        --self:SetSoundState("crane013_brake2",0,1.0)

        self.CraneRamp = math.Clamp(self.CraneRamp + 8.0*((1*self:GetPackedRatio("Crane_dPdT",0))-self.CraneRamp)*dT,-1,1)

        self:SetSoundState("crane334_brake_low",math.Clamp((-self.CraneRamp)*2,0,1)^2,1)
        local high = math.Clamp(((-self.CraneRamp)-0.5)/0.5,0,1)^1
        self:SetSoundState("crane334_brake_high",high,1.0)
        self:SetSoundState("crane013_brake2",high*2,1.0)
        self:SetSoundState("crane334_brake_eq_high",--[[ math.Clamp(-self.CraneRamp*0,0,1)---]] math.Clamp(-self:GetPackedRatio("ReservoirPressure_dPdT")-0.2,0,1)^0.8*1,1)
        self:SetSoundState("crane334_brake_eq_low",--[[ math.Clamp(-self.CraneRamp*0,0,1)---]] math.Clamp(-self:GetPackedRatio("ReservoirPressure_dPdT")-0.4,0,1)^0.8*1.3,1)

        self:SetSoundState("crane334_release",math.Clamp(self.CraneRamp,0,1)^2,1.0)
    end
    local emergencyBrakeValve = self:GetPackedRatio("EmergencyBrakeValve_dPdT", 0)
    self.EmergencyBrakeValveRamp = math.Clamp(self.EmergencyBrakeValveRamp + (emergencyBrakeValve-self.EmergencyBrakeValveRamp)*dT*8,0,1)
    self:SetSoundState("valve_brake",self.EmergencyBrakeValveRamp,0.8+math.min(0.4,self.EmergencyBrakeValveRamp*0.8))

    -- Compressor
    self:SetSoundState("compressor",self:GetPackedBool("Compressor") and 0.6 or 0,1)
    self:SetSoundState("compressor2",self:GetPackedBool("Compressor") and 0.8 or 0,1)

    local v1state = self:GetPackedBool("M1_3")
    local v2state = self:GetPackedBool("M4_7")
    local ventSpeedAdd = math.Clamp(speed/30,0,1)

    for i=1,8 do
        local rand = self.VentRand[i]
        local vol = self.VentVol[i]
        local even = i%2 == 0
        local work = (even and v1state or not even and v2state)
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

    -- RK rotation
    if self:GetPackedBool("RK") then self.RKTimer = CurTime() end
    self:SetSoundState("rk",(self.RKTimer and (CurTime() - self.RKTimer) < 0.2) and 0.7 or 0,1)

    -- BPSN sound
    self.BPSNType = self:GetNW2Int("BPSNType",13)
    if not self.OldBPSNType then self.OldBPSNType = self.BPSNType end
    if self.BPSNType ~= self.OldBPSNType then
        for i=1,12 do
            self:SetSoundState("bpsn"..i,0,1.0)
        end
    end
    self.OldBPSNType = self.BPSNType
    if self.BPSNType<13 then
        self:SetSoundState("bpsn"..self.BPSNType,self:GetPackedBool("BPSN") and 1 or 0,1) --FIXME громкость по другому
    end

    local work = self:GetPackedBool("AnnPlay")
    local buzz = self:GetPackedBool("AnnBuzz") and self:GetNW2Bool("AnnouncerBuzz")
    for k in ipairs(self.AnnouncerPositions) do
        self:SetSoundState("announcer_buzz"..k,(buzz and work) and 1 or 0,1)
    end
    for k,v in ipairs(self.AnnouncerPositions) do
        if self.Sounds["announcer"..k] and IsValid(self.Sounds["announcer"..k]) then
            self.Sounds["announcer"..k]:SetVolume(work  and (v[3] or 1)  or 0)
        end
    end
end

function ENT:Draw()
    self.BaseClass.Draw(self)
end

function ENT:DrawPost()
    self:DrawOnPanel("AirDistributor",function()
        draw.DrawText(self:GetNW2Bool("AD") and "Air Distributor ON" or "Air Distributor OFF","Trebuchet24",0,0,Color(0,0,0,255))
    end)
end
function ENT:OnPlay(soundid,location,range,pitch)
    if location == "stop" then
        if IsValid(self.Sounds[soundid]) then
            self.Sounds[soundid]:Pause()
            self.Sounds[soundid]:SetTime(0)
        end
        return
    end
    if soundid == "pkg" then return end
    if location == "bass" then
        if soundid == "VDOL" then
            return range > 0 and "vdol_on" or "vdol_off",location,1,pitch
        end
        if soundid == "VDOP" then
            return range > 0 and "vdor_on" or "vdor_off",location,1,pitch
        end
        if soundid == "VDZ" then
            return range > 0 and "vdz_on" or "vdz_off",location,1,pitch
        end
        if soundid:sub(1,4) == "IGLA" then
            return range > 0 and "igla_on" or "igla_off",location,1,pitch
        end
        if soundid == "LK2" then
            local speed = self:GetPackedRatio("Speed")
            local id = range > 0 and "lk2_on" or "lk2_off"
            self.SoundPositions[id][1] = 350-Lerp(speed/0.1,0,250)
            return id,location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "LK3" then
            local speed = self:GetPackedRatio("Speed")
            local id = range > 0 and "lk3_on" or "lk3_off"
            self.SoundPositions[id][1] = 350-Lerp(speed/0.1,0,250)
            return id,location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "LK5" and range > 0 then
            local speed = self:GetPackedRatio("Speed")
            self.SoundPositions["lk5_on"][1] = 440-Lerp(speed/0.1,0,330)
            return "lk5_on",location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "brake" then
            self:PlayOnce("brake_f",location,range,pitch)
            self:PlayOnce("brake_b",location,range,pitch)
            return
        end
        if soundid == "KK" then
            return range > 0 and "kk_on" or "kk_off",location,1,0.8
        end
    end
    return soundid,location,range,pitch
end
Metrostroi.GenerateClientProps()
