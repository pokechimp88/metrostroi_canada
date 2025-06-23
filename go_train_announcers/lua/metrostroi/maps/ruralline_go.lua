local Map = game.GetMap() or ""

if Map:find("metro_rural") then
    Metrostroi.CurrentMap = "gm_metro_ruralline"
else
    return
end

Metrostroi.AddPassSchemeTex("717_new", "GO Transit",{
	"metrostroi_skins/717_schemes/717_go",
})

Metrostroi.AddANSPAnnouncer("GO Milton Line", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/en_go/announcer_ready.mp3", 2.43},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		prib = {"subway_announcers/en_go/now_arriving_at.mp3", 1.2},
		prib_f = {"subway_announcers/fr_go/arrivee_a.mp3", 1.2},
		odz = {"subway_announcers/en_go_c1/door_close.mp3", 9.35},
		go_chime = {"subway_announcers/en_go/chime.mp3", 2.4},
		last = {"subway_announcers/en_go/last_stn.mp3", 5.35},
		last_union = {"subway_announcers/en_go/union_exit.mp3", 12.1},
		last_f = {"subway_announcers/fr_go/terminus.mp3", 6},
		last_union_f = {"subway_announcers/fr_go/sortie_union.mp3", 16.25},
		train_goes_to = {"subway_announcers/en_go_c1/train_goes_to.mp3", 1.15},
		spec_attention_train_depart = {"subway_announcers/en_go/quiet_zone.mp3", 4.5},
		spec_attention_train_stop = {"subway_announcers/en_go/yellow_strip.mp3", 7.3},
		spec_attention_train_fast = {"subway_announcers/en_go_c1/last_stop.mp3", 6.5},
		spec_attention_train_depart_f = {"subway_announcers/fr_go/quiet_zone.mp3", 6},
		spec_attention_train_stop_f = {"subway_announcers/fr_go/bande_alerte.mp3", 11.7},

		kipling = {"subway_announcers/en_go_c1/kipling.mp3", 0.91},
		cooksville = {"subway_announcers/en_go_c1/cooksville.mp3", 1.04},
		erindale = {"subway_announcers/en_go_c1/erindale.mp3", 1.01},
		streetsville = {"subway_announcers/en_go_c1/streetsville.mp3", 0.86},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		dixie = {"subway_announcers/en_go_c1/dixie.mp3", 1.17},		
		bloor = {"subway_announcers/en_go_c1/bloor.mp3", 1.02},

		en_kipling = {"subway_announcers/en_go/kipling.mp3", 0.81},
		en_cooksville = {"subway_announcers/en_go/cooksville.mp3", 0.94},
		en_erindale = {"subway_announcers/en_go/erindale.mp3", 0.86},
		en_streetsville = {"subway_announcers/en_go/streetsville.mp3", 0.73},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_dixie = {"subway_announcers/en_go/dixie.mp3", 1.07},		
		en_bloor = {"subway_announcers/en_go/bloor.mp3", 0.95},

		fr_kipling = {"subway_announcers/fr_go/kipling.mp3", 1},
		fr_cooksville = {"subway_announcers/fr_go/cooksville.mp3", 1.3},
		fr_erindale = {"subway_announcers/fr_go/erindale.mp3", 1.25},
		fr_streetsville = {"subway_announcers/fr_go/streetsville.mp3", 1},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_dixie = {"subway_announcers/fr_go/dixie.mp3", 1.34},		
		fr_bloor = {"subway_announcers/fr_go/bloor.mp3", 1.3}
	
	},
	{
		{
			LED = {5, 5, 5, 5, 5, 5},
			Name = "Milton Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				151, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","kipling"},nil},
			},
			{
				153, "Kipling",
                arr = {{"go_chime","prib","en_kipling","prib_f","fr_kipling"},{"go_chime","prib","en_kipling","prib_f","fr_kipling"}},
				dep = {{"odz","dixie"},{"odz","union"}},
			},
			{
				154, "Dixie",
                arr = {{"go_chime","prib","en_dixie","prib_f","fr_dixie"},{"go_chime","prib","en_dixie","prib_f","fr_dixie"}},
				dep = {{"odz","cooksville"},{"odz","kipling"}},
               
			},
			{
				155, "Cooksville",
                arr = {{"go_chime","prib","en_cooksville","prib_f","fr_cooksville"},{"go_chime","prib","en_cooksville","prib_f","fr_cooksville"}},
				dep = {{"odz","erindale"},{"odz","dixie"}},
				arrlast = {{"go_chime","prib","en_cooksville","prib_f","fr_cooksville","last","last_f"},{"go_chime","prib","en_cooksville","prib_f","fr_cooksville","last","last_f"}, "en_cooksville"},
			    not_last = {0.2, "train_goes_to", "cooksville"},
			},
			{
				156, "Erindale",
                arr = {{"go_chime","prib","en_erindale","prib_f","fr_erindale"},{"go_chime","prib","en_erindale","prib_f","fr_erindale"}},
				dep = {{"odz","streetsville"},{"odz","cooksville"}},
				arrlast = {{"go_chime","prib","en_erindale","prib_f","fr_erindale","last","last_f"},{"go_chime","prib","en_erindale","prib_f","fr_erindale","last","last_f"}, "en_erindale"},
			    not_last = {0.2, "train_goes_to", "erindale"},
			},
			{
				157, "Streetsville",
				arrlast = {{"go_chime","prib","en_streetsville","prib_f","fr_streetsville","last","last_f"}, nil, "en_streetsville"},
				dep = {nil, {"odz","erindale"}},
			}
		}
	}
)

Metrostroi.AddANSPAnnouncer("GO Richmond Hill Line", 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/en_go/announcer_ready.mp3", 2.43},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		prib = {"subway_announcers/en_go/now_arriving_at.mp3", 1.2},
		prib_f = {"subway_announcers/fr_go/arrivee_a.mp3", 1.2},
		odz = {"subway_announcers/en_go_c1/door_close.mp3", 9.35},
		go_chime = {"subway_announcers/en_go/chime.mp3", 2.4},
		last = {"subway_announcers/en_go/last_stn.mp3", 5.35},
		last_union = {"subway_announcers/en_go/union_exit.mp3", 12.1},
		last_f = {"subway_announcers/fr_go/terminus.mp3", 6},
		last_union_f = {"subway_announcers/fr_go/sortie_union.mp3", 16.25},
		train_goes_to = {"subway_announcers/en_go_c1/train_goes_to.mp3", 1.15},
		spec_attention_train_depart = {"subway_announcers/en_go/quiet_zone.mp3", 4.5},
		spec_attention_train_stop = {"subway_announcers/en_go/yellow_strip.mp3", 7.3},
		spec_attention_train_fast = {"subway_announcers/en_go_c1/last_stop.mp3", 6.5},
		spec_attention_train_depart_f = {"subway_announcers/fr_go/quiet_zone.mp3", 6},
		spec_attention_train_stop_f = {"subway_announcers/fr_go/bande_alerte.mp3", 11.7},

		old_cummer = {"subway_announcers/en_go_c1/old_cummer.mp3", 0.86},
		richmond_hill = {"subway_announcers/en_go_c1/richmond_hill.mp3", 0.8},
		gormley = {"subway_announcers/en_go_c1/gormley.mp3", 1},
		bloomington = {"subway_announcers/en_go_c1/bloomington.mp3", 0.63},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		langstaff = {"subway_announcers/en_go_c1/langstaff.mp3", 0.86},		
		oriole = {"subway_announcers/en_go_c1/oriole.mp3", 0.73},

		en_old_cummer = {"subway_announcers/en_go/old_cummer.mp3", 0.92},
		en_richmond_hill = {"subway_announcers/en_go/richmond_hill.mp3", 0.84},
		en_gormley = {"subway_announcers/en_go/gormley.mp3", 0.92},
		en_bloomington = {"subway_announcers/en_go/bloomington.mp3", 0.76},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_langstaff = {"subway_announcers/en_go/langstaff.mp3", 0.81},		
		en_oriole = {"subway_announcers/en_go/oriole.mp3", 0.86},

		fr_old_cummer = {"subway_announcers/fr_go/old_cummer.mp3", 1.18},
		fr_richmond_hill = {"subway_announcers/fr_go/richmond_hill.mp3", 1.1},
		fr_gormley = {"subway_announcers/fr_go/gormley.mp3", 1.3},
		fr_bloomington = {"subway_announcers/fr_go/bloomington.mp3", 1.07},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_langstaff = {"subway_announcers/fr_go/langstaff.mp3", 1.23},		
		fr_oriole = {"subway_announcers/fr_go/oriole.mp3", 1.18}
	
	},
	{
		{
			LED = {5, 5, 5, 5, 5, 5},
			Name = "Richmond Hill Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				151, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","oriole"},nil},
			},
			{
				153, "Oriole",
                arr = {{"go_chime","prib","en_oriole","prib_f","fr_oriole"},{"go_chime","prib","en_oriole","prib_f","fr_oriole"}},
				dep = {{"odz","old_cummer"},{"odz","union"}},
			},
			{
				154, "Old Cummer",
                arr = {{"go_chime","prib","en_old_cummer","prib_f","fr_old_cummer"},{"go_chime","prib","en_old_cummer","prib_f","fr_old_cummer"}},
				dep = {{"odz","langstaff"},{"odz","oriole"}},
			},
			{
				155, "Langstaff",
                arr = {{"go_chime","prib","en_langstaff","prib_f","fr_langstaff"},{"go_chime","prib","en_langstaff","prib_f","fr_langstaff"}},
				dep = {{"odz","richmond_hill"},{"odz","old_cummer"}},
				arrlast = {{"go_chime","prib","en_langstaff","prib_f","fr_langstaff","last","last_f"},{"prib","en_langstaff","prib_f","fr_langstaff","last","last_f"}, "en_langstaff"},
			    not_last = {0.2, "train_goes_to", "langstaff"},
               
			},
			{
				156, "Richmond Hill",
                arr = {{"go_chime","prib","en_richmond_hill","prib_f","fr_richmond_hill"},{"go_chime","prib","en_richmond_hill","prib_f","fr_richmond_hill"}},
				dep = {{"odz","gormley"},{"odz","langstaff"}},
			},
			{
				157, "Gormley",
				arrlast = {{"go_chime","prib","en_gormley","prib_f","fr_gormley","last","last_f"}, nil, "en_gormley"},
				dep = {nil, {"odz","richmond_hill"}},
			}
		}
	}
)
Metrostroi.SetRRIAnnouncer( 
	{
		click_start = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click_end = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		announcer_ready = {"subway_announcers/en_go/announcer_ready.mp3", 2.43},
		click1 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		click2 = {"subway_announcers/en_go_c1/click.mp3", 0.251},
		prib = {"subway_announcers/en_go/now_arriving_at.mp3", 1.2},
		prib_f = {"subway_announcers/fr_go/arrivee_a.mp3", 1.2},
		odz = {"subway_announcers/en_go_c1/door_close.mp3", 9.35},
		go_chime = {"subway_announcers/en_go/chime.mp3", 2.4},
		last = {"subway_announcers/en_go/last_stn.mp3", 5.35},
		last_union = {"subway_announcers/en_go/union_exit.mp3", 12.1},
		last_f = {"subway_announcers/fr_go/terminus.mp3", 6},
		last_union_f = {"subway_announcers/fr_go/sortie_union.mp3", 16.25},
		train_goes_to = {"subway_announcers/en_go_c1/train_goes_to.mp3", 1.15},
		spec_attention_train_depart = {"subway_announcers/en_go/quiet_zone.mp3", 4.5},
		spec_attention_train_stop = {"subway_announcers/en_go/yellow_strip.mp3", 7.3},
		spec_attention_train_fast = {"subway_announcers/en_go_c1/last_stop.mp3", 6.5},
		spec_attention_train_depart_f = {"subway_announcers/fr_go/quiet_zone.mp3", 6},
		spec_attention_train_stop_f = {"subway_announcers/fr_go/bande_alerte.mp3", 11.7},

		kipling = {"subway_announcers/en_go_c1/kipling.mp3", 0.91},
		cooksville = {"subway_announcers/en_go_c1/cooksville.mp3", 1.04},
		erindale = {"subway_announcers/en_go_c1/erindale.mp3", 1.01},
		streetsville = {"subway_announcers/en_go_c1/streetsville.mp3", 0.86},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		dixie = {"subway_announcers/en_go_c1/dixie.mp3", 1.17},		
		bloor = {"subway_announcers/en_go_c1/bloor.mp3", 1.02},

		en_kipling = {"subway_announcers/en_go/kipling.mp3", 0.81},
		en_cooksville = {"subway_announcers/en_go/cooksville.mp3", 0.94},
		en_erindale = {"subway_announcers/en_go/erindale.mp3", 0.86},
		en_streetsville = {"subway_announcers/en_go/streetsville.mp3", 0.73},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_dixie = {"subway_announcers/en_go/dixie.mp3", 1.07},		
		en_bloor = {"subway_announcers/en_go/bloor.mp3", 0.95},

		fr_kipling = {"subway_announcers/fr_go/kipling.mp3", 1},
		fr_cooksville = {"subway_announcers/fr_go/cooksville.mp3", 1.3},
		fr_erindale = {"subway_announcers/fr_go/erindale.mp3", 1.25},
		fr_streetsville = {"subway_announcers/fr_go/streetsville.mp3", 1},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_dixie = {"subway_announcers/fr_go/dixie.mp3", 1.34},		
		fr_bloor = {"subway_announcers/fr_go/bloor.mp3", 1.3}
	
	},
	{
		{
			LED = {5, 5, 5, 5, 5, 5},
			Name = "Milton Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				151, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","kipling"},nil},
			},
			{
				153, "Kipling",
                arr = {{"go_chime","prib","en_kipling","prib_f","fr_kipling"},{"go_chime","prib","en_kipling","prib_f","fr_kipling"}},
				dep = {{"odz","dixie"},{"odz","union"}},
			},
			{
				154, "Dixie",
                arr = {{"go_chime","prib","en_dixie","prib_f","fr_dixie"},{"go_chime","prib","en_dixie","prib_f","fr_dixie"}},
				dep = {{"odz","cooksville"},{"odz","kipling"}},
               
			},
			{
				155, "Cooksville",
                arr = {{"go_chime","prib","en_cooksville","prib_f","fr_cooksville"},{"go_chime","prib","en_cooksville","prib_f","fr_cooksville"}},
				dep = {{"odz","erindale"},{"odz","dixie"}},
				arrlast = {{"go_chime","prib","en_cooksville","prib_f","fr_cooksville","last","last_f"},{"go_chime","prib","en_cooksville","prib_f","fr_cooksville","last","last_f"}, "en_cooksville"},
			    not_last = {0.2, "train_goes_to", "cooksville"},
			},
			{
				156, "Erindale",
                arr = {{"go_chime","prib","en_erindale","prib_f","fr_erindale"},{"go_chime","prib","en_erindale","prib_f","fr_erindale"}},
				dep = {{"odz","streetsville"},{"odz","cooksville"}},
				arrlast = {{"go_chime","prib","en_erindale","prib_f","fr_erindale","last","last_f"},{"go_chime","prib","en_erindale","prib_f","fr_erindale","last","last_f"}, "en_erindale"},
			    not_last = {0.2, "train_goes_to", "erindale"},
			},
			{
				157, "Streetsville",
				arrlast = {{"go_chime","prib","en_streetsville","prib_f","fr_streetsville","last","last_f"}, nil, "en_streetsville"},
				dep = {nil, {"odz","erindale"}},
			}
		}
	}
)