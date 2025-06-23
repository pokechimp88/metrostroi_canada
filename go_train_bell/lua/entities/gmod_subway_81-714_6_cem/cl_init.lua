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
ENT.ClientSounds = {}
ENT.AutoAnims = {}

--[[ENT.ClientProps["salon"] = {
    model = "models/metrostroi_train/81-717.6/6000_714.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}]]
for i = 0, 2 do
	ENT.ClientProps["scheme"..i] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(220 - 229*i,-15.75,-11),
		ang = Angle(15,90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
end
ENT.ClientProps["scheme3"] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(220 - 229*2.875,-15.75,-11),
		ang = Angle(15,90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
ENT.ClientProps["scheme7"] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(220 - 229*2.82,15.75,-11),
		ang = Angle(15,-90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
ENT.ClientProps["scheme8"] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(220 - 229*-0.9,-15.75,-11),
		ang = Angle(15,90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
ENT.ClientProps["scheme9"] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(220 - 229*-0.96,15.75,-11),
		ang = Angle(15,-90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
for i = 0, 2 do
	ENT.ClientProps["scheme"..i+4] = {
		model = "models/metrostroi_train/81-717.6/scheme.mdl",
		pos = Vector(235 - 229*i,15.75,-11),
		ang = Angle(15,-90,0),
		hide=2,
		callback = function(ent)
			ent.PassSchemesDone = false
		end,
	}
end

ENT.ClientProps["underwagon"] = {
	model = "models/metrostroi_train/81-717.6/underwagon_717_mvm.mdl",
	pos = Vector(4,0,7),
	ang = Angle(0,0,0),
	nohdie = true
}
ENT.ClientProps["additional1"] = {
	model = "models/metrostroi_train/81-717.6/714_6_body_additional.mdl",
	pos = Vector(5,0,7),
	ang = Angle(0,-90,0),
	hdie = 1
}
--[[ENT.ClientProps["additional2"] = {
	model = "models/metrostroi_train/81-717.6/714_6_body_additional.mdl",
	pos = Vector(-5,0,7),
	ang = Angle(0,90,0),
	hdie = 1
}]]
--[[ENT.ClientProps["lamps1"] = {
    model = "models/metrostroi_train/81-717/lamps_type1_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=1.5,
}]]
--[[ENT.ClientProps["lamps2"] = {
    model = "models/metrostroi_train/81-717/lamps_type2_interim.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=1.5,
}]]
--[[ENT.ClientProps["body_additional"] = {
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
ENT.ClientProps["handrails_old"] = {
    model = "models/metrostroi_train/81-717/handlers_old_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["seats_new"] = {
    model = "models/metrostroi_train/81-717/couch_new_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=1.5,
}
ENT.ClientProps["handrails_new"] = {
    model = "models/metrostroi_train/81-717/handlers_new_int.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
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
}]]
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
    pos = Vector(470-9 + 4,-45.0,-58.0+5 + 2),
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
    pos = Vector(449+14+ 2, -34, -62 + 5),
    ang = Angle( 15,-90,0),
    hide = 2,
}
ENT.ClientProps["FrontTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(449+14 + 2, 34, -62 + 5),
    ang = Angle(-15,-90,0),
    hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = {{"FrontBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["FrontTrainLineIsolation"] = {{"FrontTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}


ENT.ButtonMap["RearPneumatic"] = {
    pos = Vector(-473+8,45.0,-58.0+5 + 2),
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
        {ID = "ParkingBrakeToggle",x=900, y=0, w=150, h=100, tooltip=""},
    }
}
ENT.ClientProps["RearTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(-450-15, -34, -62 + 5),
    ang = Angle(-15,90,0),
    hide = 2,
}
ENT.ClientProps["RearBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(-450-15, 34, -62 + 5),
    ang = Angle( 15,90,0),
}
ENT.ClientProps["ParkingBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_white.mdl",
    pos = Vector(-450-15 + 3, -55, -62 + 5),
    ang = Angle(-15,90,0),
    hide = 0.5,
}
ENT.ClientSounds["ParkingBrake"] = {{"ParkingBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["RearBrakeLineIsolation"] = {{"RearBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["RearTrainLineIsolation"] = {{"RearTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}

ENT.ButtonMap["GV"] = {
    pos = Vector(142,63,-55),
    ang = Angle(0,180+45,90),
    width = 120,
    height = 120,
    scale = 0.1,
    buttons = {
        {ID = "GVToggle",x=0, y=0, w=120,h =120, tooltip="", model = {
            var="GV",sndid = "gv",
            sndvol = 0.8,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
            snd = function(val) return val and "gv_f" or "gv_b" end,
        }},
    }
}
ENT.ClientProps["gv"] = {
    model = "models/metrostroi/81-717/gv.mdl",
    pos = Vector(153.5-3-6,36+20,-78+2+17),
    ang = Angle(-90,90,-90),
    color = Color(150,255,255),
    hide = 0.5,
}
ENT.ClientProps["gv_wrench"] = {
    model = "models/metrostroi_train/reversor/reversor_gold.mdl",
    pos = ENT.ClientProps["gv"].pos,
    ang = Angle(-90,90,-90),
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

-- Battery panel
ENT.ButtonMap["Battery"] = {
    pos = Vector(450 + 8,-15 - 2.8,-20),
    ang = Angle(0,0,-90),
    width = 100,
    height = 100,
    scale = 0.08,
    hide=0.8,

    buttons = {
        {ID = "VBToggle", x=0, y=0, w=100, h=100, tooltip="", model = {
            model = "models/metrostroi_train/81-717/battery_enabler.mdl",
            var="VB",speed=0.5,vmin=1,vmax=0.8,
            sndvol = 0.8, snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
    }
}
--[[ENT.ButtonMap["couch_cap"] = {
    pos = Vector(-460,60,0),
    ang = Angle(0,0,70),
    width = 1000,
    height = 600,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "CouchCap",x=0,y=0,w=1000,h=600, tooltip=""}
    }
}]]
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
    pos = Vector(-467 + 2,30,-18),
    ang = Angle(0,82,90),
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
--[[
-- AV panel
ENT.ButtonMap["AV_Left"] = {
    pos = Vector(439.7+16.0,50.0,-3.0+6),
    ang = Angle(0,-82,90),
    width = 460,
    height = 340,
    scale = 0.0625,

    buttons = {
        {ID = "DriverValveBLDisconnectToggle", x=0, y=240, w=180, h=90, tooltip="Кран двойной тяги тормозной магистрали", model = {
            var="DriverValveBLDisconnect",sndid="brake_disconnect",
            sndvol = 1, snd = function(val) return "disconnect_valve" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "DriverValveTLDisconnectToggle", x=90, y=240, w=90, h=90, tooltip="Кран двойной тяги напорной магистрали", model = {
            var="DriverValveTLDisconnect",sndid="train_disconnect",
            sndvol = 1, snd = function(val) return "disconnect_valve" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},

        {ID = "A65Toggle", x=180+35*1,  y=260, radius=30, tooltip="A65 Interior lighting"},
        {ID = "A56Toggle", x=180+35*2,  y=260, radius=30, tooltip="A56 Включение аккумуляторной батареи"},
        {ID = "A63Toggle", x=180+35*3,  y=260, radius=30, tooltip="A63 IGLA/BIS"},
        {ID = "A10Toggle", x=180+35*4,  y=260, radius=30, tooltip="A10 Motor-compressor control"},
        {ID = "A30Toggle", x=180+35*5,  y=260, radius=30, tooltip="A30 Rheostat controller motor power"},
        {ID = "A80Toggle", x=180+35*6,  y=260, radius=30, tooltip="A80 Power circuit mode switch motor power"},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_Left.buttons) do
    if button.ID[1] == "A" then
        button.model = {
            model = "models/metrostroi/81-717/circuit_breaker.mdl",
            var=button.ID:Replace("Toggle",""),speed=16,
            sndvol = 0.8, snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }
    end
end

-- AV panel
ENT.ButtonMap["AV_Right"] = {
    pos = Vector(443.7+16,-21.0,-3+6),
    ang = Angle(0,-98,90),
    width = 460,
    height = 340,
    scale = 0.0625,

    buttons = {
        {ID = "A54Toggle", x=120+35*0,  y=60+100*0, radius=30, tooltip="A54 Управление проводом 10АК"},
        {ID = "A27Toggle", x=120+35*1,  y=60+100*0, radius=30, tooltip="A27 Turn on DIP and lighting"},
        {ID = "A24Toggle", x=120+35*2,  y=60+100*0, radius=30, tooltip="A24 Battery charging"},
        {ID = "A53Toggle", x=120+35*3,  y=60+100*0, radius=30, tooltip="A53 KVC power supply"},
        {ID = "A13Toggle", x=120+35*4,  y=60+100*0, radius=30, tooltip="A13 Door alarm"},
        {ID = "A32Toggle", x=120+35*5,  y=60+100*0, radius=30, tooltip="A32 Open right doors"},
        {ID = "A31Toggle", x=120+35*6,  y=60+100*0, radius=30, tooltip="A31 Open left doors"},
        {ID = "A16Toggle", x=120+35*7,  y=60+100*0, radius=30, tooltip="A16 Close doors"},
        {ID = "A12Toggle", x=120+35*8,  y=60+100*0, radius=30, tooltip="A12 Emergency door close"},
        ------------------------------------------------------------------------
        {ID = "A50Toggle", x=120+35*0,  y=60+100*1, radius=30, tooltip="A50 Turn on DIP and lighting"},
        {ID = "A51Toggle", x=120+35*1,  y=60+100*1, radius=30, tooltip="A51 Turn off DIP and lighting"},
        {ID = "A1Toggle",  x=120+35*2,  y=60+100*1, radius=30, tooltip="A1  XOD-1"},
        -- None
        -- None
        -- None
        {ID = "KRPSet",         x=230+45*0, y=115+45*0, radius=20, tooltip="ПУСК: Кнопка пуска", model = {
            model = "models/metrostroi_train/Equipment/button_ezh_2.mdl", z = 2,
            var="KRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07, snd = function(val) return val and "button4_on" or "button4_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "VozvratRPSet",   x=230+45*1, y=115+45*0, radius=20, tooltip="Возврат реле перегрузки", model = {
            model = "models/metrostroi_train/Equipment/button_ezh_6.mdl", z = 2,
            var="VozvratRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07, snd = function(val) return val and "button4_on" or "button4_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "RezMKSet",       x=230+45*0, y=115+45*1, radius=20, tooltip="Резервное включение мотор-компрессора", model = {
            model = "models/metrostroi_train/Equipment/button_ezh_1.mdl", z = 2,
            var="RezMK",speed=16,vmin=1,vmax=0,
            sndvol = 0.07, snd = function(val) return val and "button4_on" or "button4_off" end,sndmin = 60, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID = "VMKToggle",      x=230+45*0, y=115+45*2, radius=20, tooltip="Включение мотор-компрессора", model = {
            model = "models/metrostroi_train/Equipment/switch_1.mdl", ang = 180, z=-1,
            var="VMK",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "BPSNonToggle",   x=230+45*1, y=115+45*2, radius=20, tooltip="БПСН: Блок питания собственных нужд", model = {
            model = "models/metrostroi_train/Equipment/switch_1.mdl", ang = 180, z=-1,
            var="BPSNon",speed=16,
            sndvol = 1, snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "A2Toggle",  x=120+35*6,  y=60+100*1, radius=30, tooltip="A2  XOD-2"},
        {ID = "A3Toggle",  x=120+35*7,  y=60+100*1, radius=30, tooltip="A3  XOD-3"},
        {ID = "A17Toggle", x=120+35*8,  y=60+100*1, radius=30, tooltip="A17 Reset overload relay"},
        ------------------------------------------------------------------------
        {ID = "A5Toggle",  x=120+35*0,  y=60+100*2, radius=30, tooltip="A5  "},
        {ID = "A6Toggle",  x=120+35*1,  y=60+100*2, radius=30, tooltip="A6  T-1"},
        {ID = "A8Toggle",  x=120+35*2,  y=60+100*2, radius=30, tooltip="A8  Pneumatic valves #1, #2"},
        {ID = "A20Toggle", x=120+35*3,  y=60+100*2, radius=30, tooltip="A20 Drive/brake circuit control, train wire 20"},
        {ID = "A25Toggle", x=120+35*4,  y=60+100*2, radius=30, tooltip="A25 Manual electric braking"},
        {ID = "A22Toggle", x=120+35*5,  y=60+100*2, radius=30, tooltip="A22 Turn on KK"},
        {ID = "A23Toggle", x=120+35*6,  y=60+100*2, radius=30, tooltip="A23 Emergency motor-compressor turn on"},
        {ID = "A39Toggle", x=120+35*7,  y=60+100*2, radius=30, tooltip="A39 Emergency control"},
        {ID = "A14Toggle", x=120+35*8,  y=60+100*2, radius=30, tooltip="A14 Train wire 18"},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_Right.buttons) do
    if not button.model then
        button.model = {
            model = "models/metrostroi/81-717/circuit_breaker.mdl",
            var=button.ID:Replace("Toggle",""),speed=16,
            sndvol = 0.8, snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }
    end
end--]]



ENT.ButtonMap["FrontDoor"] = {
    pos = Vector(470-5,16,48.4 + 4),
    ang = Angle(0,-90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "FrontDoor",x=0,y=0,w=642,h=1900, tooltip="", model = {
            var="door1",sndid="door1",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["FrontDoor1"] = {
    pos = Vector(470-5,-15,48.4 + 4),
    ang = Angle(0,90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "FrontDoor",x=0,y=0,w=642,h=1900, tooltip=""}}
}
ENT.ClientProps["door1"] = {
    model = "models/metrostroi_train/81-717.6/door_back.mdl",
	pos = Vector(467-0.09,-15.75-0.43,-42.47),
    ang = Angle(0,-90,0),
    hide=2,
}

ENT.ButtonMap["RearDoor"] = {
    pos = Vector(-470+5,-16,48.4+4),
    ang = Angle(0,90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=642,h=1900, tooltip="", model = {
            var="door2",sndid="door2",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["RearDoor1"] = {
    pos = Vector(-470+5,15,48.4+4),
    ang = Angle(0,-90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=642,h=1900, tooltip=""}
    }
}
ENT.ClientProps["door2"] = {
    model = "models/metrostroi_train/81-717.6/door_back.mdl",
    pos = Vector(-467+0.09,15.75+0.43,-42.47),
    ang = Angle(0,90,0),
    hide=2,
}

--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false
--[[
ENT.ClientProps["brake013"] = {
    model = "models/metrostroi/81-717/brake.mdl",
    pos = Vector(443.0+16,25.9,-6+6),
    ang = Angle(0,-90,20),
    hideseat = 150,
}
ENT.ClientProps["brake334"] = {
    model = "models/metrostroi/81-717/brake334.mdl",
    pos = Vector(443.5+16,25.9,-7+6),
    ang = Angle(0,-90,20),
    hideseat = 150,
}
if not ENT.ClientSounds["br_013"] then ENT.ClientSounds["br_013"] = {} end --FIXME перенести нахуй в шеерд
table.insert(ENT.ClientSounds["br_013"],{"brake013",function(ent,_,var) return "br_013" end,1,1,50,1e3,Angle(-90,0,0)})
if not ENT.ClientSounds["br_334"] then ENT.ClientSounds["br_334"] = {} end
table.insert(ENT.ClientSounds["br_334"],{"brake334",function(ent,_,var) return "br_334_"..var end,1,1,50,1e3,Angle(-90,0,0)})


if not ENT.ClientSounds["DriverValveTLDisconnect"] then ENT.ClientSounds["DriverValveTLDisconnect"] = {} end
table.insert(ENT.ClientSounds["DriverValveTLDisconnect"],{"train_disconnect",function(ent,val) return val>0 and "pneumo_TL_open" or "pneumo_TL_disconnect" end,1,1,50,1e3,Angle(-90,0,0)})
ENT.ClientProps["brake334_body"] = {
    model = "models/metrostroi/81-717/brake334_body.mdl",
    pos = Vector(443.5+16,30,-10+6),
    ang = Angle(0,98,-20),
    hideseat = 800,
}
ENT.ClientProps["brake_disconnect"] = {
    model = "models/metrostroi/81-717/uava.mdl",
    pos = Vector(439.5+16,42+1,-20+6),
    ang = Angle(0,-90,0),
    color = Color(255,150,150),
    hideseat = 800,
}
ENT.ClientProps["train_disconnect"] = {
    model = "models/metrostroi/81-717/uava.mdl",
    pos = Vector(439.5+16,42-3,-20+4),
    ang = Angle(0,-90,0),
    color = Color(0,212,255),
    hideseat = 800,
}--]]
ENT.ClientProps["train_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(456.2,-8.5,64),
    ang = Angle(-90,180,180),
    hideseat=0.8,
}
ENT.ClientProps["brake_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_tm.mdl",
    pos = Vector(456.2,-8.5,64),
    ang = Angle(-90,180,180),
    hideseat=0.8,
}
ENT.ClientProps["brake_cylinder"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(456.2,-16.2,64.3),
    ang = Angle(-90,180,180),
    hideseat=0.8,
}
--------------------------------------------------------------------------------
ENT.ClientProps["voltmeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(456.2,9.5,62),
    ang = Angle(-90,180,180),
    hideseat=0.8,
    bscale = Vector(1.2,1.2,1.65)
}
ENT.ClientProps["ampermeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(456.2,15,62),
    ang = Angle(-90,180,180),
    hideseat=0.8,
    bscale = Vector(1.2,1.2,1.65)
}

--[[ENT.ClientProps["bortlamps1"] = {
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
}]]
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
local function GetDoorPosition(i,k,j)
	if j == 0
	then return Vector(362.4 - 35.0*k - 229.93*i,-65*(1-2*k),6.6)
	else return Vector(362.4  - 35.0*(1-k) - 229.93*i,-65*(1-2*k),6.6)
	end
end
for i=0,3 do
	for k=0,1 do
		ENT.ClientProps["door"..i.."x"..k.."a"] = {
			model = "models/metrostroi_train/81-717.6/door_a.mdl",
			pos = GetDoorPosition(i,k,0),
			ang = Angle(0,90 +180*k,0)
		}
		ENT.ClientProps["door"..i.."x"..k.."b"] = {
			model = "models/metrostroi_train/81-717.6/door_b.mdl",
			pos = GetDoorPosition(i,k,1),
			ang = Angle(0,90 +180*k,0)
		}
	end
end
--[[ENT.ClientProps["door0x1"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos1.mdl",
    pos = Vector(344+1,65.164,7.5),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door1x1"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos2.mdl",
    pos = Vector(115,65.164,7.5),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door2x1"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos3.mdl",
    pos = Vector(-121+6,65.164,7.5),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door3x1"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos4.mdl",
    pos = Vector(-351+6,65.164,7.5),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
ENT.ClientProps["door0x0"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos4.mdl",
    pos = Vector(338+7,-65.164,7.5),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door1x0"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos3.mdl",
    pos = Vector(108+7,-65.164,7.5),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door2x0"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos2.mdl",
    pos = Vector(-121+6,-65.164,7.5),
    ang = Angle(0,90,0),
    hide = 2.0,
}
ENT.ClientProps["door3x0"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_pos1.mdl",
    pos = Vector(-351+6,-65.164,7.5),
    ang = Angle(0,90,0),
    hide = 2.0,
}]]
for i = 0,12 do
    local b = 15--math.random()*15
    local g = 15--b+math.random()*(15-b)
    if math.random() > 0.4 then
        g = math.random()*15
        b = g
    else
        g = 15
        b = -10+math.random()*25
    end
    ENT.ClientProps["lamp1_"..i+1] = {
        model = "models/metrostroi_train/81-717.6/lamp3.mdl",
        pos = Vector(396.55 - 66.205*i,35.75,70.65),
		ang = Angle(0,90,179.75),
        color = Color(255,235+g,235+b),
        hideseat = 1.1,
    }
    ENT.ClientProps["lamp1_1_"..i+1] = {
        model = "models/metrostroi_train/81-717.6/lamp3.mdl",
        pos = Vector(396.55 - 66.205*i,-35.75,70.65),
		ang = Angle(0,90,179.75),
        color = Color(255,235+g,235+b),
        hideseat = 1.1,
    }
end
for i = 0,26 do
    --[[local r = 15--math.random()*15
    local g = 15--b+math.random()*(15-b)
    if math.random() > 0.4 then
        r = math.random()*15
        g = r
    else
        r = 15
        g = -20+math.random()*20
    end--]]
    ENT.ClientProps["lamp2_"..i+1] = {
        model = "models/metrostroi_train/81-717/lamps/lamp_typ2.mdl",
        pos = Vector(354.1 - 32.832*(i-2),0,68.2),
        ang = Angle(0,0,0),
        --color = Color(245+r,228+g,189),
        color = Color(255,255,255),
        hideseat = 1.1,
    }
end
for i=0,4 do
    ENT.ClientProps["TrainNumberL"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(41+16+i*6.6-5*6.6/2,67.4,-17.8),
        ang = Angle(0,180,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
    ENT.ClientProps["TrainNumberR"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(64+16-i*6.6-5*6.6/2,-67.4,-17.8),
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
	self.OnUpdateBySpawner(self)
    local count = math.max(4,math.ceil(math.log10(self.WagonNumber+1)))
    for i=0,4 do
        self:ShowHide("TrainNumberL"..i,i<count)
        self:ShowHide("TrainNumberR"..i,i<count)
        if i< count and self.WagonNumber then
            local leftNum,rightNum = self.ClientEnts["TrainNumberL"..i],self.ClientEnts["TrainNumberR"..i]
            local num = math.floor(self.WagonNumber%(10^(i+1))/10^i)
            if IsValid(leftNum) then
                leftNum:SetPos(self:LocalToWorld(Vector(41+16+i*6.6-count*6.6/2,67.3,-12.8)))
                leftNum:SetSkin(num)
            end
            if IsValid(rightNum) then
                rightNum:SetPos(self:LocalToWorld(Vector(64+16-i*6.6-count*6.6/2,-67.3,-12.8)))
                rightNum:SetSkin(num)
            end
        end
    end
	
	
	for i = 1,8 do
		self.DoorsAnims[i] = self:GetNW2Int("DoorsAnim"..i,15)
	end
	
end
function ENT:Initialize()
	self.BaseClass.Initialize(self)
	self.OnInitialize1(self)
	self.DoorsAnims = {}
	self.DistanceToPlayer = 0

    self.BaseClass.Initialize(self)
    self.CraneRamp = 0
    self.ReleasedPdT = 0
    self.FrontLeak = 0
    self.RearLeak = 0

    self.VentG1 = 0
    self.VentG2 = 0
	
end
--------------------------------------------------------------------------------
local lasttimetextureloaded = os.clock()
function ENT:Think()
    self.BaseClass.Think(self)
	lasttimetextureloaded = MetrostroiDotSixLoadTextures(self,lasttimetextureloaded) or lasttimetextureloaded	--костыль - сразу после накладывания стандартного скина накладываются мои
	
	self.DistanceToPlayer = self:GetPos():DistToSqr(LocalPlayer():GetPos())
	
    if self.FirstTick~=false and (not self.RenderClientEnts or self.CreatingCSEnts) then
        self.RKTimer = nil
        self.OldBPSNType = nil
        return
    end

    if self.Scheme ~= self:GetNW2Int("Scheme",1) then
        self.PassSchemesDone = false
        self.Scheme = self:GetNW2Int("Scheme",1)
    end
    if not self.PassSchemesDone then
        local scheme = Metrostroi.Skins["717_new_schemes"] and Metrostroi.Skins["717_new_schemes"][self.Scheme]
        if IsValid(self.ClientEnts.scheme0) then self.ClientEnts.scheme0:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme1) then self.ClientEnts.scheme1:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme2) then self.ClientEnts.scheme2:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme3) then self.ClientEnts.scheme3:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme4) then self.ClientEnts.scheme4:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme5) then self.ClientEnts.scheme5:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme6) then self.ClientEnts.scheme6:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme7) then self.ClientEnts.scheme7:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme8) then self.ClientEnts.scheme8:SetSubMaterial(0,scheme and scheme[1]) end
		if IsValid(self.ClientEnts.scheme9) then self.ClientEnts.scheme9:SetSubMaterial(0,scheme and scheme[1]) end
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
    self:ShowHide("handrails_old",not dot5)
    self:ShowHide("handrails_new",dot5)
    self:ShowHide("seats_old",not newSeats)
    self:ShowHide("seats_new",newSeats)

    local capOpened = self:GetPackedBool("CouchCap")
    self:ShowHide("seats_old_cap_o",capOpened and not newSeats)
    self:ShowHide("seats_old_cap",not capOpened and not newSeats)
    self:ShowHide("seats_new_cap_o",capOpened and newSeats)
    self:ShowHide("seats_new_cap",not capOpened and newSeats)
    self:HidePanel("couch_cap",capOpened)
    self:HidePanel("couch_cap_o",not capOpened)
    --self:HidePanel("AV_S",not capOpened)
    self:ShowHide("otsek_cap_r",not capOpened)

    local c013 = self:GetNW2Int("Crane",1)==2

    self:Animate("brake_line",      self:GetPackedRatio("BLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("train_line",      self:GetPackedRatio("TLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("brake_cylinder",  self:GetPackedRatio("BCPressure"),0.14, 0.875,  256,2)--,,0.03)
    self:Animate("voltmeter",       self:GetPackedRatio("BatteryVoltage"),0.601, 0.400)
    if self:GetPackedRatio("BatteryVoltage") > 0 then
        self:Animate("ampermeter",      0.47+math.Clamp((self:GetPackedRatio("BatteryVoltage")-0.44)/1.3,0,1),0.604, 0.398)
    else
        self:Animate("ampermeter",      0.5,0.604, 0.398)
    end

    local typ = self:GetNW2Int("LampType",1)
    if self.LampType ~= typ then
        self.LampType = typ
        for i=1,27 do
            if i<=13 then
                self:ShowHide("lamp1_"..i,typ==1)
                self:ShowHide("lamp1_1_"..i,typ==1)
            end
            self:ShowHide("lamp2_"..i,typ==2)
        end
        self:ShowHide("lamps1",typ==1)
        self:ShowHide("lamps2",typ==2)
    end
    for i = 1,13 do
        local colV = self:GetNW2Vector("lamp"..i)
        local col = Color(colV.x,colV.y,colV.z)
        self:ShowHideSmooth("lamp1_"..i,self:Animate("Lamp1_"..i,self:GetPackedBool("lightsActive"..i) and 1 or 0,0,1,6,false),col)
        local colV = self:GetNW2Vector("lamp_2_"..i)
        local col = Color(colV.x,colV.y,colV.z)
		self:ShowHideSmooth("lamp1_1_"..i,self:Animate("Lamp1_2_"..i,self:GetPackedBool("lightsActive_2_"..i) and 1 or 0,0,1,6,false),col)
    end

    local door1 = self:Animate("door1", self:GetPackedBool("FrontDoor") and 0.99 or 0,0,0.5, 4, 0.5)
    local door2 = self:Animate("door2", self:GetPackedBool("RearDoor") and (self:GetPackedBool("CouchCap") and 0.25 or 0.99) or 0,0,0.5, 4, 0.5)

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
    self:Animate("ParkingBrake",    self:GetPackedBool("ParkingBrake") and 1 or 0,0,1, 3, false)

    -- Main switch
    if self.LastGVValue ~= self:GetPackedBool("GV") then
        self.ResetTime = CurTime()+1.5
        self.LastGVValue = self:GetPackedBool("GV")
    end
    self:Animate("gv_wrench",self.LastGVValue and 1 or 0,0.5,0.9,128,1,false)
    self:ShowHideSmooth("gv_wrench",    CurTime() < self.ResetTime and 1 or 0.1)

	if not self.DoorStates then self.DoorStates = {} end
	if not self.DoorLoopStates then self.DoorLoopStates = {} end
	local j = 0
	for i=0,3 do
		for k=0,1 do
			j = j + 1
			local st = k==1 and "DoorL" or "DoorR"
			local doorstate = self:GetPackedBool(st)
			local id,sid = st..(i+1),"door"..i.."x"..k
			local state = self:GetPackedRatio(id)
			--print(state,self.DoorStates[state])
			if (state ~= 1 and state ~= 0) ~= self.DoorStates[id] then
				if doorstate and state < 1 or not doorstate and state > 0 then
					if state < 0.5 then 
						self:PlayOnce(sid.."s","",1,math.Rand(0.8,1.2))
						--LocalPlayer():ChatPrint( "PLAY OPENING START" ) 
					end
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
			local n_l = "door"..i.."x"..k.."a"
			local n_r = "door"..i.."x"..k.."b"
			local dlo = 1
			local dro = 1
			if self.Anims[n_l] then
				dlo = math.abs(state*2-(self.Anims[n_l] and self.Anims[n_l].oldival or 0))
				if dlo <= 0 and self.Anims[n_l].oldspeed then dlo = self.Anims[n_l].oldspeed end
				dlo = dlo * self.DoorsAnims[j]
			end
			self:Animate(n_l,state,0,1, dlo,false)--0.8 + (-0.2+0.4*math.random()),0)
			self:Animate(n_r,state,0,1, dlo,false)--0.8 + (-0.2+0.4*math.random()),0)
		end
	end
    --[[if not self.DoorStates then self.DoorStates = {} end
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
    end]]

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

    local speed = self:GetPackedRatio("Speed", 0)*100

	
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
    local parking_brake = self:GetPackedRatio("ParkingBrakePressure_dPdT",0)
    local parking_brake_abs = math.Clamp(math.abs(parking_brake)-0.3,0,1)
    if self.ParkingBrake1 ~= (parking_brake<1) then
        self.ParkingBrake1 = (parking_brake<1)
        if self.ParkingBrake1 then self:PlayOnce("parking_brake_en","bass",1,1) end
    end
    if self.ParkingBrake2 ~= (parking_brake>-0.8) then
        self.ParkingBrake2 = (parking_brake>-0.8)
        if self.ParkingBrake2 then self:PlayOnce("parking_brake_rel","bass",0.6,1) end
    end
    self:SetSoundState("parking_brake",parking_brake_abs,1)
    self.FrontLeak = math.Clamp(self.FrontLeak + 10*(-self:GetPackedRatio("FrontLeak")-self.FrontLeak)*dT,0,1)
    self.RearLeak = math.Clamp(self.RearLeak + 10*(-self:GetPackedRatio("RearLeak")-self.RearLeak)*dT,0,1)
    self:SetSoundState("front_isolation",self.FrontLeak,0.9+0.2*self.FrontLeak)
    self:SetSoundState("rear_isolation",self.RearLeak,0.9+0.2*self.RearLeak)

    -- Compressor
    self:SetSoundState("compressor",self:GetPackedBool("Compressor") and 0.6 or 0,1)
    self:SetSoundState("compressor2",self:GetPackedBool("Compressor") and 0.8 or 0,1)

    local v1state = self:GetPackedBool("M1_3") and 1 or 0
    local v2state = self:GetPackedBool("M4_7") and 1 or 0
    self.VentG1 = math.Clamp(self.VentG1 + dT/2.7*(v1state*2-1),0,1)
    self.VentG2 = math.Clamp(self.VentG2 + dT/2.7*(v2state*2-1),0,1)

    --[[for i=1,8 do
        if i<4 or i==8 then
            self:SetSoundState("vent"..i,self.VentG1,1)
        else
            self:SetSoundState("vent"..i,self.VentG2,1)
        end
    end]]

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

function ENT:DrawPost(special)
    local distance = self:GetPos():DistToSqr(LocalPlayer():GetPos())
	local maxdist = 1024 * 1024 *2 *2 *2 *2 *2
	if distance > maxdist then return end
	

	if special then return end
    self:DrawOnPanel("AirDistributor",function()
        draw.DrawText(self:GetNW2Bool("AD") and "Air Distributor ON" or "Air Distributor OFF","Trebuchet24",0,0,Color(0,0,0,255))
    end)
	
end
function ENT:OnPlay(soundid,location,range,pitch)
	self.OnPlay1(self,soundid,location,range,pitch)
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
