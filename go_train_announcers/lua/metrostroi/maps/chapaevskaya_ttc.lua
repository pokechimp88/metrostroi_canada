local Map = game.GetMap() or "" 
if Map:find("gm_metro") and Map:find("chapaevskaya") then 
Metrostroi.CurrentMap = "chapaevskaya_line_a"
Metrostroi.PlatformMap = "metrostroi"
else 
return 
end

Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/ttc/nis")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/ttc/out_of_service")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/ttc/nis")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/ttc/out_of_service")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/ttc/nis")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/ttc/out_of_service")
Metrostroi.AddLastStationTex("717", 101, "models/metrostroi_skins/717_schemes/ttc/kennedy")
Metrostroi.AddLastStationTex("717", 102, "models/metrostroi_skins/717_schemes/ttc/woodbine")
Metrostroi.AddLastStationTex("717", 105, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("717", 106, "models/metrostroi_skins/717_schemes/ttc/bay")
Metrostroi.AddLastStationTex("717", 107, "models/metrostroi_skins/717_schemes/ttc/st_george")
Metrostroi.AddLastStationTex("717", 108, "models/metrostroi_skins/717_schemes/ttc/spadina")
Metrostroi.AddLastStationTex("717", 109, "models/metrostroi_skins/717_schemes/ttc/keele")
Metrostroi.AddLastStationTex("717", 110, "models/metrostroi_skins/717_schemes/ttc/kipling")
Metrostroi.AddLastStationTex("717", 112, "models/metrostroi_skins/717_schemes/ttc/downtown")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/ttc/special")
Metrostroi.AddLastStationTex("710", 101, "models/metrostroi_skins/717_schemes/ttc/kennedy")
Metrostroi.AddLastStationTex("710", 102, "models/metrostroi_skins/717_schemes/ttc/woodbine")
Metrostroi.AddLastStationTex("710", 105, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("710", 106, "models/metrostroi_skins/717_schemes/ttc/bay")
Metrostroi.AddLastStationTex("710", 107, "models/metrostroi_skins/717_schemes/ttc/st_george")
Metrostroi.AddLastStationTex("710", 108, "models/metrostroi_skins/717_schemes/ttc/spadina")
Metrostroi.AddLastStationTex("710", 109, "models/metrostroi_skins/717_schemes/ttc/keele")
Metrostroi.AddLastStationTex("710", 110, "models/metrostroi_skins/717_schemes/ttc/kipling")
Metrostroi.AddLastStationTex("710", 112, "models/metrostroi_skins/717_schemes/ttc/downtown")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/ttc/special")
Metrostroi.AddLastStationTex("707", 101, "models/metrostroi_skins/717_schemes/ttc/kennedy")
Metrostroi.AddLastStationTex("707", 102, "models/metrostroi_skins/717_schemes/ttc/woodbine")
Metrostroi.AddLastStationTex("707", 105, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("707", 106, "models/metrostroi_skins/717_schemes/ttc/bay")
Metrostroi.AddLastStationTex("707", 107, "models/metrostroi_skins/717_schemes/ttc/st_george")
Metrostroi.AddLastStationTex("707", 108, "models/metrostroi_skins/717_schemes/ttc/spadina")
Metrostroi.AddLastStationTex("707", 109, "models/metrostroi_skins/717_schemes/ttc/keele")
Metrostroi.AddLastStationTex("707", 110, "models/metrostroi_skins/717_schemes/ttc/kipling")
Metrostroi.AddLastStationTex("707", 112, "models/metrostroi_skins/717_schemes/ttc/downtown")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/ttc/special")

Metrostroi.AddPassSchemeTex("717_new", "TTC",{
	"metrostroi_skins/717_schemes/717_ttc",
})

Metrostroi.AddANSPAnnouncer("TTC Line 2", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/en_ttc/odz.mp3", 8},
		prib = {"subway_announcers/en_ttc/arriving.mp3", 1},
		last = {"subway_announcers/en_ttc/terminal.mp3", 2},
		train_goes_to = {"subway_announcers/en_ttc/train_goes_to.mp3", 4},
		to_kennedy = {"subway_announcers/en_ttc/to_kennedy.mp3", 3},
		to_kipling = {"subway_announcers/en_ttc/to_kipling.mp3", 3},
		door_open = {"subway_announcers/en_ttc/door_open.mp3", 1.5},
		next_stn = {"subway_announcers/en_ttc/next_stn.mp3", 2},

		castle_frank = {"subway_announcers/en_ttc/castle_frank.mp3", 2.5},
		yonge = {"subway_announcers/en_ttc/yonge.mp3", 2},
		bay = {"subway_announcers/en_ttc/bay.mp3", 2},
		st_george = {"subway_announcers/en_ttc/st_george.mp3", 2.5},	
		chester = {"subway_announcers/en_ttc/chester.mp3", 2},		
		sherbourne = {"subway_announcers/en_ttc/sherbourne.mp3", 2},		
		broadview = {"subway_announcers/en_ttc/broadview.mp3", 2},
		spadina = {"subway_announcers/en_ttc/spadina.mp3", 2},

	},
	{
		{
			LED = {3,4,4,4,4,4,4,3},
			Name = "Bloor-Danforth Line",
			spec_last = {"announcer_ready"},
			spec_wait = {{"announcer_ready"},{"announcer_ready"}},
			Loop = false,
			{
				101, "Chester",
				arrlast = {nil, {"prib","chester", "last",1, "door_open","to_kennedy"}, "chester"},
				dep = {{"odz","next_stn","broadview"},nil},

			},
			{
				102, "Broadview",
                arr = {{"prib","broadview",2, "door_open","to_kipling"},{"prib","broadview",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","castle_frank"},{"odz","next_stn","chester"}},
			},
			{
				103, "Castle Frank",
                arr = {{"prib","castle_frank",2, "door_open","to_kipling"},{"prib","castle_frank",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","sherbourne"},{"odz","next_stn","broadview"}},
			},
			{
				104, "Sherbourne",
                arr = {{"prib","sherbourne",2, "door_open","to_kipling"},{"prib","sherbourne",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","yonge"},{"odz","next_stn","castle_frank"}},
               
			},
			{
				105, "Bloor-Yonge",
                arr = {{"prib","yonge",2, "door_open","to_kipling"},{"prib","yonge",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","bay"},{"odz","next_stn","sherbourne"}},
			},
			{
				106, "Bay",
                arr = {{"prib","bay",2, "door_open","to_kipling"},{"prib","bay",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","st_george"},{"odz","next_stn","yonge"}},
				arrlast = {{"prib","bay","last"},{"prib","bay","last"}, "bay"},
			    not_last = {2, "door_open","train_goes_to", "bay"},
			},
			{
				107, "St. George",
                arr = {{"prib","st_george",2, "door_open","to_kipling"},{"prib","st_george",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","spadina"},{"odz","next_stn","bay"}},
			},
			{
				108, "Spadina",
				arrlast = {{"prib","spadina","last",1, "door_open","to_kipling"}, nil, "spadina"},
				dep = {nil, {"odz","next_stn","st_george"}},
			}
		}
	}
)
Metrostroi.SetRRIAnnouncer( 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/en_ttc/odz.mp3", 8},
		prib = {"subway_announcers/en_ttc/arriving.mp3", 1},
		last = {"subway_announcers/en_ttc/terminal.mp3", 2},
		train_goes_to = {"subway_announcers/en_ttc/train_goes_to.mp3", 4},
		to_kennedy = {"subway_announcers/en_ttc/to_kennedy.mp3", 3},
		to_kipling = {"subway_announcers/en_ttc/to_kipling.mp3", 3},
		door_open = {"subway_announcers/en_ttc/door_open.mp3", 1.5},
		next_stn = {"subway_announcers/en_ttc/next_stn.mp3", 2},

		castle_frank = {"subway_announcers/en_ttc/castle_frank.mp3", 2},
		yonge = {"subway_announcers/en_ttc/yonge.mp3", 2},
		bay = {"subway_announcers/en_ttc/bay.mp3", 2},
		st_george = {"subway_announcers/en_ttc/st_george.mp3", 2},	
		chester = {"subway_announcers/en_ttc/chester.mp3", 2},		
		sherbourne = {"subway_announcers/en_ttc/sherbourne.mp3", 2},		
		broadview = {"subway_announcers/en_ttc/broadview.mp3", 2},
		spadina = {"subway_announcers/en_ttc/spadina.mp3", 2},

	},
	{
		{
			LED = {3,4,4,4,4,4,4,3},
			Name = "Bloor-Danforth Line",
			spec_last = {"announcer_ready"},
			spec_wait = {{"announcer_ready"},{"announcer_ready"}},
			Loop = false,
			{
				101, "Chester",
				arrlast = {nil, {"prib","chester", "last",1, "door_open","to_kennedy"}, "chester"},
				dep = {{"odz","next_stn","broadview"},nil},

			},
			{
				102, "Broadview",
                arr = {{"prib","broadview",2, "door_open","to_kipling"},{"prib","broadview",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","castle_frank"},{"odz","next_stn","chester"}},
			},
			{
				103, "Castle Frank",
                arr = {{"prib","castle_frank",2, "door_open","to_kipling"},{"prib","castle_frank",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","sherbourne"},{"odz","next_stn","broadview"}},
			},
			{
				104, "Sherbourne",
                arr = {{"prib","sherbourne",2, "door_open","to_kipling"},{"prib","sherbourne",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","yonge"},{"odz","next_stn","castle_frank"}},
               
			},
			{
				105, "Bloor-Yonge",
                arr = {{"prib","yonge",2, "door_open","to_kipling"},{"prib","yonge",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","bay"},{"odz","next_stn","sherbourne"}},
			},
			{
				106, "Bay",
                arr = {{"prib","bay",2, "door_open","to_kipling"},{"prib","bay",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","st_george"},{"odz","next_stn","yonge"}},
				arrlast = {{"prib","bay","last"},{"prib","bay","last"}, "bay"},
			    not_last = {2, "door_open","train_goes_to", "bay"},
			},
			{
				107, "St. George",
                arr = {{"prib","st_george",2, "door_open","to_kipling"},{"prib","st_george",2, "door_open","to_kennedy"}},
				dep = {{"odz","next_stn","spadina"},{"odz","next_stn","bay"}},
			},
			{
				108, "Spadina",
				arrlast = {{"prib","spadina","last",1, "door_open","to_kipling"}, nil, "spadina"},
				dep = {nil, {"odz","next_stn","st_george"}},
			}
		}
	}
)