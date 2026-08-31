AddCSLuaFile()
--Entity only for spawner!
function ENT:Initialize() self:Remove() end

ENT.Type            = "anim"
ENT.Base            = "gmod_subway_base"
ENT.PrintName = "Freight Train Spawner"
ENT.SkinsType = "freightcar" --Unused

ENT.Spawnable       = false
ENT.AdminSpawnable  = false

ENT.SubwayTrain = {
    Type = "Freight Train ",
    Name = "Freight Train ",
    WagType = 2,
    Manufacturer = "Spawner",
    EKKType = 710,
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
	local ekk = 710
	--[[
	if tbls.ConnectorType == 1 then train:SetEKKType(710) end
	if tbls.ConnectorType == 2 then train:SetEKKType(703) end
	if tbls.ConnectorType == 3 then train:SetEKKType(702) end
	if tbls.ConnectorType == 4 then train:SetEKKType(717) end
	if tbls.ConnectorType == 5 then train:SetEKKType(718) end
	if tbls.ConnectorType == 6 then train:SetEKKType(720) end
	if tbls.ConnectorType == 7 then train:SetEKKType(722) end]]

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
	if tbls.ContainerFlatcars then 
	    table.insert(spawnFreight, "gmod_subway_container_flatcar") 
	end
	if tbls.OldFlatcars then 
	    table.insert(spawnFreight, "gmod_subway_old_flatcar") 
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
	if tbls.Bulkheads then 
	    table.insert(spawnFreight, "gmod_subway_bulkhead_flatcar") 
	end
	if tbls.CNBulkheads then 
	    table.insert(spawnFreight, "gmod_subway_freight_bulkhead") 
	end
	if tbls.Centerbeams then 
	    table.insert(spawnFreight, "gmod_subway_freight_centerbeam") 
	end
	if tbls.APBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_long_boxcar") 
	end
	if tbls.EXBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_tall_boxcar") 
	end
	if tbls.FMBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_fmc_boxcar") 
	end
	if tbls.FRBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_ribbed_boxcar") 
	end
	if tbls.CNBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_insulated_boxcar") 
	end
	if tbls.PCBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_pcf_boxcar") 
	end
	if tbls.UPBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_up_boxcar") 
	end
	if tbls.DDBoxcars then 
	    table.insert(spawnFreight, "gmod_subway_double_boxcar") 
	end
        if tbls.Reefers then 
	    table.insert(spawnFreight, "gmod_subway_freight_reefer") 
	end
	if tbls.Tankers then 
	    table.insert(spawnFreight, "gmod_subway_freight_tanker") 
	end
	if tbls.CoalGons then 
	    table.insert(spawnFreight, "gmod_subway_coal_gondola") 
	end
	if tbls.SulfurGons then 
	    table.insert(spawnFreight, "gmod_subway_sulfur_gondola") 
	end
	if tbls.PSHoppers then 
	    table.insert(spawnFreight, "gmod_subway_pullman_hopper") 
	end
	if tbls.TRHoppers then 
	    table.insert(spawnFreight, "gmod_subway_trinity_hopper") 
	end

    	return table.Random(spawnFreight)
    end,
    interim = "gmod_subway_freight_hopper", --default

   Metrostroi.Skins.GetTable("Texture","Spawner.Texture",false,"train"),
   {"Autoracks","Autoracks (bilevel enclosed)","Boolean"},
   {"BLAutoracks","Autoracks (bilevel)","Boolean"},
   {"TLAutoracks","Autoracks (trilevel)","Boolean"},
   {"APBoxcars","Auto boxcars (long)","Boolean"},
   {"EXBoxcars","Boxcars (Excess height)","Boolean"},
   {"FMBoxcars","Boxcars (FMC)","Boolean"},
   {"FRBoxcars","Boxcars (FMC Ribbed)","Boolean"},
   {"CNBoxcars","Boxcars (Insulated)","Boolean"},
   {"PCBoxcars","Boxcars (PCF UP)","Boolean"},
   {"Boxcars","Boxcars (Pullman)","Boolean"},
   {"UPBoxcars","Boxcars (Pullman UP)","Boolean"},
   {"DDBoxcars","Boxcars (Ribbed Door)","Boolean"},
   {"CNBulkheads","Bulkhead cars (NSC)","Boolean"},
   {"Bulkheads","Bulkhead cars (Thrall)","Boolean"},
   {"Centerbeams","Ceneterbeam cars","Boolean"},
   {"Coalcars","Coal cars (Thrall)","Boolean"},
   {"CoalGons","Coal cars (Transcona)","Boolean"},
   {"ContainerFlatcars","Container flatcars","Boolean"},
   {"Flatcars","Empty flatcars","Boolean"},
   {"OldFlatcars","Empty flatcars (ACF)","Boolean"},
   {"CPGondolas","Gondolas (NSC)","Boolean"},
   {"Gondolas","Gondolas (Thrall)","Boolean"},
   {"GrainHoppers","Grain hoppers","Boolean"},
   {"Hoppers","Hoppers (ACF 4600)","Boolean"},
   {"PSHoppers","Hoppers (Pullman 4750)","Boolean"},
   {"TRHoppers","Hoppers (Trinity 5154)","Boolean"},
   {"PotashHoppers","Potash hoppers","Boolean"},
   {"Reefers","Reefer cars","Boolean"},
   {"SulfurGons","Sulfur cars (Transcona)","Boolean"},
   {"Tankers","Tanker cars","Boolean"},
   {},
   {"ConnectorType","DPU passthrough electrical system type","List",{"Ezh3 (81-710) Default","E* (81-703)","D (81-702)","81-717/714","81-718 (TISU)","81-720 (Yauza)","81-722 (Yubileyniy)"}},
   {"SpawnMode","Air brake status","List",{"Released","Applied"}, nil,function(ent,val,rot,i,wagnum,rclk)
		if rclk then return end
        ent.Pneumatic.TrainLinePressure = 7.6+math.random()*0.6
        if val==1 then 
		ent.Pneumatic.BrakeLinePressure = 5.2 
		--ent.Pneumatic.BrakeCylinderPressure = 0.0
	end --CARS WILL ROLL DOWN HILL!
	end},

}
