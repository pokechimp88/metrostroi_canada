local Map = game.GetMap() or ""
if Map:find("gm_metro_demixovo_2") then
    Metrostroi.PlatformMap = "demixovo_2"
    Metrostroi.CurrentMap = "gm_demixovo_2"
    Metrostroi.BogeyOldMap = true
else
    return
end

Metrostroi.AddPassSchemeTex("717_new", "GO Transit",{
	"metrostroi_skins/717_schemes/717_go",
})

--FIXME

Metrostroi.AddANSPAnnouncer("GO Barrie Line", 
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

		king_city = {"subway_announcers/en_go_c1/king_city.mp3", 1.34},
		rutherford = {"subway_announcers/en_go_c1/rutherford.mp3", 1.25},
		downsview = {"subway_announcers/en_go_c1/downsview.mp3", 1.36},
		barrie = {"subway_announcers/en_go_c1/barrie.mp3", 1.22},
		aurora = {"subway_announcers/en_go_c1/aurora.mp3", 1.05},
		e_gwillimbury = {"subway_announcers/en_go_c1/e_gwillimbury.mp3", 1.67},
		bradford = {"subway_announcers/en_go_c1/bradford.mp3", 1.05},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		maple = {"subway_announcers/en_go_c1/maple.mp3", 0.86},		
		newmarket = {"subway_announcers/en_go_c1/newmarket.mp3", 1.23},

		en_king_city = {"subway_announcers/en_go/king_city.mp3", 0.89},
		en_rutherford = {"subway_announcers/en_go/rutherford.mp3", 0.84},
		en_downsview = {"subway_announcers/en_go/downsview.mp3", 1.2},
		en_barrie = {"subway_announcers/en_go/barrie.mp3", 1.05},
		en_aurora = {"subway_announcers/en_go/aurora.mp3", 0.73},
		en_e_gwillimbury = {"subway_announcers/en_go/e_gwillimbury.mp3", 1.23},
		en_bradford = {"subway_announcers/en_go/bradford.mp3", 0.84},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_maple = {"subway_announcers/en_go/maple.mp3", 0.65},		
		en_newmarket = {"subway_announcers/en_go/newmarket.mp3", 0.86},

		fr_king_city = {"subway_announcers/fr_go/king_city.mp3", 1.1},
		fr_rutherford = {"subway_announcers/fr_go/rutherford.mp3", 1.3},
		fr_downsview = {"subway_announcers/fr_go/downsview.mp3", 1.62},
		fr_barrie = {"subway_announcers/fr_go/barrie.mp3", 1.36},
		fr_aurora = {"subway_announcers/fr_go/aurora.mp3", 0.94},
		fr_e_gwillimbury = {"subway_announcers/fr_go/e_gwillimbury.mp3", 1.46},
		fr_bradford = {"subway_announcers/fr_go/bradford.mp3", 1.18},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_maple = {"subway_announcers/fr_go/maple.mp3", 1.02},		
		fr_newmarket = {"subway_announcers/fr_go/newmarket.mp3", 1.28}
	
	},
	{
		{
			LED = {2, 3, 3, 3, 3, 2, 3, 3, 3, 3, 2},
			Name = "Barrie Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				100, "Allandale Waterfront",
				arrlast = {nil, {"go_chime","prib","en_allandale","prib_f","fr_allandale","last","last_f"}, "en_allandale"},
				dep = {{"odz","barrie"}, nil},
			},
			{
				101, "Barrie South",
                arr = {{"go_chime","prib","en_barrie","prib_f","fr_barrie"},{"go_chime","prib","en_barrie","prib_f","fr_barrie"}},
                dep = {{"odz","bradford"},{"odz","allandale"}},
			},
			{
				102, "Bradford",
                arr = {{"go_chime","prib","en_bradford","prib_f","fr_bradford"},{"go_chime","prib","en_bradford","prib_f","fr_bradford"}},
                dep = {{"odz","e_gwillimbury"},{"odz","barrie"}},
			},
			{
				103, "East Gwillimbury",
                arr = {{"go_chime","prib","en_e_gwillimbury","prib_f","fr_e_gwillimbury"},{"go_chime","prib","en_e_gwillimbury","prib_f","fr_e_gwillimbury"}},
                dep = {{"odz","newmarket"},{"odz","bradford"}},
			},
			{
				104, "Newmarket",
                arr = {{"go_chime","prib","en_newmarket","prib_f","fr_newmarket"},{"go_chime","prib","en_newmarket","prib_f","fr_newmarket"}},
				dep = {{"odz","aurora"},{"odz","e_gwillimbury"}},
                arrlast = {{"go_chime","prib","en_newmarket","prib_f","fr_newmarket","last","last_f"},{"go_chime","prib","en_newmarket","prib_f","fr_newmarket","last","last_f"}, "en_newmarket"},
			    not_last = {0.2, "train_goes_to", "newmarket"},
			},
			{
				105, "Aurora",
                arr = {{"go_chime","prib","en_aurora","prib_f","fr_aurora"},{"go_chime","prib","en_aurora","prib_f","fr_aurora"}},
				dep = {{"odz","king_city"},{"odz","newmarket"}},
                arrlast = {{"go_chime","prib","en_aurora","prib_f","fr_aurora","last","last_f"},{"go_chime","prib","en_aurora","prib_f","fr_aurora","last","last_f"}, "en_aurora"},
			    not_last = {0.2, "train_goes_to", "aurora"},
			},
			{
				106, "King City",
                arr = {{"go_chime","prib","en_king_city","prib_f","fr_king_city"},{"go_chime","prib","en_king_city","prib_f","fr_king_city"}},
				dep = {{"odz","maple"},{"odz","aurora"}},
			},
			{
				107, "Maple",
                arr = {{"go_chime","prib","en_maple","prib_f","fr_maple"},{"go_chime","prib","en_maple","prib_f","fr_maple"}},
				dep = {{"odz","rutherford"},{"odz","king_city"}},
                arrlast = {{"go_chime","prib","en_maple","prib_f","fr_maple","last","last_f"},{"go_chime","prib","en_maple","prib_f","fr_maple","last","last_f"}, "en_maple"},
			    not_last = {0.2, "train_goes_to", "maple"},
			},
			{
				108, "Rutherford",
                arr = {{"go_chime","prib","en_rutherford","prib_f","fr_rutherford"},{"go_chime","prib","en_rutherford","prib_f","fr_rutherford"}},
				dep = {{"odz","downsview"},{"odz","maple"}},
			},
			{
				109, "Downsview Park",
                arr = {{"go_chime","prib","en_downsview","prib_f","fr_downsview"},{"go_chime","prib","en_downsview","prib_f","fr_downsview"}},
				dep = {{"odz","union"},{"odz","rutherford"}},
				arrlast = {{"go_chime","prib","en_downsview","prib_f","fr_downsview","last","last_f"},{"go_chime","prib","en_downsview","prib_f","fr_downsview","last","last_f"}, "en_downsview"},
			    not_last = {0.2, "train_goes_to", "downsview"},
			},
			{
				110, "Union Station",
				arrlast = {{"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, nil, "en_union"},
				dep = {nil, {"odz","downsview"}},
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

		king_city = {"subway_announcers/en_go_c1/king_city.mp3", 1.34},
		rutherford = {"subway_announcers/en_go_c1/rutherford.mp3", 1.25},
		downsview = {"subway_announcers/en_go_c1/downsview.mp3", 1.36},
		barrie = {"subway_announcers/en_go_c1/barrie.mp3", 1.22},
		aurora = {"subway_announcers/en_go_c1/aurora.mp3", 1.05},
		e_gwillimbury = {"subway_announcers/en_go_c1/e_gwillimbury.mp3", 1.67},
		bradford = {"subway_announcers/en_go_c1/bradford.mp3", 1.05},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		maple = {"subway_announcers/en_go_c1/maple.mp3", 0.86},		
		newmarket = {"subway_announcers/en_go_c1/newmarket.mp3", 1.23},

		en_king_city = {"subway_announcers/en_go/king_city.mp3", 0.89},
		en_rutherford = {"subway_announcers/en_go/rutherford.mp3", 0.84},
		en_downsview = {"subway_announcers/en_go/downsview.mp3", 1.2},
		en_barrie = {"subway_announcers/en_go/barrie.mp3", 1.05},
		en_aurora = {"subway_announcers/en_go/aurora.mp3", 0.73},
		en_e_gwillimbury = {"subway_announcers/en_go/e_gwillimbury.mp3", 1.23},
		en_bradford = {"subway_announcers/en_go/bradford.mp3", 0.84},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_maple = {"subway_announcers/en_go/maple.mp3", 0.65},		
		en_newmarket = {"subway_announcers/en_go/newmarket.mp3", 0.86},

		fr_king_city = {"subway_announcers/fr_go/king_city.mp3", 1.1},
		fr_rutherford = {"subway_announcers/fr_go/rutherford.mp3", 1.3},
		fr_downsview = {"subway_announcers/fr_go/downsview.mp3", 1.62},
		fr_barrie = {"subway_announcers/fr_go/barrie.mp3", 1.36},
		fr_aurora = {"subway_announcers/fr_go/aurora.mp3", 0.94},
		fr_e_gwillimbury = {"subway_announcers/fr_go/e_gwillimbury.mp3", 1.46},
		fr_bradford = {"subway_announcers/fr_go/bradford.mp3", 1.18},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_maple = {"subway_announcers/fr_go/maple.mp3", 1.02},		
		fr_newmarket = {"subway_announcers/fr_go/newmarket.mp3", 1.28}
	
	},
	{
		{
			LED = {2, 3, 3, 3, 3, 2, 3, 3, 3, 3, 2},
			Name = "Barrie Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				100, "Allandale Waterfront",
				arrlast = {nil, {"go_chime","prib","en_allandale","prib_f","fr_allandale","last","last_f"}, "en_allandale"},
				dep = {{"odz","barrie"}, nil},
			},
			{
				101, "Barrie South",
                arr = {{"go_chime","prib","en_barrie","prib_f","fr_barrie"},{"go_chime","prib","en_barrie","prib_f","fr_barrie"}},
                dep = {{"odz","bradford"},{"odz","allandale"}},
			},
			{
				102, "Bradford",
                arr = {{"go_chime","prib","en_bradford","prib_f","fr_bradford"},{"go_chime","prib","en_bradford","prib_f","fr_bradford"}},
                dep = {{"odz","e_gwillimbury"},{"odz","barrie"}},
			},
			{
				103, "East Gwillimbury",
                arr = {{"go_chime","prib","en_e_gwillimbury","prib_f","fr_e_gwillimbury"},{"go_chime","prib","en_e_gwillimbury","prib_f","fr_e_gwillimbury"}},
                dep = {{"odz","newmarket"},{"odz","bradford"}},
			},
			{
				104, "Newmarket",
                arr = {{"go_chime","prib","en_newmarket","prib_f","fr_newmarket"},{"go_chime","prib","en_newmarket","prib_f","fr_newmarket"}},
				dep = {{"odz","aurora"},{"odz","e_gwillimbury"}},
                arrlast = {{"go_chime","prib","en_newmarket","prib_f","fr_newmarket","last","last_f"},{"go_chime","prib","en_newmarket","prib_f","fr_newmarket","last","last_f"}, "en_newmarket"},
			    not_last = {0.2, "train_goes_to", "newmarket"},
			},
			{
				105, "Aurora",
                arr = {{"go_chime","prib","en_aurora","prib_f","fr_aurora"},{"go_chime","prib","en_newmarket","prib_f","fr_aurora"}},
				dep = {{"odz","king_city"},{"odz","newmarket"}},
                arrlast = {{"go_chime","prib","en_aurora","prib_f","fr_aurora","last","last_f"},{"go_chime","prib","en_aurora","prib_f","fr_aurora","last","last_f"}, "en_aurora"},
			    not_last = {0.2, "train_goes_to", "aurora"},
			},
			{
				106, "King City",
                arr = {{"go_chime","prib","en_king_city","prib_f","fr_king_city"},{"go_chime","prib","en_king_city","prib_f","fr_king_city"}},
				dep = {{"odz","maple"},{"odz","aurora"}},
			},
			{
				107, "Maple",
                arr = {{"go_chime","prib","en_maple","prib_f","fr_maple"},{"go_chime","prib","en_maple","prib_f","fr_maple"}},
				dep = {{"odz","rutherford"},{"odz","king_city"}},
                arrlast = {{"go_chime","prib","en_maple","prib_f","fr_maple","last","last_f"},{"go_chime","prib","en_maple","prib_f","fr_maple","last","last_f"}, "en_maple"},
			    not_last = {0.2, "train_goes_to", "maple"},
			},
			{
				108, "Rutherford",
                arr = {{"go_chime","prib","en_rutherford","prib_f","fr_rutherford"},{"go_chime","prib","en_rutherford","prib_f","fr_rutherford"}},
				dep = {{"odz","downsview"},{"odz","maple"}},
			},
			{
				109, "Downsview Park",
                arr = {{"go_chime","prib","en_downsview","prib_f","fr_downsview"},{"go_chime","prib","en_downsview","prib_f","fr_downsview"}},
				dep = {{"odz","union"},{"odz","rutherford"}},
				arrlast = {{"go_chime","prib","en_downsview","prib_f","fr_downsview","last","last_f"},{"go_chime","prib","en_downsview","prib_f","fr_downsview","last","last_f"}, "en_downsview"},
			    not_last = {0.2, "train_goes_to", "downsview"},
			},
			{
				110, "Union Station",
				arrlast = {{"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, nil, "en_union"},
				dep = {nil, {"odz","downsview"}},
			}
		}
	}
)
