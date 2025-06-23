local Map = game.GetMap() or "" 
if Map:find("gm_budapest") and Map:find("m5") then 
Metrostroi.CurrentMap = "budapest_m5"
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
Metrostroi.AddLastStationTex("717", 300, "models/metrostroi_skins/717_schemes/stm_old/berri_uqam")
Metrostroi.AddLastStationTex("717", 302, "models/metrostroi_skins/717_schemes/stm_old/place_arts")
Metrostroi.AddLastStationTex("717", 305, "models/metrostroi_skins/717_schemes/stm_old/concordia")
Metrostroi.AddLastStationTex("717", 307, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("707", 300, "models/metrostroi_skins/717_schemes/stm_old/berri_uqam")
Metrostroi.AddLastStationTex("707", 302, "models/metrostroi_skins/717_schemes/stm_old/place_arts")
Metrostroi.AddLastStationTex("707", 305, "models/metrostroi_skins/717_schemes/stm_old/concordia")
Metrostroi.AddLastStationTex("707", 307, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("710", 300, "models/metrostroi_skins/717_schemes/stm_old/berri_uqam")
Metrostroi.AddLastStationTex("710", 302, "models/metrostroi_skins/717_schemes/stm_old/place_arts")
Metrostroi.AddLastStationTex("710", 305, "models/metrostroi_skins/717_schemes/stm_old/concordia")
Metrostroi.AddLastStationTex("710", 307, "models/metrostroi_skins/717_schemes/stm_old/lionel")
Metrostroi.AddLastStationTex("717", 300, "models/metrostroi_skins/717_schemes/stm/berri_uqam")
Metrostroi.AddLastStationTex("717", 302, "models/metrostroi_skins/717_schemes/stm/place_arts")
Metrostroi.AddLastStationTex("717", 305, "models/metrostroi_skins/717_schemes/stm/concordia")
Metrostroi.AddLastStationTex("717", 307, "models/metrostroi_skins/717_schemes/stm/lionel")
Metrostroi.AddLastStationTex("717", 308, "models/metrostroi_skins/717_schemes/stm/angrignon")
Metrostroi.AddLastStationTex("717", 299, "models/metrostroi_skins/717_schemes/stm/beaugrand")
Metrostroi.AddLastStationTex("717", 308, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("717", 299, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")
Metrostroi.AddLastStationTex("710", 308, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("710", 299, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")
Metrostroi.AddLastStationTex("707", 308, "models/metrostroi_skins/717_schemes/stm_old/angrignon")
Metrostroi.AddLastStationTex("707", 299, "models/metrostroi_skins/717_schemes/stm_old/beaugrand")

Metrostroi.AddPassSchemeTex("722", "MTL",{
	"models/metrostroi_skins/722_schemes/mtl/722_m5",
	"models/metrostroi_skins/722_schemes/mtl/722_m5_inv",
})

Metrostroi.AddPassSchemeTex("717_new", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddPassSchemeTex("717_spb", "MTL",{
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

		p_place_arts = {"subway_announcers/fr_stm/green/next_place_arts.mp3", 3},
		p_peel = {"subway_announcers/fr_stm/green/next_peel.mp3", 3},
		p_guy_concordia = {"subway_announcers/fr_stm/green/next_guy_concordia.mp3", 3},
		p_atwater = {"subway_announcers/fr_stm/green/next_atwater.mp3", 3},
		p_berri = {"subway_announcers/fr_stm/green/next_berri.mp3", 8},		
		p_mcgill = {"subway_announcers/fr_stm/green/next_mcgill.mp3", 3},		
		p_st_laurent = {"subway_announcers/fr_stm/green/next_st_laurent.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		place_arts = {"subway_announcers/fr_stm/green/place_arts.mp3", 2},
		peel = {"subway_announcers/fr_stm/green/peel.mp3", 1},
		guy_concordia = {"subway_announcers/fr_stm/green/guy_concordia.mp3", 2},
		atwater = {"subway_announcers/fr_stm/green/atwater.mp3", 2},	
		berri = {"subway_announcers/fr_stm/green/berri.mp3", 2},		
		mcgill = {"subway_announcers/fr_stm/green/mcgill.mp3", 2},		
		st_laurent = {"subway_announcers/fr_stm/green/st_laurent.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_place_arts = {"subway_announcers/fr_stm/green/sp_place_arts.mp3", 1},	
		sp_guy_concordia = {"subway_announcers/fr_stm/green/sp_guy_concordia.mp3", 1},		
	
	},
	{
		{
			LED = {3,4,4,4,4,4,4,3},
			Name = "Ligne Verte STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				300, "Berri-UQAM",
				arrlast = {nil, {"berri", "last"}, "berri"},
				dep = {{"odz","bienvenue","p_st_laurent"},nil},
			},
			{
				301, "Saint-Laurent",
                arr = {{"st_laurent"},{"st_laurent"}},
				dep = {{"odz","p_place_arts"},{"odz","p_berri"}},
			},
			{
				302, "Place-des-Arts",
                arr = {{"place_arts"},{"place_arts"}},
				dep = {{"odz","p_mcgill"},{"odz","p_st_laurent"}},
				arrlast = {{"place_arts","last"},{"place_arts","last"}, "sp_place_arts"},
			    not_last = {0.2, "train_goes_to", "sp_place_arts"},
			},
			{
				303, "McGill",
                arr = {{"mcgill",},{"mcgill"}},
				dep = {{"odz","p_peel"},{"odz","p_place_arts"}},
               
			},
			{
				304, "Peel",
                arr = {{"peel"},{"peel"}},
				dep = {{"odz","p_guy_concordia"},{"odz","p_mcgill"}},
			},
			{
				305, "Guy-Concordia",
                arr = {{"guy_concordia"},{"guy_concordia"}},
				dep = {{"odz","p_atwater"},{"odz","p_peel"}},
				arrlast = {{"guy_concordia","last"},{"guy_concordia","last"}, "sp_guy_concordia"},
			    not_last = {0.2, "train_goes_to", "sp_guy_concordia"},
			},
			{
				306, "Atwater",
                arr = {{"atwater"},{"atwater"}},
				dep = {{"odz","p_lionel"},{"odz","p_guy_concordia"}},
			},
			{
				307, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_atwater"}},
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

		p_place_arts = {"subway_announcers/fr_stm/green/next_place_arts.mp3", 3},
		p_peel = {"subway_announcers/fr_stm/green/next_peel.mp3", 3},
		p_guy_concordia = {"subway_announcers/fr_stm/green/next_guy_concordia.mp3", 3},
		p_atwater = {"subway_announcers/fr_stm/green/next_atwater.mp3", 3},
		p_berri = {"subway_announcers/fr_stm/green/next_berri.mp3", 8},		
		p_mcgill = {"subway_announcers/fr_stm/green/next_mcgill.mp3", 3},		
		p_st_laurent = {"subway_announcers/fr_stm/green/next_st_laurent.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		place_arts = {"subway_announcers/fr_stm/green/place_arts.mp3", 2},
		peel = {"subway_announcers/fr_stm/green/peel.mp3", 1},
		guy_concordia = {"subway_announcers/fr_stm/green/guy_concordia.mp3", 2},
		atwater = {"subway_announcers/fr_stm/green/atwater.mp3", 2},	
		berri = {"subway_announcers/fr_stm/green/berri.mp3", 2},		
		mcgill = {"subway_announcers/fr_stm/green/mcgill.mp3", 2},		
		st_laurent = {"subway_announcers/fr_stm/green/st_laurent.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_place_arts = {"subway_announcers/fr_go/green/sp_place_arts.mp3", 1},	
		sp_guy_concordia = {"subway_announcers/fr_go/green/sp_guy_concordia.mp3", 1},		
	
	},
	{
		{
			LED = {4,4,4,4,4,4,4,4},
			Name = "Ligne Verte STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				300, "Berri-UQAM",
				arrlast = {nil, {"berri", "last"}, "berri"},
				dep = {{"odz","bienvenue","p_st_laurent"},nil},
			},
			{
				301, "Saint-Laurent",
                arr = {{"st_laurent"},{"st_laurent"}},
				dep = {{"odz","p_place_arts"},{"odz","p_berri"}},
			},
			{
				302, "Place-des-Arts",
                arr = {{"place_arts"},{"place_arts"}},
				dep = {{"odz","p_mcgill"},{"odz","p_st_laurent"}},
				arrlast = {{"place_arts","last"},{"place_arts","last"}, "sp_place_arts"},
			    not_last = {0.2, "train_goes_to", "sp_place_arts"},
			},
			{
				303, "McGill",
                arr = {{"mcgill",},{"mcgill"}},
				dep = {{"odz","p_peel"},{"odz","p_place_arts"}},
               
			},
			{
				304, "Peel",
                arr = {{"peel"},{"peel"}},
				dep = {{"odz","p_guy_concordia"},{"odz","p_mcgill"}},
			},
			{
				305, "Guy-Concordia",
                arr = {{"guy_concordia"},{"guy_concordia"}},
				dep = {{"odz","p_atwater"},{"odz","p_peel"}},
				arrlast = {{"guy_concordia","last"},{"guy_concordia","last"}, "sp_guy_concordia"},
			    not_last = {0.2, "train_goes_to", "sp_guy_concordia"},
			},
			{
				306, "Atwater",
                arr = {{"atwater"},{"atwater"}},
				dep = {{"odz","p_lionel"},{"odz","p_guy_concordia"}},
			},
			{
				307, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_atwater"}},
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

		p_place_arts = {"subway_announcers/fr_stm/green/next_place_arts.mp3", 3},
		p_peel = {"subway_announcers/fr_stm/green/next_peel.mp3", 3},
		p_guy_concordia = {"subway_announcers/fr_stm/green/next_guy_concordia.mp3", 3},
		p_atwater = {"subway_announcers/fr_stm/green/next_atwater.mp3", 3},
		p_berri = {"subway_announcers/fr_stm/green/next_berri.mp3", 8},		
		p_mcgill = {"subway_announcers/fr_stm/green/next_mcgill.mp3", 3},		
		p_st_laurent = {"subway_announcers/fr_stm/green/next_st_laurent.mp3", 3},
		p_lionel = {"subway_announcers/fr_stm/green/next_lionel.mp3", 10},

		place_arts = {"subway_announcers/fr_stm/green/place_arts.mp3", 2},
		peel = {"subway_announcers/fr_stm/green/peel.mp3", 1},
		guy_concordia = {"subway_announcers/fr_stm/green/guy_concordia.mp3", 2},
		atwater = {"subway_announcers/fr_stm/green/atwater.mp3", 2},	
		berri = {"subway_announcers/fr_stm/green/berri.mp3", 2},		
		mcgill = {"subway_announcers/fr_stm/green/mcgill.mp3", 2},		
		st_laurent = {"subway_announcers/fr_stm/green/st_laurent.mp3", 2},
		lionel = {"subway_announcers/fr_stm/green/lionel.mp3", 2},

		sp_place_arts = {"subway_announcers/fr_go/green/sp_place_arts.mp3", 1},	
		sp_guy_concordia = {"subway_announcers/fr_go/green/sp_guy_concordia.mp3", 1},		
	
	},
	{
			{
				300, "Berri-UQAM",
				arrlast = {nil, {"berri", "last"}, "berri"},
				dep = {{"odz","bienvenue","p_st_laurent"},nil},
			},
			{
				301, "Saint-Laurent",
                arr = {{"st_laurent"},{"st_laurent"}},
				dep = {{"odz","p_place_arts"},{"odz","p_berri"}},
			},
			{
				302, "Place-des-Arts",
                arr = {{"place_arts"},{"place_arts"}},
				dep = {{"odz","p_mcgill"},{"odz","p_st_laurent"}},
				arrlast = {{"place_arts","last"},{"place_arts","last"}, "sp_place_arts"},
			    not_last = {0.2, "train_goes_to", "sp_place_arts"},
			},
			{
				303, "McGill",
                arr = {{"mcgill",},{"mcgill"}},
				dep = {{"odz","p_peel"},{"odz","p_place_arts"}},
               
			},
			{
				304, "Peel",
                arr = {{"peel"},{"peel"}},
				dep = {{"odz","p_guy_concordia"},{"odz","p_mcgill"}},
			},
			{
				305, "Guy-Concordia",
                arr = {{"guy_concordia"},{"guy_concordia"}},
				dep = {{"odz","p_atwater"},{"odz","p_peel"}},
				arrlast = {{"guy_concordia","last"},{"guy_concordia","last"}, "sp_guy_concordia"},
			    not_last = {0.2, "train_goes_to", "sp_guy_concordia"},
			},
			{
				306, "Atwater",
                arr = {{"atwater"},{"atwater"}},
				dep = {{"odz","p_lionel"},{"odz","p_guy_concordia"}},
			},
			{
				307, "Lionel-Groulx",
				arrlast = {{"lionel","last"}, nil, "lionel"},
				dep = {nil, {"odz","bienvenue","p_atwater"}},
			}
	}
)