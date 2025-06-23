local Map = game.GetMap() or "" 
if !Map:find("gm_metro_u6") then return end
Metrostroi.CurrentMap = "gm_metro_u6"

Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm/dep")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm/dep")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("710", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("707", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/stm/tableau_noir")
Metrostroi.AddLastStationTex("717", 9999, "models/metrostroi_skins/717_schemes/stm_old/ns")
Metrostroi.AddLastStationTex("710", 601, "models/metrostroi_skins/717_schemes/stm_old/bonaventure")
Metrostroi.AddLastStationTex("710", 604, "models/metrostroi_skins/717_schemes/stm_old/lionel_groulx")
Metrostroi.AddLastStationTex("710", 606, "models/metrostroi_skins/717_schemes/stm_old/vendome")
Metrostroi.AddLastStationTex("710", 610, "models/metrostroi_skins/717_schemes/stm_old/plamondon")
Metrostroi.AddLastStationTex("717", 601, "models/metrostroi_skins/717_schemes/stm_old/bonaventure")
Metrostroi.AddLastStationTex("717", 604, "models/metrostroi_skins/717_schemes/stm_old/lionel_groulx")
Metrostroi.AddLastStationTex("717", 606, "models/metrostroi_skins/717_schemes/stm_old/vendome")
Metrostroi.AddLastStationTex("717", 610, "models/metrostroi_skins/717_schemes/stm_old/plamondon")
Metrostroi.AddLastStationTex("707", 601, "models/metrostroi_skins/717_schemes/stm_old/bonaventure")
Metrostroi.AddLastStationTex("707", 604, "models/metrostroi_skins/717_schemes/stm_old/lionel_groulx")
Metrostroi.AddLastStationTex("707", 606, "models/metrostroi_skins/717_schemes/stm_old/vendome")
Metrostroi.AddLastStationTex("707", 610, "models/metrostroi_skins/717_schemes/stm_old/plamondon")
Metrostroi.AddLastStationTex("717", 601, "models/metrostroi_skins/717_schemes/stm/bonaventure")
Metrostroi.AddLastStationTex("717", 604, "models/metrostroi_skins/717_schemes/stm/lionel_groulx")
Metrostroi.AddLastStationTex("717", 606, "models/metrostroi_skins/717_schemes/stm/vendome")
Metrostroi.AddLastStationTex("717", 610, "models/metrostroi_skins/717_schemes/stm/plamondon")
Metrostroi.AddLastStationTex("717", 611, "models/metrostroi_skins/717_schemes/stm/henri_bourassa")
Metrostroi.AddLastStationTex("717", 600, "models/metrostroi_skins/717_schemes/stm/cote_vertu")
Metrostroi.AddLastStationTex("717", 612, "models/metrostroi_skins/717_schemes/stm/montmorency")
Metrostroi.AddLastStationTex("717", 611, "models/metrostroi_skins/717_schemes/stm_old/henri_bourassa")
Metrostroi.AddLastStationTex("717", 600, "models/metrostroi_skins/717_schemes/stm_old/cote_vertu")
Metrostroi.AddLastStationTex("717", 612, "models/metrostroi_skins/717_schemes/stm_old/montmorency")
Metrostroi.AddLastStationTex("710", 611, "models/metrostroi_skins/717_schemes/stm_old/henri_bourassa")
Metrostroi.AddLastStationTex("710", 600, "models/metrostroi_skins/717_schemes/stm_old/cote_vertu")
Metrostroi.AddLastStationTex("710", 612, "models/metrostroi_skins/717_schemes/stm_old/montmorency")
Metrostroi.AddLastStationTex("707", 611, "models/metrostroi_skins/717_schemes/stm_old/henri_bourassa")
Metrostroi.AddLastStationTex("707", 600, "models/metrostroi_skins/717_schemes/stm_old/cote_vertu")
Metrostroi.AddLastStationTex("707", 612, "models/metrostroi_skins/717_schemes/stm_old/montmorency")

Metrostroi.AddPassSchemeTex("722", "MTL",{
	"models/metrostroi_skins/722_schemes/mtl/722_u6",
	"models/metrostroi_skins/722_schemes/mtl/722_u6_inv",
})

Metrostroi.AddPassSchemeTex("717_new", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddPassSchemeTex("717_spb", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddANSPAnnouncer("STM Ligne Orange", 
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
		bienvenue = {"subway_announcers/fr_stm/orange/welcome_aboard.mp3", 4},

		p_vanier = {"subway_announcers/fr_stm/orange/next_vanier.mp3", 3},
		p_st_henri = {"subway_announcers/fr_stm/orange/next_st_henri.mp3", 3},
		p_snowdon = {"subway_announcers/fr_stm/orange/next_snowdon.mp3", 6},
		p_vendome = {"subway_announcers/fr_stm/orange/next_vendome.mp3", 3},
		p_villa_maria = {"subway_announcers/fr_stm/orange/next_villa_maria.mp3", 3},
		p_cote = {"subway_announcers/fr_stm/orange/next_cote.mp3", 3},
		p_bonaventure = {"subway_announcers/fr_stm/orange/next_bonaventure.mp3", 3},		
		p_lionel = {"subway_announcers/fr_stm/orange/next_lionel.mp3", 7},		
		p_lucien = {"subway_announcers/fr_stm/orange/next_lucien.mp3", 3},
		p_plamondon = {"subway_announcers/fr_stm/orange/next_plamondon.mp3", 3},

		vanier = {"subway_announcers/fr_stm/orange/vanier.mp3", 2},
		st_henri = {"subway_announcers/fr_stm/orange/st_henri.mp3", 2},
		villa_maria = {"subway_announcers/fr_stm/orange/villa_maria.mp3", 2},
		cote = {"subway_announcers/fr_stm/orange/cote.mp3", 2},	
		bonaventure = {"subway_announcers/fr_stm/orange/bonaventure.mp3", 2},	
		snowdon = {"subway_announcers/fr_stm/orange/snowdon.mp3", 2},	
		vendome = {"subway_announcers/fr_stm/orange/vendome.mp3", 2},		
		lionel = {"subway_announcers/fr_stm/orange/lionel.mp3", 2},		
		lucien = {"subway_announcers/fr_stm/orange/lucien.mp3", 2},
		plamondon = {"subway_announcers/fr_stm/orange/plamondon.mp3", 2},
		sp_lionel = {"subway_announcers/fr_stm/orange/sp_lionel.mp3", 1.5},
		sp_vendome = {"subway_announcers/fr_stm/orange/sp_vendome.mp3", 1.5},
		portes = {"subway_announcers/fr_stm/orange/doors_left.mp3", 2.5},		
	
	},
	{
		{
			LED = {3,3,3,3,3,3,3,3,3,3},
			Name = "Ligne Orange STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				601, "Bonaventure",
				arrlast = {nil, {"bonaventure", "last"}, "bonaventure"},
				dep = {{"odz","bienvenue","p_lucien"},nil},
			},
			{
				602, "Lucien-L'Allier",
                arr = {{"lucien"},{"lucien"}},
				dep = {{"odz","p_vanier"},{"odz","p_bonaventure"}},
			},
			{
				603, "Georges-Vanier",
                arr = {{"vanier"},{"vanier"}},
				dep = {{"odz","p_lionel"},{"odz","p_lucien"}},
			},
			{
				604, "Lionel-Groulx",
                arr = {{"lionel",},{"lionel"}},
				dep = {{"odz","p_st_henri"},{"odz","p_vanier"}},
				arrlast = {{"lionel","last"},{"lionel","last"}, "sp_lionel"},
			    not_last = {0.2, "train_goes_to", "sp_lionel"},
               
			},
			{
				605, "Place-Saint-Henri",
                arr = {{"st_henri"},{"st_henri"}},
				dep = {{"odz","p_vendome"},{"odz","p_lionel","portes"}},
			},
			{
				606, "Vendome",
                arr = {{"vendome"},{"vendome"}},
				dep = {{"odz","p_villa_maria"},{"odz","p_st_henri"}},
				arrlast = {{"vendome","last"},{"vendome","last"}, "sp_vendome"},
			    not_last = {0.2, "train_goes_to", "sp_vendome"},
			},
			{
				607, "Villa-Maria",
                arr = {{"villa_maria"},{"villa_maria"}},
				dep = {{"odz","p_snowdon"},{"odz","p_vendome"}},
			},
			{
				608, "Snowdon",
                arr = {{"snowdon"},{"snowdon"}},
				dep = {{"odz","p_cote"},{"odz","p_villa_maria"}},
			},
			{
				609, "Cote-St-Catherine",
                arr = {{"cote"},{"cote"}},
				dep = {{"odz","p_plamondon"},{"odz","p_snowdon"}},
			},
			{
				610, "Plamondon",
				arrlast = {{"plamondon","last"}, nil, "plamondon"},
				dep = {nil, {"odz","bienvenue","p_cote"}},
			}
		}
	}
)
Metrostroi.AddSarmatUPOAnnouncer("STM Ligne Orange", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		tone = {"subway_announcers/en_go_c1/click.mp3", 0.1},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/orange/welcome_aboard.mp3", 4},

		p_vanier = {"subway_announcers/fr_stm/orange/next_vanier.mp3", 3},
		p_st_henri = {"subway_announcers/fr_stm/orange/next_st_henri.mp3", 3},
		p_snowdon = {"subway_announcers/fr_stm/orange/next_snowdon.mp3", 6},
		p_vendome = {"subway_announcers/fr_stm/orange/next_vendome.mp3", 3},
		p_villa_maria = {"subway_announcers/fr_stm/orange/next_villa_maria.mp3", 3},
		p_cote = {"subway_announcers/fr_stm/orange/next_cote.mp3", 3},
		p_bonaventure = {"subway_announcers/fr_stm/orange/next_bonaventure.mp3", 3},		
		p_lionel = {"subway_announcers/fr_stm/orange/next_lionel.mp3", 7},		
		p_lucien = {"subway_announcers/fr_stm/orange/next_lucien.mp3", 3},
		p_plamondon = {"subway_announcers/fr_stm/orange/next_plamondon.mp3", 3},

		vanier = {"subway_announcers/fr_stm/orange/vanier.mp3", 2},
		st_henri = {"subway_announcers/fr_stm/orange/st_henri.mp3", 2},
		villa_maria = {"subway_announcers/fr_stm/orange/villa_maria.mp3", 2},
		cote = {"subway_announcers/fr_stm/orange/cote.mp3", 2},	
		bonaventure = {"subway_announcers/fr_stm/orange/bonaventure.mp3", 2},	
		snowdon = {"subway_announcers/fr_stm/orange/snowdon.mp3", 2},	
		vendome = {"subway_announcers/fr_stm/orange/vendome.mp3", 2},		
		lionel = {"subway_announcers/fr_stm/orange/lionel.mp3", 2},		
		lucien = {"subway_announcers/fr_stm/orange/lucien.mp3", 2},
		plamondon = {"subway_announcers/fr_stm/orange/plamondon.mp3", 2},
		sp_lionel = {"subway_announcers/fr_go/orange/sp_lionel.mp3", 1.5},
		sp_vendome = {"subway_announcers/fr_go/orange/sp_vendome.mp3", 1.5},
		portes = {"subway_announcers/fr_stm/orange/doors_left.mp3", 2.5},		
	
	},
	{
		{
			LED = {4,3,3,3,3,3,3,3,3,4},
			Name = "Ligne Orange STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				601, "Bonaventure",
				arrlast = {nil, {"bonaventure", "last"}, "bonaventure"},
				dep = {{"odz","bienvenue","p_lucien"},nil},
			},
			{
				602, "Lucien-L'Allier",
                arr = {{"lucien"},{"lucien"}},
				dep = {{"odz","p_vanier"},{"odz","p_bonaventure"}},
			},
			{
				603, "Georges-Vanier",
                arr = {{"vanier"},{"vanier"}},
				dep = {{"odz","p_lionel"},{"odz","p_lucien"}},
			},
			{
				604, "Lionel-Groulx",
                arr = {{"lionel",},{"lionel"}},
				dep = {{"odz","p_st_henri"},{"odz","p_vanier"}},
				arrlast = {{"lionel","last"},{"lionel","last"}, "sp_lionel"},
			    not_last = {0.2, "train_goes_to", "sp_lionel"},
               
			},
			{
				605, "Place-Saint-Henri",
                arr = {{"st_henri"},{"st_henri"}},
				dep = {{"odz","p_vendome"},{"odz","p_lionel","portes"}},
			},
			{
				606, "Vendome",
                arr = {{"vendome"},{"vendome"}},
				dep = {{"odz","p_villa_maria"},{"odz","p_st_henri"}},
				arrlast = {{"vendome","last"},{"vendome","last"}, "sp_vendome"},
			    not_last = {0.2, "train_goes_to", "sp_vendome"},
			},
			{
				607, "Villa-Maria",
                arr = {{"villa_maria"},{"villa_maria"}},
				dep = {{"odz","p_snowdon"},{"odz","p_vendome"}},
			},
			{
				608, "Snowdon",
                arr = {{"snowdon"},{"snowdon"}},
				dep = {{"odz","p_cote"},{"odz","p_villa_maria"}},
			},
			{
				609, "Cote-St-Catherine",
                arr = {{"cote"},{"cote"}},
				dep = {{"odz","p_plamondon"},{"odz","p_snowdon"}},
			},
			{
				610, "Plamondon",
				arrlast = {{"plamondon","last"}, nil, "plamondon"},
				dep = {nil, {"odz","bienvenue","p_cote"}},
			}
		}
	}
)
Metrostroi.SetUPOAnnouncer(
	{
		name = "Ligne Orange STM",
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
		bienvenue = {"subway_announcers/fr_stm/orange/welcome_aboard.mp3", 4},

		p_vanier = {"subway_announcers/fr_stm/orange/next_vanier.mp3", 3},
		p_st_henri = {"subway_announcers/fr_stm/orange/next_st_henri.mp3", 3},
		p_snowdon = {"subway_announcers/fr_stm/orange/next_snowdon.mp3", 6},
		p_vendome = {"subway_announcers/fr_stm/orange/next_vendome.mp3", 3},
		p_villa_maria = {"subway_announcers/fr_stm/orange/next_villa_maria.mp3", 3},
		p_cote = {"subway_announcers/fr_stm/orange/next_cote.mp3", 3},
		p_bonaventure = {"subway_announcers/fr_stm/orange/next_bonaventure.mp3", 3},		
		p_lionel = {"subway_announcers/fr_stm/orange/next_lionel.mp3", 7},		
		p_lucien = {"subway_announcers/fr_stm/orange/next_lucien.mp3", 3},
		p_plamondon = {"subway_announcers/fr_stm/orange/next_plamondon.mp3", 3},

		vanier = {"subway_announcers/fr_stm/orange/vanier.mp3", 2},
		st_henri = {"subway_announcers/fr_stm/orange/st_henri.mp3", 2},
		villa_maria = {"subway_announcers/fr_stm/orange/villa_maria.mp3", 2},
		cote = {"subway_announcers/fr_stm/orange/cote.mp3", 2},	
		bonaventure = {"subway_announcers/fr_stm/orange/bonaventure.mp3", 2},	
		snowdon = {"subway_announcers/fr_stm/orange/snowdon.mp3", 2},	
		vendome = {"subway_announcers/fr_stm/orange/vendome.mp3", 2},		
		lionel = {"subway_announcers/fr_stm/orange/lionel.mp3", 2},		
		lucien = {"subway_announcers/fr_stm/orange/lucien.mp3", 2},
		plamondon = {"subway_announcers/fr_stm/orange/plamondon.mp3", 2},
		sp_lionel = {"subway_announcers/fr_go/orange/sp_lionel.mp3", 1.5},
		sp_vendome = {"subway_announcers/fr_go/orange/sp_vendome.mp3", 1.5},
		portes = {"subway_announcers/fr_stm/orange/doors_left.mp3", 2.5},		
	
	},
	{
			{
				601, "Bonaventure",
				arrlast = {nil, {"bonaventure", "last"}, "bonaventure"},
				dep = {{"odz","bienvenue","p_lucien"},nil},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				602, "Lucien-L'Allier",
                arr = {{"lucien"},{"lucien"}},
				dep = {{"odz","p_vanier"},{"odz","p_bonaventure"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				603, "Georges-Vanier",
                arr = {{"vanier"},{"vanier"}},
				dep = {{"odz","p_lionel"},{"odz","p_lucien"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				604, "Lionel-Groulx",
                arr = {{"lionel",},{"lionel"}},
				dep = {{"odz","p_st_henri"},{"odz","p_vanier"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
               
			},
			{
				605, "Place-Saint-Henri",
                arr = {{"st_henri"},{"st_henri"}},
				dep = {{"odz","p_vendome"},{"odz","p_lionel","portes"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				606, "Vendome",
                arr = {{"vendome"},{"vendome"}},
				dep = {{"odz","p_villa_maria"},{"odz","p_st_henri"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				607, "Villa-Maria",
                arr = {{"villa_maria"},{"villa_maria"}},
				dep = {{"odz","p_snowdon"},{"odz","p_vendome"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				608, "Snowdon",
                arr = {{"snowdon"},{"snowdon"}},
				dep = {{"odz","p_cote"},{"odz","p_villa_maria"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				609, "Cote-St-Catherine",
                arr = {{"cote"},{"cote"}},
				dep = {{"odz","p_plamondon"},{"odz","p_snowdon"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				610, "Plamondon",
				arrlast = {{"plamondon","last"}, nil, "plamondon"},
				dep = {nil, {"odz","bienvenue","p_cote"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			}
		}
)