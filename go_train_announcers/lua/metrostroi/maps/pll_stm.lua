local Map = game.GetMap() or "" 
if Map:find("gm_jar_pll") and Map:find("remastered") then 
Metrostroi.CurrentMap = "jar_pll_remastered"
Metrostroi.PlatformMap = "metrostroi"
else 
return 
end

Metrostroi.AddPassSchemeTex("722", "MTL",{
	"models/metrostroi_skins/722_schemes/mtl/722_orange",
	"models/metrostroi_skins/722_schemes/mtl/722_orange_inv",
})

Metrostroi.AddPassSchemeTex("717_new", "MTL",{
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

		p_jean_talon = {"subway_announcers/fr_stm/orange/next_jean_talon.mp3", 6},
		p_cremazie = {"subway_announcers/fr_stm/orange/next_cremazie.mp3", 3},
		p_cartier = {"subway_announcers/fr_stm/orange/next_cartier.mp3", 2},
		p_sauve = {"subway_announcers/fr_stm/orange/next_sauve.mp3", 2},
		p_bourassa = {"subway_announcers/fr_stm/orange/next_bourassa.mp3", 3},
		p_concorde = {"subway_announcers/fr_stm/orange/next_concorde.mp3", 3},
		p_rosemont = {"subway_announcers/fr_stm/orange/next_rosemont.mp3", 3},		
		p_jarry = {"subway_announcers/fr_stm/orange/next_jarry.mp3", 2},		
		p_beaubien = {"subway_announcers/fr_stm/orange/next_beaubien.mp3", 3},
		p_montmorency = {"subway_announcers/fr_stm/orange/next_montmorency.mp3", 3},

		jean_talon = {"subway_announcers/fr_stm/orange/jean_talon.mp3", 2},
		cremazie = {"subway_announcers/fr_stm/orange/cremazie.mp3", 2},
		bourassa = {"subway_announcers/fr_stm/orange/bourassa.mp3", 2.5},
		concorde = {"subway_announcers/fr_stm/orange/concorde.mp3", 2},	
		rosemont = {"subway_announcers/fr_stm/orange/rosemont.mp3", 2},	
		cartier = {"subway_announcers/fr_stm/orange/cartier.mp3", 1},	
		sauve = {"subway_announcers/fr_stm/orange/sauve.mp3", 1},		
		jarry = {"subway_announcers/fr_stm/orange/jarry.mp3", 1},		
		beaubien = {"subway_announcers/fr_stm/orange/beaubien.mp3", 2},
		montmorency = {"subway_announcers/fr_stm/orange/montmorency.mp3", 2},
		sp_beaubien = {"subway_announcers/fr_stm/orange/sp_beaubien.mp3", 1},
		sp_cremazie = {"subway_announcers/fr_stm/orange/sp_cremazie.mp3", 1},	
		sp_bourassa = {"subway_announcers/fr_stm/orange/sp_bourassa.mp3", 1.5},		
	
	},
	{
		{
			LED = {3,3,3,3,3,3,3,3,3,3},
			Name = "Ligne Orange STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				150, "Rosemont",
				arrlast = {nil, {"rosemont", "last"}, "rosemont"},
				dep = {{"odz","bienvenue","p_beaubien"},nil},
			},
			{
				151, "Beaubien",
                arr = {{"beaubien"},{"beaubien"}},
				dep = {{"odz","p_jean_talon"},{"odz","p_rosemont"}},
				arrlast = {{"beaubien","last"},{"beaubien","last"}, "sp_beaubien"},
			    not_last = {0.2, "train_goes_to", "sp_beaubien"},
			},
			{
				152, "Jean-Talon",
                arr = {{"jean_talon"},{"jean_talon"}},
				dep = {{"odz","p_jarry"},{"odz","p_beaubien"}},
			},
			{
				153, "Jarry",
                arr = {{"jarry"},{"jarry"}},
				dep = {{"odz","p_cremazie"},{"odz","p_jean_talon"}},
               
			},
			{
				154, "Cremazie",
                arr = {{"cremazie"},{"cremazie"}},
				dep = {{"odz","p_sauve"},{"odz","p_jarry"}},
				arrlast = {{"cremazie","last"},{"cremazie","last"}, "sp_cremazie"},
			    not_last = {0.2, "train_goes_to", "sp_cremazie"},
			},
			{
				155, "Sauve",
                arr = {{"sauve"},{"sauve"}},
				dep = {{"odz","p_bourassa"},{"odz","p_cremazie"}},
			},
			{
				156, "Henri-Bourassa",
                arr = {{"bourassa"},{"bourassa"}},
				dep = {{"odz","p_concorde"},{"odz","bienvenue","p_sauve"}},
				arrlast = {{"bourassa","last"},{"bourassa","last"}, "sp_bourassa"},
			    not_last = {0.2, "train_goes_to", "sp_bourassa"},
			},
			{
				157, "Cartier",
                arr = {{"cartier"},{"cartier"}},
				dep = {{"odz","bienvenue","p_concorde"},{"odz","p_cremazie"}},
				arrlast = {{"cartier","last"},{"cartier","last"}, "sp_cartier"},
			    not_last = {0.2, "train_goes_to", "sp_cartier"},
			},
			{
				158, "De La Concorde",
                arr = {{"concorde"},{"concorde"}},
				dep = {{"odz","p_montmorency"},{"odz","p_bourassa"}},
			},
			{
				159, "Montmorency",
				arrlast = {{"montmorency","last"}, nil, "montmorency"},
				dep = {nil, {"odz","bienvenue","p_concorde"}},
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
		tone = {"subway_announcers/en_go_c1/click.mp3", 0.1},
		odz = {"subway_announcers/fr_stm/odz.mp3", 6},
		last = {"subway_announcers/fr_stm/terminus.mp3", 6},
		train_goes_to = {"subway_announcers/fr_stm/train_goes_to.mp3", 4},
		spec_attention_train_depart = {"subway_announcers/fr_stm/spec_last.mp3", 5},
		spec_attention_train_stop = {"subway_announcers/fr_stm/spec_stop.mp3", 11},
		spec_attention_train_fast = {"subway_announcers/fr_stm/spec_doors.mp3", 10},
		bienvenue = {"subway_announcers/fr_stm/orange/welcome_aboard.mp3", 4},

		p_jean_talon = {"subway_announcers/fr_stm/orange/next_jean_talon.mp3", 6},
		p_cremazie = {"subway_announcers/fr_stm/orange/next_cremazie.mp3", 3},
		p_cartier = {"subway_announcers/fr_stm/orange/next_cartier.mp3", 2},
		p_sauve = {"subway_announcers/fr_stm/orange/next_sauve.mp3", 2},
		p_bourassa = {"subway_announcers/fr_stm/orange/next_bourassa.mp3", 3},
		p_concorde = {"subway_announcers/fr_stm/orange/next_concorde.mp3", 3},
		p_rosemont = {"subway_announcers/fr_stm/orange/next_rosemont.mp3", 3},		
		p_jarry = {"subway_announcers/fr_stm/orange/next_jarry.mp3", 2},		
		p_beaubien = {"subway_announcers/fr_stm/orange/next_beaubien.mp3", 3},
		p_montmorency = {"subway_announcers/fr_stm/orange/next_montmorency.mp3", 3},

		jean_talon = {"subway_announcers/fr_stm/orange/jean_talon.mp3", 2},
		cremazie = {"subway_announcers/fr_stm/orange/cremazie.mp3", 2},
		bourassa = {"subway_announcers/fr_stm/orange/bourassa.mp3", 2.5},
		concorde = {"subway_announcers/fr_stm/orange/concorde.mp3", 2},	
		rosemont = {"subway_announcers/fr_stm/orange/rosemont.mp3", 2},	
		cartier = {"subway_announcers/fr_stm/orange/cartier.mp3", 1},	
		sauve = {"subway_announcers/fr_stm/orange/sauve.mp3", 1},		
		jarry = {"subway_announcers/fr_stm/orange/jarry.mp3", 1},		
		beaubien = {"subway_announcers/fr_stm/orange/beaubien.mp3", 2},
		montmorency = {"subway_announcers/fr_stm/orange/montmorency.mp3", 2},
		sp_beaubien = {"subway_announcers/fr_go/orange/sp_beaubien.mp3", 1},
		sp_cremazie = {"subway_announcers/fr_go/orange/sp_cremazie.mp3", 1},	
		sp_bourassa = {"subway_announcers/fr_go/orange/sp_bourassa.mp3", 1.5},		
	
	},
	{
		{
			LED = {3,3,3,3,3,3,3,3,3,3},
			Name = "Ligne Orange STM",
			spec_last = {"spec_attention_train_fast"},
			spec_wait = {{"spec_attention_train_stop"},{"spec_attention_train_depart"}},
			Loop = false,
			{
				150, "Rosemont",
				arrlast = {nil, {"rosemont", "last"}, "rosemont"},
				dep = {{"odz","bienvenue","p_beaubien"},nil},
			},
			{
				151, "Beaubien",
                arr = {{"beaubien"},{"beaubien"}},
				dep = {{"odz","p_jean_talon"},{"odz","p_rosemont"}},
				arrlast = {{"beaubien","last"},{"beaubien","last"}, "sp_beaubien"},
			    not_last = {0.2, "train_goes_to", "sp_beaubien"},
			},
			{
				152, "Jean-Talon",
                arr = {{"jean_talon"},{"jean_talon"}},
				dep = {{"odz","p_jarry"},{"odz","p_beaubien"}},
			},
			{
				153, "Jarry",
                arr = {{"jarry"},{"jarry"}},
				dep = {{"odz","p_cremazie"},{"odz","p_jean_talon"}},
               
			},
			{
				154, "Cremazie",
                arr = {{"cremazie"},{"cremazie"}},
				dep = {{"odz","p_sauve"},{"odz","p_jarry"}},
				arrlast = {{"cremazie","last"},{"cremazie","last"}, "sp_cremazie"},
			    not_last = {0.2, "train_goes_to", "sp_cremazie"},
			},
			{
				155, "Sauve",
                arr = {{"sauve"},{"sauve"}},
				dep = {{"odz","p_bourassa"},{"odz","p_cremazie"}},
			},
			{
				156, "Henri-Bourassa",
                arr = {{"bourassa"},{"bourassa"}},
				dep = {{"odz","p_concorde"},{"odz","bienvenue","p_sauve"}},
				arrlast = {{"bourassa","last"},{"bourassa","last"}, "sp_bourassa"},
			    not_last = {0.2, "train_goes_to", "sp_bourassa"},
			},
			{
				157, "Cartier",
                arr = {{"cartier"},{"cartier"}},
				dep = {{"odz","bienvenue","p_concorde"},{"odz","p_cremazie"}},
				arrlast = {{"cartier","last"},{"cartier","last"}, "sp_cartier"},
			    not_last = {0.2, "train_goes_to", "sp_cartier"},
			},
			{
				158, "De La Concorde",
                arr = {{"concorde"},{"concorde"}},
				dep = {{"odz","p_montmorency"},{"odz","p_bourassa"}},
			},
			{
				159, "Montmorency",
				arrlast = {{"montmorency","last"}, nil, "montmorency"},
				dep = {nil, {"odz","bienvenue","p_concorde"}},
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

		p_jean_talon = {"subway_announcers/fr_stm/orange/next_jean_talon.mp3", 6},
		p_cremazie = {"subway_announcers/fr_stm/orange/next_cremazie.mp3", 3},
		p_cartier = {"subway_announcers/fr_stm/orange/next_cartier.mp3", 2},
		p_sauve = {"subway_announcers/fr_stm/orange/next_sauve.mp3", 2},
		p_bourassa = {"subway_announcers/fr_stm/orange/next_bourassa.mp3", 3},
		p_concorde = {"subway_announcers/fr_stm/orange/next_concorde.mp3", 3},
		p_rosemont = {"subway_announcers/fr_stm/orange/next_rosemont.mp3", 3},		
		p_jarry = {"subway_announcers/fr_stm/orange/next_jarry.mp3", 2},		
		p_beaubien = {"subway_announcers/fr_stm/orange/next_beaubien.mp3", 3},
		p_montmorency = {"subway_announcers/fr_stm/orange/next_montmorency.mp3", 3},

		jean_talon = {"subway_announcers/fr_stm/orange/jean_talon.mp3", 2},
		cremazie = {"subway_announcers/fr_stm/orange/cremazie.mp3", 2},
		bourassa = {"subway_announcers/fr_stm/orange/bourassa.mp3", 2.5},
		concorde = {"subway_announcers/fr_stm/orange/concorde.mp3", 2},	
		rosemont = {"subway_announcers/fr_stm/orange/rosemont.mp3", 2},	
		cartier = {"subway_announcers/fr_stm/orange/cartier.mp3", 1},	
		sauve = {"subway_announcers/fr_stm/orange/sauve.mp3", 1},		
		jarry = {"subway_announcers/fr_stm/orange/jarry.mp3", 1},		
		beaubien = {"subway_announcers/fr_stm/orange/beaubien.mp3", 2},
		montmorency = {"subway_announcers/fr_stm/orange/montmorency.mp3", 2},
		sp_beaubien = {"subway_announcers/fr_go/orange/sp_beaubien.mp3", 1},
		sp_cremazie = {"subway_announcers/fr_go/orange/sp_cremazie.mp3", 1},	
		sp_bourassa = {"subway_announcers/fr_go/orange/sp_bourassa.mp3", 1.5},		
	
	},
	{
			{
				150, "Rosemont",
				arrlast = {nil, {"rosemont", "last"}, "rosemont"},
				dep = {{"odz","bienvenue","p_beaubien"},nil},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				151, "Beaubien",
                arr = {{"beaubien"},{"beaubien"}},
				dep = {{"odz","p_jean_talon"},{"odz","p_rosemont"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				152, "Jean-Talon",
                arr = {{"jean_talon"},{"jean_talon"}},
				dep = {{"odz","p_jarry"},{"odz","p_beaubien"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				153, "Jarry",
                arr = {{"jarry"},{"jarry"}},
				dep = {{"odz","p_cremazie"},{"odz","p_jean_talon"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
               
			},
			{
				154, "Cremazie",
                arr = {{"cremazie"},{"cremazie"}},
				dep = {{"odz","p_sauve"},{"odz","p_jarry"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				155, "Sauve",
                arr = {{"sauve"},{"sauve"}},
				dep = {{"odz","p_bourassa"},{"odz","p_cremazie"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				156, "Henri-Bourassa",
				dep = {nil,{"odz","bienvenue","p_sauve"}},
				arrlast = {{"bourassa","last"},{"bourassa","last"}, "sp_bourassa"},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				157, "Cartier",
				dep = {{"odz","bienvenue","p_concorde"},nil},
				arrlast = {{"cartier","last"},{"cartier","last"}, "sp_cartier"},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				158, "De La Concorde",
                arr = {{"concorde"},{"concorde"}},
				dep = {{"odz","p_montmorency"},{"odz","p_bourassa"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			},
			{
				159, "Montmorency",
				arrlast = {{"montmorency","last"}, nil, "montmorency"},
				dep = {nil, {"odz","bienvenue","p_concorde"}},
				dist = 40,
				noises = {2,1},noiserandom = 0.2,
			}
		}
)