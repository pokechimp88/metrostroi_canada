local Map = game.GetMap() or "" 
if Map:find("gm_line_2") then 
Metrostroi.CurrentMap = "gm_line_2"
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
Metrostroi.AddLastStationTex("717", 200, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("717", 204, "models/metrostroi_skins/717_schemes/ttc/don_mills")
Metrostroi.AddLastStationTex("717", 205, "models/metrostroi_skins/717_schemes/ttc/special")
Metrostroi.AddLastStationTex("717", 206, "models/metrostroi_skins/717_schemes/ttc/wilson")
Metrostroi.AddLastStationTex("717", 207, "models/metrostroi_skins/717_schemes/ttc/eglinton")
Metrostroi.AddLastStationTex("717", 208, "models/metrostroi_skins/717_schemes/ttc/downtown")
Metrostroi.AddLastStationTex("710", 200, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("710", 204, "models/metrostroi_skins/717_schemes/ttc/don_mills")
Metrostroi.AddLastStationTex("710", 205, "models/metrostroi_skins/717_schemes/ttc/special")
Metrostroi.AddLastStationTex("710", 206, "models/metrostroi_skins/717_schemes/ttc/wilson")
Metrostroi.AddLastStationTex("710", 207, "models/metrostroi_skins/717_schemes/ttc/eglinton")
Metrostroi.AddLastStationTex("710", 208, "models/metrostroi_skins/717_schemes/ttc/downtown")
Metrostroi.AddLastStationTex("707", 200, "models/metrostroi_skins/717_schemes/ttc/yonge")
Metrostroi.AddLastStationTex("707", 204, "models/metrostroi_skins/717_schemes/ttc/don_mills")
Metrostroi.AddLastStationTex("707", 205, "models/metrostroi_skins/717_schemes/ttc/special")
Metrostroi.AddLastStationTex("707", 206, "models/metrostroi_skins/717_schemes/ttc/wilson")
Metrostroi.AddLastStationTex("707", 207, "models/metrostroi_skins/717_schemes/ttc/eglinton")
Metrostroi.AddLastStationTex("707", 208, "models/metrostroi_skins/717_schemes/ttc/downtown")

Metrostroi.AddPassSchemeTex("717_new", "TTC",{
	"metrostroi_skins/717_schemes/717_ttc",
})

Metrostroi.AddANSPAnnouncer("TTC Line 4", 
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
		to_yonge = {"subway_announcers/en_ttc/to_yonge.mp3", 3},
		to_don_mills = {"subway_announcers/en_ttc/to_don_mills.mp3", 3},
		door_open = {"subway_announcers/en_ttc/door_open.mp3", 1.5},
		next_stn = {"subway_announcers/en_ttc/next_stn.mp3", 2},

		bessarion = {"subway_announcers/en_ttc/bessarion.mp3", 2},
		yonge = {"subway_announcers/en_ttc/yonge.mp3", 2},		
		leslie = {"subway_announcers/en_ttc/leslie.mp3", 2},		
		bayview = {"subway_announcers/en_ttc/bayview.mp3", 2},
		don_mills = {"subway_announcers/en_ttc/don_mills.mp3", 2},

	},
	{
		{
			LED = {6,6,6,6,6},
			Name = "Sheppard Line",
			spec_last = {"announcer_ready"},
			spec_wait = {{"announcer_ready"},{"announcer_ready"}},
			Loop = false,
			{
				200, "Sheppard-Yonge",
				arrlast = {nil, {"prib","yonge", "last",1, "door_open"}, "yonge"},
				dep = {{"odz","next_stn","bayview"},nil},

			},
			{
				201, "Bayview",
                arr = {{"prib","bayview",2, "door_open","to_don_mills"},{"prib","bayview",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","bessarion"},{"odz","next_stn","yonge"}},
			},
			{
				202, "Bessarion",
                arr = {{"prib","bessarion",2, "door_open","to_don_mills"},{"prib","bessarion",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","leslie"},{"odz","next_stn","bayview"}},
			},
			{
				203, "Leslie",
                arr = {{"prib","leslie",2, "door_open","to_don_mills"},{"prib","leslie",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","don_mills"},{"odz","next_stn","bessarion"}},
               
			},
			{
				204, "Don Mills",
				arrlast = {{"prib","don_mills","last",1, "door_open"}, nil, "don_mills"},
				dep = {nil, {"odz","next_stn","leslie"}},
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
		to_yonge = {"subway_announcers/en_ttc/to_yonge.mp3", 3},
		to_don_mills = {"subway_announcers/en_ttc/to_don_mills.mp3", 3},
		door_open = {"subway_announcers/en_ttc/door_open.mp3", 1.5},
		next_stn = {"subway_announcers/en_ttc/next_stn.mp3", 2},

		bessarion = {"subway_announcers/en_ttc/bessarion.mp3", 2},
		yonge = {"subway_announcers/en_ttc/yonge.mp3", 2},	
		leslie = {"subway_announcers/en_ttc/leslie.mp3", 2},		
		bayview = {"subway_announcers/en_ttc/bayview.mp3", 2},
		don_mills = {"subway_announcers/en_ttc/don_mills.mp3", 2},

	},
	{
		{
			LED = {6,6,6,6,6},
			Name = "Sheppard Line",
			spec_last = {"announcer_ready"},
			spec_wait = {{"announcer_ready"},{"announcer_ready"}},
			Loop = false,
			{
				200, "Sheppard-Yonge",
				arrlast = {nil, {"prib","yonge", "last",1, "door_open"}, "yonge"},
				dep = {{"odz","next_stn","bayview"},nil},

			},
			{
				201, "Bayview",
                arr = {{"prib","bayview",2, "door_open","to_don_mills"},{"prib","bayview",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","bessarion"},{"odz","next_stn","yonge"}},
			},
			{
				202, "Bessarion",
                arr = {{"prib","bessarion",2, "door_open","to_don_mills"},{"prib","bessarion",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","leslie"},{"odz","next_stn","bayview"}},
			},
			{
				203, "Leslie",
                arr = {{"prib","leslie",2, "door_open","to_don_mills"},{"prib","leslie",2, "door_open","to_yonge"}},
				dep = {{"odz","next_stn","don_mills"},{"odz","next_stn","bessarion"}},
               
			},
			{
				204, "Don Mills",
				arrlast = {{"prib","don_mills","last",1, "door_open"}, nil, "don_mills"},
				dep = {nil, {"odz","next_stn","leslie"}},
			}
		}
	}
)