local Map = game.GetMap() or "" 
if Map:find("gm_metro") and Map:find("m3") then 
Metrostroi.CurrentMap = "metro_m3"
Metrostroi.PlatformMap = "metrostroi"
else 
return 
end

Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm/dep")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm/dep")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("717", 301, "models/metrostroi_skins/717_schemes/stm_old/jolicoeur")
Metrostroi.AddLastStationTex("717", 302, "models/metrostroi_skins/717_schemes/stm_old/verdun")
Metrostroi.AddLastStationTex("717", 306, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("710", 301, "models/metrostroi_skins/717_schemes/stm_old/jolicoeur")
Metrostroi.AddLastStationTex("710", 302, "models/metrostroi_skins/717_schemes/stm_old/verdun")
Metrostroi.AddLastStationTex("710", 306, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("707", 301, "models/metrostroi_skins/717_schemes/stm_old/jolicoeur")
Metrostroi.AddLastStationTex("707", 302, "models/metrostroi_skins/717_schemes/stm_old/verdun")
Metrostroi.AddLastStationTex("707", 306, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("717", 301, "models/metrostroi_skins/717_schemes/stm/jolicoeur")
Metrostroi.AddLastStationTex("717", 302, "models/metrostroi_skins/717_schemes/stm/verdun")
Metrostroi.AddLastStationTex("717", 306, "models/metrostroi_skins/717_schemes/stm/lionel")
Metrostroi.AddLastStationTex("717", 300, "models/metrostroi_skins/717_schemes/stm/angrignon")
Metrostroi.AddLastStationTex("717", 307, "models/metrostroi_skins/717_schemes/stm/beaugrand")
Metrostroi.AddLastStationTex("717", 300, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("717", 307, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")
Metrostroi.AddLastStationTex("710", 300, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("710", 307, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")
Metrostroi.AddLastStationTex("707", 300, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("707", 307, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")

Metrostroi.AddPassSchemeTex("722", "MTL",{
	"models/metrostroi_skins/722_schemes/mtl/722_m3",
	"models/metrostroi_skins/722_schemes/mtl/722_m3_inv",
})

Metrostroi.AddPassSchemeTex("717_new", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddANSPAnnouncer("STM Ligne Verte", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4.5},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/green/welcome_aboard.mp3", 4},

		p_verdun = {"subway_announcers/fr_stm/green/next_verdun.mp3", 3},
		p_lasalle = {"subway_announcers/fr_stm/green/next_lasalle.mp3", 3},
		p_charlevoix = {"subway_announcers/fr_stm/green/next_charlevoix.mp3", 3},		
		p_eglise = {"subway_announcers/fr_stm/green/next_eglise.mp3", 3},		
		p_jolicoeur = {"subway_announcers/fr_stm/green/next_jolicoeur.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		verdun = {"subway_announcers/fr_stm/green/verdun.mp3", 2},
		lasalle = {"subway_announcers/fr_stm/green/lasalle.mp3", 1},
		charlevoix = {"subway_announcers/fr_stm/green/charlevoix.mp3", 2},			
		eglise = {"subway_announcers/fr_stm/green/eglise.mp3", 2},		
		jolicoeur = {"subway_announcers/fr_stm/green/jolicoeur.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_verdun = {"subway_announcers/fr_stm/green/sp_verdun.mp3", 1},		
	
	},
	{
		{
			LED = {5,5,5,5,5,5},
			Name = "Ligne Verte STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				301, "Jolicoeur",
                arrlast = {nil,{"jolicoeur","last"}, "jolicoeur"},
				dep = {{"odz","bienvenue","p_verdun"},nil},
			},
			{
				302, "Verdun",
                arr = {{"verdun"},{"verdun"}},
				dep = {{"odz","p_eglise"},{"odz","p_jolicoeur"}},
				arrlast = {{"verdun","last"},{"verdun","last"}, "sp_verdun"},
			    not_last = {0.2, "train_goes_to", "sp_verdun"},
			},
			{
				303, "De l'Eglise",
                arr = {{"eglise",},{"eglise"}},
				dep = {{"odz","p_lasalle"},{"odz","p_verdun"}},
               
			},
			{
				304, "Lasalle",
                arr = {{"lasalle"},{"lasalle"}},
				dep = {{"odz","p_charlevoix"},{"odz","p_eglise"}},
			},
			{
				305, "Charlevoix",
                arr = {{"charlevoix"},{"charlevoix"}},
				dep = {{"odz","p_lionel"},{"odz","p_lasalle"}},
			},
			{
				306, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_charlevoix"}},
			}
		}
	}
)
Metrostroi.AddSarmatUPOAnnouncer("STM Ligne Verte", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		tone = {"subway_announcers/en_go_c1/click.mp3", 0.1},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/green/welcome_aboard.mp3", 4},

		p_verdun = {"subway_announcers/fr_stm/green/next_verdun.mp3", 3},
		p_lasalle = {"subway_announcers/fr_stm/green/next_lasalle.mp3", 3},
		p_charlevoix = {"subway_announcers/fr_stm/green/next_charlevoix.mp3", 3},		
		p_eglise = {"subway_announcers/fr_stm/green/next_eglise.mp3", 3},		
		p_jolicoeur = {"subway_announcers/fr_stm/green/next_jolicoeur.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		verdun = {"subway_announcers/fr_stm/green/verdun.mp3", 2},
		lasalle = {"subway_announcers/fr_stm/green/lasalle.mp3", 1},
		charlevoix = {"subway_announcers/fr_stm/green/charlevoix.mp3", 2},			
		eglise = {"subway_announcers/fr_stm/green/eglise.mp3", 2},		
		jolicoeur = {"subway_announcers/fr_stm/green/jolicoeur.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_verdun = {"subway_announcers/fr_go/green/sp_verdun.mp3", 1},		
	
	},
	{
		{
			LED = {6,5,5,5,5,6},
			Name = "Ligne Verte STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				301, "Jolicoeur",
                arrlast = {nil,{"jolicoeur","last"}, "jolicoeur"},
				dep = {{"odz","bienvenue","p_verdun"},nil},
			},
			{
				302, "Verdun",
                arr = {{"verdun"},{"verdun"}},
				dep = {{"odz","p_eglise"},{"odz","p_jolicoeur"}},
				arrlast = {{"verdun","last"},{"verdun","last"}, "sp_verdun"},
			    not_last = {0.2, "train_goes_to", "sp_verdun"},
			},
			{
				303, "De l'Eglise",
                arr = {{"eglise",},{"eglise"}},
				dep = {{"odz","p_lasalle"},{"odz","p_verdun"}},
               
			},
			{
				304, "Lasalle",
                arr = {{"lasalle"},{"lasalle"}},
				dep = {{"odz","p_charlevoix"},{"odz","p_eglise"}},
			},
			{
				305, "Charlevoix",
                arr = {{"charlevoix"},{"charlevoix"}},
				dep = {{"odz","p_lionel"},{"odz","p_lasalle"}},
			},
			{
				306, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_charlevoix"}},
			}
		}
	}
)
Metrostroi.SetUPOAnnouncer(
	{
		name = "Ligne Verte STM",
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/green/welcome_aboard.mp3", 4},

		p_verdun = {"subway_announcers/fr_stm/green/next_verdun.mp3", 3},
		p_lasalle = {"subway_announcers/fr_stm/green/next_lasalle.mp3", 3},
		p_charlevoix = {"subway_announcers/fr_stm/green/next_charlevoix.mp3", 3},		
		p_eglise = {"subway_announcers/fr_stm/green/next_eglise.mp3", 3},		
		p_jolicoeur = {"subway_announcers/fr_stm/green/next_jolicoeur.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		verdun = {"subway_announcers/fr_stm/green/verdun.mp3", 2},
		lasalle = {"subway_announcers/fr_stm/green/lasalle.mp3", 1},
		charlevoix = {"subway_announcers/fr_stm/green/charlevoix.mp3", 2},			
		eglise = {"subway_announcers/fr_stm/green/eglise.mp3", 2},		
		jolicoeur = {"subway_announcers/fr_stm/green/jolicoeur.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_verdun = {"subway_announcers/fr_go/green/sp_verdun.mp3", 1},		
	
	},
	{
			{
				301, "Jolicoeur",
                arrlast = {nil,{"jolicoeur","last"}, "jolicoeur"},
				dep = {{"odz","bienvenue","p_verdun"},nil},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				302, "Verdun",
                arr = {{"verdun"},{"verdun"}},
				dep = {{"odz","p_eglise"},{"odz","p_jolicoeur"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				303, "De l'Eglise",
                arr = {{"eglise",},{"eglise"}},
				dep = {{"odz","p_lasalle"},{"odz","p_verdun"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
               
			},
			{
				304, "Lasalle",
                arr = {{"lasalle"},{"lasalle"}},
				dep = {{"odz","p_charlevoix"},{"odz","p_eglise"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				305, "Charlevoix",
                arr = {{"charlevoix"},{"charlevoix"}},
				dep = {{"odz","p_lionel"},{"odz","p_lasalle"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				306, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_charlevoix"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			}
		}
)