local Map = game.GetMap() or ""
if Map:find("gm_metro_lichterfelde") then
    Metrostroi.PlatformMap = "lichterfelde"
    Metrostroi.CurrentMap = "gm_lichterfelde"
    Metrostroi.BogeyOldMap = true
else
    return
end

Metrostroi.AddPassSchemeTex("717_new", "GO Transit",{
	"metrostroi_skins/717_schemes/717_go",
})

Metrostroi.AddANSPAnnouncer("GO Kitchener Line", 
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

		malton = {"subway_announcers/en_go_c1/malton.mp3", 0.9},
		weston = {"subway_announcers/en_go_c1/weston.mp3", 0.7},
		bloor = {"subway_announcers/en_go_c1/bloor.mp3", 1.1},
		georgetown = {"subway_announcers/en_go_c1/georgetown.mp3", 1.1},
		brampton = {"subway_announcers/en_go_c1/brampton.mp3", 0.9},
		mount_pleasant = {"subway_announcers/en_go_c1/mount_pleasant.mp3", 1.2},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		etobicoke_n = {"subway_announcers/en_go_c1/etobicoke_n.mp3", 1.16},		
		bramalea = {"subway_announcers/en_go_c1/bramalea.mp3", 0.85},

		en_malton = {"subway_announcers/en_go/malton.mp3", 0.72},
		en_weston = {"subway_announcers/en_go/weston.mp3", 0.75},
		en_bloor = {"subway_announcers/en_go/bloor.mp3", 0.7},
		en_georgetown = {"subway_announcers/en_go/georgetown.mp3", 0.95},
		en_brampton = {"subway_announcers/en_go/brampton.mp3", 0.83},
		en_mount_pleasant = {"subway_announcers/en_go/mount_pleasant.mp3", 1.1},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_etobicoke_n = {"subway_announcers/en_go/etobicoke_n.mp3", 1.25},		
		en_bramalea = {"subway_announcers/en_go/bramalea.mp3", 0.85},

		fr_malton = {"subway_announcers/fr_go/malton.mp3", 1.1},
		fr_weston = {"subway_announcers/fr_go/weston.mp3", 1.13},
		fr_bloor = {"subway_announcers/fr_go/bloor.mp3", 1},
		fr_georgetown = {"subway_announcers/fr_go/georgetown.mp3", 1.25},
		fr_brampton = {"subway_announcers/fr_go/brampton.mp3", 1.2},
		fr_mount_pleasant = {"subway_announcers/fr_go/mount_pleasant.mp3", 1.6},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_etobicoke_n = {"subway_announcers/fr_go/etobicoke_n.mp3", 1.52},		
		fr_bramalea = {"subway_announcers/fr_go/bramalea.mp3", 1.1}
	
	},
	{
		{
			LED = {4, 3, 3, 3, 4, 3, 3, 3, 4},
			Name = "Kitchener Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				100, "Georgetown",
				arrlast = {nil, {"go_chime","prib","en_georgetown","prib_f","fr_georgetown","last","last_f"}, "en_georgetown"},
				dep = {{"odz","mount_pleasant"}, nil},
			},
			{
				101, "Mount Pleasant",
                arr = {{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant"},{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant"}},
                dep = {{"odz","brampton"},{"odz","georgetown"}},
                arrlast = {{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant","last","last_f"},{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant","last","last_f"}, "en_mount_pleasant"},
			    not_last = {0.2, "train_goes_to", "mount_pleasant"},
			},
			{
				102, "Brampton",
                arr = {{"go_chime","prib","en_brampton","prib_f","fr_brampton"},{"go_chime","prib","en_brampton","prib_f","fr_brampton"}},
                dep = {{"odz","bramalea"},{"odz","mount_pleasant"}},
                arrlast = {{"go_chime","prib","en_brampton","prib_f","fr_brampton", "last","last_f"},{"go_chime","prib","en_brampton","prib_f","fr_brampton", "last","last_f"}, "en_brampton"},
			    not_last = {0.2, "train_goes_to", "brampton"},
			},
			{
				103, "Bramalea",
                arr = {{"go_chime","prib","en_bramalea","prib_f","fr_bramalea"},{"go_chime","prib","en_bramalea","prib_f","fr_bramalea"}},
				dep = {{"odz","malton"},{"odz","brampton"}},
                arrlast = {{"go_chime","prib","en_bramalea","prib_f","fr_bramalea","last","last_f"},{"go_chime","prib","en_bramalea","prib_f","fr_bramalea","last","last_f"}, "en_bramalea"},
			    not_last = {0.2, "train_goes_to", "bramalea"},
			},
			{
				104, "Malton",
                arr = {{"go_chime","prib","en_malton","prib_f","fr_malton"},{"go_chime","prib","en_malton","prib_f","fr_malton"}},
				dep = {{"odz","etobicoke_n"},{"odz","bramalea"}},
			},
			{
				105, "Etobicoke North",
                arr = {{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n"},{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n"}},
				dep = {{"odz","weston"},{"odz","malton"}},
                arrlast = {{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n","last","last_f"},{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n","last","last_f"}, "en_etobicoke_n"},
			    not_last = {0.2, "train_goes_to", "etobicoke_n"},
			},
			{
				106, "Weston",
                arr = {{"go_chime","prib","en_weston","prib_f","fr_weston"},{"go_chime","prib","en_weston","prib_f","fr_weston"}},
				dep = {{"odz","bloor"},{"odz","etobicoke_n"}},
			},
			{
				107, "Bloor",
                arr = {{"go_chime","prib","en_bloor","prib_f","fr_bloor"},{"go_chime","prib","en_bloor","prib_f","fr_bloor"}},
				dep = {{"odz","union"},{"odz","weston"}},
			},
			{
				108, "Union Station",
				arrlast = {{"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, nil, "en_union"},
				dep = {nil, {"odz","bloor"}},
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

		malton = {"subway_announcers/en_go_c1/malton.mp3", 0.9},
		weston = {"subway_announcers/en_go_c1/weston.mp3", 0.7},
		bloor = {"subway_announcers/en_go_c1/bloor.mp3", 1.1},
		georgetown = {"subway_announcers/en_go_c1/georgetown.mp3", 1.1},
		brampton = {"subway_announcers/en_go_c1/brampton.mp3", 0.9},
		mount_pleasant = {"subway_announcers/en_go_c1/mount_pleasant.mp3", 1.2},	
		union = {"subway_announcers/en_go_c1/union.mp3", 1.1},		
		etobicoke_n = {"subway_announcers/en_go_c1/etobicoke_n.mp3", 1.16},		
		bramalea = {"subway_announcers/en_go_c1/bramalea.mp3", 0.85},

		en_malton = {"subway_announcers/en_go/malton.mp3", 0.72},
		en_weston = {"subway_announcers/en_go/weston.mp3", 0.75},
		en_bloor = {"subway_announcers/en_go/bloor.mp3", 0.7},
		en_georgetown = {"subway_announcers/en_go/georgetown.mp3", 0.95},
		en_brampton = {"subway_announcers/en_go/brampton.mp3", 0.83},
		en_mount_pleasant = {"subway_announcers/en_go/mount_pleasant.mp3", 1.1},	
		en_union = {"subway_announcers/en_go/union.mp3", 1.15},		
		en_etobicoke_n = {"subway_announcers/en_go/etobicoke_n.mp3", 1.25},		
		en_bramalea = {"subway_announcers/en_go/bramalea.mp3", 0.85},

		fr_malton = {"subway_announcers/fr_go/malton.mp3", 1.1},
		fr_weston = {"subway_announcers/fr_go/weston.mp3", 1.13},
		fr_bloor = {"subway_announcers/fr_go/bloor.mp3", 1},
		fr_georgetown = {"subway_announcers/fr_go/georgetown.mp3", 1.25},
		fr_brampton = {"subway_announcers/fr_go/brampton.mp3", 1.2},
		fr_mount_pleasant = {"subway_announcers/fr_go/mount_pleasant.mp3", 1.6},	
		fr_union = {"subway_announcers/fr_go/union.mp3", 1.3},		
		fr_etobicoke_n = {"subway_announcers/fr_go/etobicoke_n.mp3", 1.52},		
		fr_bramalea = {"subway_announcers/fr_go/bramalea.mp3", 1.1}
	
	},
	{
		{
			LED = {4, 3, 3, 3, 4, 3, 3, 3, 4},
			Name = "Kitchener Line",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"go_chime","spec_attention_train_stop","spec_attention_train_stop_f"},{"go_chime","spec_attention_train_depart","spec_attention_train_depart_f"}},
			Loop = false,
			{
				100, "Georgetown",
				arrlast = {nil, {"go_chime","prib","en_georgetown","prib_f","fr_georgetown","last","last_f"}, "en_georgetown"},
				dep = {{"odz","mount_pleasant"}, nil},
			},
			{
				101, "Mount Pleasant",
                arr = {{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant"},{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant"}},
                dep = {{"odz","brampton"},{"odz","georgetown"}},
                arrlast = {{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant","last","last_f"},{"go_chime","prib","en_mount_pleasant","prib_f","fr_mount_pleasant","last","last_f"}, "en_mount_pleasant"},
			    not_last = {0.2, "train_goes_to", "mount_pleasant"},
			},
			{
				102, "Brampton",
                arr = {{"go_chime","prib","en_brampton","prib_f","fr_brampton"},{"go_chime","prib","en_brampton","prib_f","fr_brampton"}},
                dep = {{"odz","bramalea"},{"odz","mount_pleasant"}},
                arrlast = {{"go_chime","prib","en_brampton","prib_f","fr_brampton", "last","last_f"},{"go_chime","prib","en_brampton","prib_f","fr_brampton", "last","last_f"}, "en_brampton"},
			    not_last = {0.2, "train_goes_to", "brampton"},
			},
			{
				103, "Bramalea",
                arr = {{"go_chime","prib","en_bramalea","prib_f","fr_bramalea"},{"go_chime","prib","en_bramalea","prib_f","fr_bramalea"}},
				dep = {{"odz","malton"},{"odz","brampton"}},
                arrlast = {{"go_chime","prib","en_bramalea","prib_f","fr_bramalea","last","last_f"},{"go_chime","prib","en_bramalea","prib_f","fr_bramalea","last","last_f"}, "en_bramalea"},
			    not_last = {0.2, "train_goes_to", "bramalea"},
			},
			{
				104, "Malton",
                arr = {{"go_chime","prib","en_malton","prib_f","fr_malton"},{"go_chime","prib","en_malton","prib_f","fr_malton"}},
				dep = {{"odz","etobicoke_n"},{"odz","bramalea"}},
			},
			{
				105, "Etobicoke North",
                arr = {{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n"},{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n"}},
				dep = {{"odz","weston"},{"odz","malton"}},
                arrlast = {{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n","last","last_f"},{"go_chime","prib","en_etobicoke_n","prib_f","fr_etobicoke_n","last","last_f"}, "en_etobicoke_n"},
			    not_last = {0.2, "train_goes_to", "etobicoke_n"},
			},
			{
				106, "Weston",
                arr = {{"go_chime","prib","en_weston","prib_f","fr_weston"},{"go_chime","prib","en_weston","prib_f","fr_weston"}},
				dep = {{"odz","bloor"},{"odz","etobicoke_n"}},
			},
			{
				107, "Bloor",
                arr = {{"go_chime","prib","en_bloor","prib_f","fr_bloor"},{"go_chime","prib","en_bloor","prib_f","fr_bloor"}},
				dep = {{"odz","union"},{"odz","weston"}},
			},
			{
				108, "Union Station",
				arrlast = {{"go_chime","prib","en_union", "prib_f", "fr_union", "last_union", "last_union_f"}, nil, "en_union"},
				dep = {nil, {"odz","bloor"}},
			}
		}
	}
)