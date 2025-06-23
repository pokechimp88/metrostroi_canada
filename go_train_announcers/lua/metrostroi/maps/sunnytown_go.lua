local Map = game.GetMap() or ""
if Map:find("gm_metro_sunnytown_v1") then
    Metrostroi.PlatformMap = "sunnytown"
    Metrostroi.CurrentMap = "gm_sunnytown"
    Metrostroi.BogeyOldMap = true
else
    return
end

Metrostroi.AddPassSchemeTex("717_new", "GO Transit",{
	"metrostroi_skins/717_schemes/717_go",
})

Metrostroi.AddANSPAnnouncer("GO Lakeshore West Line", 
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

		mimico = {"subway_announcers/en_go_c1/mimico.mp3", 0.91},
		port_credit = {"subway_announcers/en_go_c1/port_credit.mp3", 1.04},
		clarkson = {"subway_announcers/en_go_c1/clarkson.mp3", 1.01},
		oakville = {"subway_announcers/en_go_c1/oakville.mp3", 0.86},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		long_branch = {"subway_announcers/en_go_c1/long_branch.mp3", 1.17},		
		exhibition = {"subway_announcers/en_go_c1/exhibition.mp3", 1.02},

		en_mimico = {"subway_announcers/en_go/mimico.mp3", 0.81},
		en_port_credit = {"subway_announcers/en_go/port_credit.mp3", 0.94},
		en_clarkson = {"subway_announcers/en_go/clarkson.mp3", 0.86},
		en_oakville = {"subway_announcers/en_go/oakville.mp3", 0.73},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_long_branch = {"subway_announcers/en_go/long_branch.mp3", 1.07},		
		en_exhibition = {"subway_announcers/en_go/exhibition.mp3", 0.95},

		fr_mimico = {"subway_announcers/fr_go/mimico.mp3", 1},
		fr_port_credit = {"subway_announcers/fr_go/port_credit.mp3", 1.3},
		fr_clarkson = {"subway_announcers/fr_go/clarkson.mp3", 1.25},
		fr_oakville = {"subway_announcers/fr_go/oakville.mp3", 1},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_long_branch = {"subway_announcers/fr_go/long_branch.mp3", 1.34},		
		fr_exhibition = {"subway_announcers/fr_go/exhibition.mp3", 1.3}
	
	},
	{
		{
			LED = {5, 4, 4, 4, 4, 4, 5},
			Name = "Lakeshore West Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				101, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","exhibition"},nil},
			},
			{
				102, "Exhibition",
                arr = {{"go_chime","prib","en_exhibition","prib_f","fr_exhibition"},{"go_chime","prib","en_exhibition","prib_f","fr_exhibition"}},
				dep = {{"odz","mimico"},{"odz","union"}},
                arrlast = {{"go_chime","prib","en_exhibition","prib_f","fr_exhibition","last","last_f"},{"go_chime","prib","en_exhibition","prib_f","fr_exhibition","last","last_f"}, "en_exhibition"},
			    not_last = {0.2, "train_goes_to", "exhibition"},
			},
			{
				103, "Mimico",
                arr = {{"go_chime","prib","en_mimico","prib_f","fr_mimico"},{"go_chime","prib","en_mimico","prib_f","fr_mimico"}},
				dep = {{"odz","long_branch"},{"odz","exhibition"}},
				arrlast = {{"go_chime","prib","en_mimico","prib_f","fr_mimico","last","last_f"},{"go_chime","prib","en_mimico","prib_f","fr_mimico","last","last_f"}, "en_mimico"},
			    not_last = {0.2, "train_goes_to", "mimico"},
			},
			{
				104, "Long Branch",
                arr = {{"go_chime","prib","en_long_branch","prib_f","fr_long_branch"},{"go_chime","prib","en_long_branch","prib_f","fr_long_branch"}},
				dep = {{"odz","port_credit"},{"odz","mimico"}},
               
			},
			{
				105, "Port Credit",
                arr = {{"go_chime","prib","en_port_credit","prib_f","fr_port_credit"},{"go_chime","prib","en_port_credit","prib_f","fr_port_credit"}},
				dep = {{"odz","clarkson"},{"odz","long_branch"}},
				arrlast = {{"go_chime","prib","en_port_credit","prib_f","fr_port_credit","last","last_f"},{"go_chime","prib","en_port_credit","prib_f","fr_port_credit","last","last_f"}, "en_port_credit"},
			    not_last = {0.2, "train_goes_to", "port_credit"},
			},
			{
				106, "Clarkson",
                arr = {{"go_chime","prib","en_clarkson","prib_f","fr_clarkson"},{"go_chime","prib","en_clarkson","prib_f","fr_clarkson"}},
				dep = {{"odz","oakville"},{"odz","port_credit"}},
			},
			{
				107, "Oakville",
				arrlast = {{"go_chime","prib","en_oakville","prib_f","fr_oakville","last","last_f"}, nil, "en_oakville"},
				dep = {nil, {"odz","clarkson"}},
			}
		}
	}
)

Metrostroi.AddANSPAnnouncer("GO Lakeshore East Line", 
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

		scarborough = {"subway_announcers/en_go_c1/scarborough.mp3", 0.86},
		guildwood = {"subway_announcers/en_go_c1/guildwood.mp3", 0.8},
		rouge_hill = {"subway_announcers/en_go_c1/rouge_hill.mp3", 1},
		pickering = {"subway_announcers/en_go_c1/pickering.mp3", 0.63},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		eglinton = {"subway_announcers/en_go_c1/eglinton.mp3", 0.86},		
		danforth = {"subway_announcers/en_go_c1/danforth.mp3", 0.73},

		en_scarborough = {"subway_announcers/en_go/scarborough.mp3", 0.92},
		en_guildwood = {"subway_announcers/en_go/guildwood.mp3", 0.84},
		en_rouge_hill = {"subway_announcers/en_go/rouge_hill.mp3", 0.92},
		en_pickering = {"subway_announcers/en_go/pickering.mp3", 0.76},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_eglinton = {"subway_announcers/en_go/eglinton.mp3", 0.81},		
		en_danforth = {"subway_announcers/en_go/danforth.mp3", 0.86},

		fr_scarborough = {"subway_announcers/fr_go/scarborough.mp3", 1.18},
		fr_guildwood = {"subway_announcers/fr_go/guildwood.mp3", 1.1},
		fr_rouge_hill = {"subway_announcers/fr_go/rouge_hill.mp3", 1.3},
		fr_pickering = {"subway_announcers/fr_go/pickering.mp3", 1.07},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_eglinton = {"subway_announcers/fr_go/eglinton.mp3", 1.23},		
		fr_danforth = {"subway_announcers/fr_go/danforth.mp3", 1.18}
	
	},
	{
		{
			LED = {5, 4, 4, 4, 4, 4, 5},
			Name = "Lakeshore East Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				101, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","danforth"},nil},
			},
			{
				102, "Danforth",
                arr = {{"go_chime","prib","en_danforth","prib_f","fr_danforth"},{"go_chime","prib","en_danforth","prib_f","fr_danforth"}},
				dep = {{"odz","scarborough"},{"odz","union"}},
                arrlast = {{"go_chime","prib","en_danforth","prib_f","fr_danforth","last","last_f"},{"go_chime","prib","en_danforth","prib_f","fr_danforth","last","last_f"}, "en_danforth"},
			    not_last = {0.2, "train_goes_to", "danforth"},
			},
			{
				103, "Scarborough",
                arr = {{"go_chime","prib","en_scarborough","prib_f","fr_scarborough"},{"go_chime","prib","en_scarborough","prib_f","fr_scarborough"}},
				dep = {{"odz","eglinton"},{"odz","danforth"}},
				arrlast = {{"go_chime","prib","en_scarborough","prib_f","fr_scarborough","last","last_f"},{"go_chime","prib","en_scarborough","prib_f","fr_scarborough","last","last_f"}, "en_scarborough"},
			    not_last = {0.2, "train_goes_to", "scarborough"},
			},
			{
				104, "Eglinton",
                arr = {{"go_chime","prib","en_eglinton","prib_f","fr_eglinton"},{"go_chime","prib","en_eglinton","prib_f","fr_eglinton"}},
				dep = {{"odz","guildwood"},{"odz","scarborough"}},
               
			},
			{
				105, "Guildwood",
                arr = {{"go_chime","prib","en_guildwood","prib_f","fr_guildwood"},{"go_chime","prib","en_guildwood","prib_f","fr_guildwood"}},
				dep = {{"odz","rouge_hill"},{"odz","eglinton"}},
				arrlast = {{"go_chime","prib","en_guildwood","prib_f","fr_guildwood","last","last_f"},{"go_chime","prib","en_guildwood","prib_f","fr_guildwood","last","last_f"}, "en_guildwood"},
			    not_last = {0.2, "train_goes_to", "guildwood"},
			},
			{
				106, "Rouge Hill",
                arr = {{"go_chime","prib","en_rouge_hill","prib_f","fr_rouge_hill"},{"go_chime","prib","en_rouge_hill","prib_f","fr_rouge_hill"}},
				dep = {{"odz","pickering"},{"odz","guildwood"}},
			},
			{
				107, "Pickering",
				arrlast = {{"go_chime","prib","en_pickering","prib_f","fr_pickering","last","last_f"}, nil, "en_pickering"},
				dep = {nil, {"odz","rouge_hill"}},
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

		mimico = {"subway_announcers/en_go_c1/mimico.mp3", 0.91},
		port_credit = {"subway_announcers/en_go_c1/port_credit.mp3", 1.04},
		clarkson = {"subway_announcers/en_go_c1/clarkson.mp3", 1.01},
		oakville = {"subway_announcers/en_go_c1/oakville.mp3", 0.86},
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		long_branch = {"subway_announcers/en_go_c1/long_branch.mp3", 1.17},		
		exhibition = {"subway_announcers/en_go_c1/exhibition.mp3", 1.02},

		en_mimico = {"subway_announcers/en_go/mimico.mp3", 0.81},
		en_port_credit = {"subway_announcers/en_go/port_credit.mp3", 0.94},
		en_clarkson = {"subway_announcers/en_go/clarkson.mp3", 0.86},
		en_oakville = {"subway_announcers/en_go/oakville.mp3", 0.73},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_long_branch = {"subway_announcers/en_go/long_branch.mp3", 1.07},		
		en_exhibition = {"subway_announcers/en_go/exhibition.mp3", 0.95},

		fr_mimico = {"subway_announcers/fr_go/mimico.mp3", 1},
		fr_port_credit = {"subway_announcers/fr_go/port_credit.mp3", 1.3},
		fr_clarkson = {"subway_announcers/fr_go/clarkson.mp3", 1.25},
		fr_oakville = {"subway_announcers/fr_go/oakville.mp3", 1},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_long_branch = {"subway_announcers/fr_go/long_branch.mp3", 1.34},		
		fr_exhibition = {"subway_announcers/fr_go/exhibition.mp3", 1.3}
	
	},
	{
		{
			LED = {5, 4, 4, 4, 4, 4, 5},
			Name = "Lakeshore West Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				101, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","exhibition"},nil},
			},
			{
				102, "Exhibition",
                arr = {{"go_chime","prib","en_exhibition","prib_f","fr_exhibition"},{"go_chime","prib","en_exhibition","prib_f","fr_exhibition"}},
				dep = {{"odz","mimico"},{"odz","union"}},
                arrlast = {{"go_chime","prib","en_exhibition","prib_f","fr_exhibition","last","last_f"},{"go_chime","prib","en_exhibition","prib_f","fr_exhibition","last","last_f"}, "en_exhibition"},
			    not_last = {0.2, "train_goes_to", "exhibition"},
			},
			{
				103, "Mimico",
                arr = {{"go_chime","prib","en_mimico","prib_f","fr_mimico"},{"go_chime","prib","en_mimico","prib_f","fr_mimico"}},
				dep = {{"odz","long_branch"},{"odz","exhibition"}},
				arrlast = {{"go_chime","prib","en_mimico","prib_f","fr_mimico","last","last_f"},{"go_chime","prib","en_mimico","prib_f","fr_mimico","last","last_f"}, "en_mimico"},
			    not_last = {0.2, "train_goes_to", "mimico"},
			},
			{
				104, "Long Branch",
                arr = {{"go_chime","prib","en_long_branch","prib_f","fr_long_branch"},{"go_chime","prib","en_long_branch","prib_f","fr_long_branch"}},
				dep = {{"odz","port_credit"},{"odz","mimico"}},
               
			},
			{
				105, "Port Credit",
                arr = {{"go_chime","prib","en_port_credit","prib_f","fr_port_credit"},{"go_chime","prib","en_port_credit","prib_f","fr_port_credit"}},
				dep = {{"odz","clarkson"},{"odz","long_branch"}},
				arrlast = {{"go_chime","prib","en_port_credit","prib_f","fr_port_credit","last","last_f"},{"go_chime","prib","en_port_credit","prib_f","fr_port_credit","last","last_f"}, "en_port_credit"},
			    not_last = {0.2, "train_goes_to", "port_credit"},
			},
			{
				106, "Clarkson",
                arr = {{"go_chime","prib","en_clarkson","prib_f","fr_clarkson"},{"go_chime","prib","en_clarkson","prib_f","fr_clarkson"}},
				dep = {{"odz","oakville"},{"odz","port_credit"}},
			},
			{
				107, "Oakville",
				arrlast = {{"go_chime","prib","en_oakville","prib_f","fr_oakville","last","last_f"}, nil, "en_oakville"},
				dep = {nil, {"odz","clarkson"}},
			}
		}
	}
)