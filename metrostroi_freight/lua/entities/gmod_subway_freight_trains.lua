AddCSLuaFile()
--Entity only for spawner!
function ENT:Initialize() self:Remove() end

ENT.Type            = "anim"
ENT.Base            = "gmod_subway_base"
ENT.PrintName = "American Freight Train Spawner"
ENT.SkinsType = "freightcar" --Unused

ENT.Spawnable       = false
ENT.AdminSpawnable  = false

ENT.SubwayTrain = {
    Type = "American Freight Train ",
    Name = "American Freight Train ",
    WagType = 2,
    Manufacturer = "Spawner",
    EKKType = 703,
}

function ENT:SetEKKType(type)
	self.SubwayTrain.EKKType = type
end

function ENT:GetEKKType()
	return self.SubwayTrain.EKKType
end

ENT.Spawner = {
    model = {
	{"models/gsgtrainprops/trains/rolling_stock/hopper_covered_acf_4600.mdl",pos = Vector(0,0,-400)}, --default model
    },
    spawnfunc = function(i,tbls,tblt)
	local spawnFreight = {} --items sorted by size for model
	local ekk = tbls.ConnectorType
	
	if ekk==1 then SetEKKType(710) end
	if ekk==2 then SetEKKType(703) end
	if ekk==3 then SetEKKType(702) end
	if ekk==4 then SetEKKType(717) end
	if ekk==5 then SetEKKType(718) end
	if ekk==6 then SetEKKType(720) end
	if ekk==7 then SetEKKType(722) end

	if tbls.CPGondolas then 
	    table.insert(spawnFreight, "gmod_subway_cp_gondola") 

	end
	if tbls.Gondolas then 
	    table.insert(spawnFreight, "gmod_subway_freight_gondola") 

	end
	if tbls.Coalcars then 
	    table.insert(spawnFreight, "gmod_subway_freight_coalcar")

	end
	if tbls.GrainHoppers then 
	    table.insert(spawnFreight, "gmod_subway_grain_hopper") 

	end
	if tbls.PotashHoppers then 
	    table.insert(spawnFreight, "gmod_subway_potash_hopper") 

	end
	if tbls.Hoppers then 
	    table.insert(spawnFreight, "gmod_subway_freight_hopper") 

	end
	if tbls.Boxcars then 
	    table.insert(spawnFreight, "gmod_subway_freight_boxcar") 

	end
	if tbls.Flatcars then 
	    table.insert(spawnFreight, "gmod_subway_freight_flatcar") 

	end
	if tbls.BLAutoracks then 
	    table.insert(spawnFreight, "gmod_subway_bilevel_autorack") 

	end
	if tbls.TLAutoracks then 
	    table.insert(spawnFreight, "gmod_subway_trilevel_autorack") 

	end
	if tbls.Autoracks then 
	    table.insert(spawnFreight, "gmod_subway_freight_autorack") 

	end
    	return table.Random(spawnFreight)
    end,
    interim = "gmod_subway_freight_hopper", --default

   Metrostroi.Skins.GetTable("Texture","Spawner.Texture",false,"train"),
   {"Autoracks","Spawn autoracks (bilevel enclosed)","Boolean"},
   {"BLAutoracks","Spawn autoracks (bilevel)","Boolean"},
   {"TLAutoracks","Spawn autoracks (trilevel)","Boolean"},
   {"Flatcars","Spawn container flatcars","Boolean"},
   {"Boxcars","Spawn boxcars","Boolean"},
   {"Coalcars","Spawn coal cars","Boolean"},
   {"CPGondolas","Spawn CP Rail gondolas","Boolean"},
   {"Gondolas","Spawn gondolas","Boolean"},
   {"GrainHoppers","Spawn grain hoppers","Boolean"},
   {"Hoppers","Spawn hoppers","Boolean"},
   {"PotashHoppers","Spawn potash hoppers","Boolean"},
   {"ConnectorType","DPU passthrough electrical system type","List",{"Ezh3 (81-710)","E/Em/Ezh (81-703)","D (81-702)","81-717","TISU (81-718)","Yauza (81-720)","81-722"}},

}
