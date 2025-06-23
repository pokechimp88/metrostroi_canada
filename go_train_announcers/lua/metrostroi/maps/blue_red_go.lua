local Map = game.GetMap():lower() or ""
if Map:find("gm_metro_blue_red_lines") then
    Metrostroi.PlatformMap = "metrostroi"
    Metrostroi.CurrentMap = "metro_blue_red_lines"
else
    return
end

Metrostroi.AddPassSchemeTex("717_new", "GO Transit",{
	"metrostroi_skins/717_schemes/717_go",
})

Metrostroi.AddANSPAnnouncer("GO Stoufville Line", 
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

		agincourt = {"subway_announcers/en_go_c1/agincourt.mp3", 1.25},
		milliken = {"subway_announcers/en_go_c1/milliken.mp3", 1.05},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		kennedy = {"subway_announcers/en_go_c1/kennedy.mp3", 1.05},		

		en_agincourt = {"subway_announcers/en_go/agincourt.mp3", 0.94},
		en_milliken = {"subway_announcers/en_go/milliken.mp3", 0.81},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_kennedy = {"subway_announcers/en_go/kennedy.mp3", 0.74},		

		fr_agincourt = {"subway_announcers/fr_go/agincourt.mp3", 1.25},
		fr_milliken = {"subway_announcers/fr_go/milliken.mp3", 1.23},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_kennedy = {"subway_announcers/fr_go/kennedy.mp3", 0.89},		
	
	},
	{
		{
			LED = {7,8,8,7},
			Name = "Stoufville Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,		
			{
				201, "Union Station",
				arrlast = {nil,{"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, "en_union"},
				dep = {{"odz","kennedy"},nil},
			},
			{
				202, "Kennedy",
                arr = {{"go_chime","prib","en_kennedy","prib_f","fr_kennedy"},{"go_chime","prib","en_kennedy","prib_f","fr_kennedy"}},
				dep = {{"odz","agincourt"},{"odz","union"}},
			},
			{
				203, "Agincourt",
                arr = {{"go_chime","prib","en_agincourt","prib_f","fr_agincourt"},{"go_chime","prib","en_agincourt","prib_f","fr_agincourt"}},
				dep = {{"odz","milliken"},{"odz","kennedy"}},
			},
			{
				204, "Milliken",
				arrlast = {{"go_chime","prib","en_milliken","prib_f","fr_milliken","last","last_f"}, nil, "en_milliken"},
				dep = {nil, {"odz","agincourt"}},
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

		agincourt = {"subway_announcers/en_go_c1/agincourt.mp3", 1.25},
		milliken = {"subway_announcers/en_go_c1/milliken.mp3", 1.05},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		kennedy = {"subway_announcers/en_go_c1/kennedy.mp3", 1.05},		

		en_agincourt = {"subway_announcers/en_go/agincourt.mp3", 0.94},
		en_milliken = {"subway_announcers/en_go/milliken.mp3", 0.81},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_kennedy = {"subway_announcers/en_go/kennedy.mp3", 0.74},		

		fr_agincourt = {"subway_announcers/fr_go/agincourt.mp3", 1.25},
		fr_milliken = {"subway_announcers/fr_go/milliken.mp3", 1.23},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_kennedy = {"subway_announcers/fr_go/kennedy.mp3", 0.89},		
	
	},
	{
		{
			LED = {7,8,8,7},
			Name = "Stoufville Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				201, "Union Station",
				arrlast = {nil, {"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"} , "en_union"},
				dep = {{"odz","kennedy"},nil},
			},
			{
				202, "Kennedy",
                arr = {{"go_chime","prib","en_kennedy","prib_f","fr_kennedy"},{"go_chime","prib","en_kennedy","prib_f","fr_kennedy"}},
				dep = {{"odz","agincourt"},{"odz","union"}},
			},
			{
				203, "Agincourt",
                arr = {{"go_chime","prib","en_agincourt","prib_f","fr_agincourt"},{"go_chime","prib","en_agincourt","prib_f","fr_agincourt"}},
				dep = {{"odz","milliken"},{"odz","kennedy"}},
			},
			{
				204, "Milliken",
				arrlast = {{"go_chime","prib","en_milliken","prib_f","fr_milliken","last","last_f"}, nil, "en_milliken"},
				dep = {nil, {"odz","agincourt"}},
			}
		}
	}
)