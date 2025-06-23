local Map = game.GetMap() or "" 
if Map:find("jar_pll") and not Map:find("redux") and not Map:find("remastered") then
else 
return 
end

Metrostroi.AddLastStationTex("710", 9999, "metrostroi_skins/destination_sign/stm/dep")
Metrostroi.AddLastStationTex("710", 9999, "metrostroi_skins/destination_sign/stm_old/ns")
Metrostroi.AddLastStationTex("707", 9999, "metrostroi_skins/destination_sign/stm/dep")
Metrostroi.AddLastStationTex("707", 9999, "metrostroi_skins/destination_sign/stm/tableau_noir")
Metrostroi.AddLastStationTex("710", 9999, "metrostroi_skins/destination_sign/stm/tableau_noir")
Metrostroi.AddLastStationTex("707", 9999, "metrostroi_skins/destination_sign/stm_old/ns")
Metrostroi.AddLastStationTex("717", 9999, "metrostroi_skins/destination_sign/stm/tableau_noir")
Metrostroi.AddLastStationTex("717", 9999, "metrostroi_skins/destination_sign/stm_old/ns")
Metrostroi.AddLastStationTex("710", 903, "metrostroi_skins/destination_sign/stm_old/longeuil")
Metrostroi.AddLastStationTex("710", 505, "metrostroi_skins/destination_sign/stm_old/berri")
Metrostroi.AddLastStationTex("707", 903, "metrostroi_skins/destination_sign/stm_old/longeuil")
Metrostroi.AddLastStationTex("707", 505, "metrostroi_skins/destination_sign/stm_old/berri")
Metrostroi.AddLastStationTex("717", 903, "metrostroi_skins/destination_sign/stm_old/longeuil")
Metrostroi.AddLastStationTex("717", 505, "metrostroi_skins/destination_sign/stm_old/berri")
Metrostroi.AddLastStationTex("717", 903, "metrostroi_skins/destination_sign/stm/longeuil")
Metrostroi.AddLastStationTex("717", 505, "metrostroi_skins/destination_sign/stm/berri")

Metrostroi.AddPassSchemeTex("722", "MTL",{
	"metrostroi_skins/722_schemes/722_jaune_inv",
	"metrostroi_skins/722_schemes/722_jaune",
})

Metrostroi.AddPassSchemeTex("717_new", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddPassSchemeTex("717_spb", "MTL",{
	"metrostroi_skins/717_schemes/717_mtl",
})

Metrostroi.AddANSPAnnouncer("STM Ligne Jaune", 
	{
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
		bienvenue = {"subway_announcers/fr_stm/yellow/welcome_aboard.mp3", 4},

		p_jean_drapeau = {"subway_announcers/fr_stm/yellow/next_jean_drapeau.mp3", 7},		
		p_longeuil = {"subway_announcers/fr_stm/yellow/next_longeuil.mp3", 4},
		p_berri = {"subway_announcers/fr_stm/yellow/next_berri.mp3", 8},

		jean_drapeau = {"subway_announcers/fr_stm/yellow/jean_drapeau.mp3", 2},	
		longeuil = {"subway_announcers/fr_stm/yellow/longeuil.mp3", 10},
		berri = {"subway_announcers/fr_stm/yellow/berri.mp3", 8},	
	
	},
	{
		{
			LED = {10,10,10},
			Name = "Ligne Jaune STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				903, "Longeuil",
                arrlast = {nil,{"longeuil"}, "announcer_ready"},
				dep = {{"odz","p_jean_drapeau"},nil},
			},
			{
				904, "Jean-Drapeau",
                arr = {{"jean_drapeau"},{"jean_drapeau"}},
				dep = {{"odz","p_berri"},{"odz","p_longeuil"}},
			},
			{
				505, "Berri-UQAM",
				arrlast = {{"berri"}, nil, "announcer_ready"},
				dep = {nil, {"odz","p_jean_drapeau"}},
			}
		}
	}
)
Metrostroi.SetUPOAnnouncer( 
	{
		name = "Ligne Jaune STM",
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
		bienvenue = {"subway_announcers/fr_stm/yellow/welcome_aboard.mp3", 4},

		p_jean_drapeau = {"subway_announcers/fr_stm/yellow/next_jean_drapeau.mp3", 7},		
		p_longeuil = {"subway_announcers/fr_stm/yellow/next_longeuil.mp3", 4},
		p_berri = {"subway_announcers/fr_stm/yellow/next_berri.mp3", 8},

		jean_drapeau = {"subway_announcers/fr_stm/yellow/jean_drapeau.mp3", 2},	
		longeuil = {"subway_announcers/fr_stm/yellow/longeuil.mp3", 10},
		berri = {"subway_announcers/fr_stm/yellow/berri.mp3", 8},	
	
	},
	{
			{
				903, "Longeuil",
                arrlast = {nil,{"longeuil"}, "announcer_ready"},
				dep = {{"odz","p_jean_drapeau"},nil},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				904, "Jean-Drapeau",
                arr = {{"jean_drapeau"},{"jean_drapeau"}},
				dep = {{"odz","p_berri"},{"odz","p_longeuil"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				505, "Berri-UQAM",
				arrlast = {{"berri"}, nil, "announcer_ready"},
				dep = {nil, {"odz","p_jean_drapeau"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			}
		}
)
Metrostroi.AddSarmatUPOAnnouncer("STM Ligne Jaune", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/fr_stm/announcer_ready.mp3", 2},
		tone = {"subway_announcers/en_go_c1/click.mp3", 0.1},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/yellow/welcome_aboard.mp3", 4},

		p_jean_drapeau = {"subway_announcers/fr_stm/yellow/next_jean_drapeau.mp3", 7},		
		p_longeuil = {"subway_announcers/fr_stm/yellow/next_longeuil.mp3", 4},
		p_berri = {"subway_announcers/fr_stm/yellow/next_berri.mp3", 8},

		jean_drapeau = {"subway_announcers/fr_stm/yellow/jean_drapeau.mp3", 2},	
		longeuil = {"subway_announcers/fr_stm/yellow/longeuil.mp3", 10},
		berri = {"subway_announcers/fr_stm/yellow/berri.mp3", 8},	
	
	},
	{
		{
			LED = {11,10,11},
			Name = "Ligne Jaune STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				903, "Longeuil",
                arrlast = {nil,{"longeuil"}, "announcer_ready"},
				dep = {{"odz","p_jean_drapeau"},nil},
			},
			{
				904, "Jean-Drapeau",
                arr = {{"jean_drapeau"},{"jean_drapeau"}},
				dep = {{"odz","p_berri"},{"odz","p_longeuil"}},
			},
			{
				505, "Berri-UQAM",
				arrlast = {{"berri"}, nil, "announcer_ready"},
				dep = {nil, {"odz","p_jean_drapeau"}},
			}
		}
	}
)