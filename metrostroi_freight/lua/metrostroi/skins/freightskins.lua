Metrostroi.AddSkin("train","Def_702Random",{
    name = "Random",
    typ = "freightcar",
    func = function(ent)
        local tbl = {}
        for k,v in pairs(Metrostroi.Skins.train) do
            if not v.norandom and v.typ == "freightcar" and not v.norandom then
                table.insert(tbl,k)
            end
        end
        return table.Random(tbl)
    end,
    def=true,
    norandom = true,
})
Metrostroi.AddSkin("train","Def_ContainerWaste",{
    name = "Garbage (Default)",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/uswx_20240",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/uswx_20386",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/uswx_20407",

	--HOPPERS
	["bn_446305"] = "models/gsgtrainprops/rolling_stock/acf_4600/bn_446305",
	["furx_849915"] = "models/gsgtrainprops/rolling_stock/acf_4600/furx_849915",
	["appn_462209"] = "models/gsgtrainprops/rolling_stock/acf_4600/appn_462209",
	["appn_462212"] = "models/gsgtrainprops/rolling_stock/acf_4600/appn_462212",
	["appn_462214"] = "models/gsgtrainprops/rolling_stock/acf_4600/appn_462214",
	["mecr_669007"] = "models/gsgtrainprops/rolling_stock/acf_4600/mecr_669007",
	["mecx_669005"] = "models/gsgtrainprops/rolling_stock/acf_4600/mecx_669005",
	["rvrr_495127"] = "models/gsgtrainprops/rolling_stock/acf_4600/rvrr_495127",
	["rvrr_495242"] = "models/gsgtrainprops/rolling_stock/acf_4600/rvrr_495242",
	["rvrr_495692"] = "models/gsgtrainprops/rolling_stock/acf_4600/rvrr_495692",
	["shcx_113290"] = "models/gsgtrainprops/rolling_stock/acf_4600/shcx_113290",
	["shcx_113291"] = "models/gsgtrainprops/rolling_stock/acf_4600/shcx_113291",
	["awgx_14730"] = "models/gsgtrainprops/rolling_stock/acf_4600/awgx_14730",
	["pgr_431020"] = "models/gsgtrainprops/rolling_stock/acf_4600/pgr_431020",
	["furx_849916"] = "models/gsgtrainprops/rolling_stock/acf_4600/furx_849916",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_ContainerUASC",{
    name = "Evergreen/UASC",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_evergreen2",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_uasc",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_evergreen",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_ContainerZIM",{
    name = "ZIM / CAI",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_zim2",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_zim",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_cai",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_ContainerTriton",{
    name = "TEX / Triton mix",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_tex",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_mix",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_triton",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_ContainerMaersk",{
    name = "Hapag-Lloyd/Maersk",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_maersk",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_hl2",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_hl",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_ContainerNileDutch",{
    name = "NileDutch/Seaco",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_nd2",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_nd",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_seaco",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})
Metrostroi.AddSkin("train","Def_FreightCar",{
    name = "All other skins",
    typ = "freightcar",
    textures = {
        ["uswx_20240"] = "models/gsgtrainprops/rolling_stock/trashflat/container_msc",
	["uswx_20386"] = "models/gsgtrainprops/rolling_stock/trashflat/container_white",
	["uswx_20407"] = "models/gsgtrainprops/rolling_stock/trashflat/container_red",
 
	--HOPPERS
	["bn_446305"] = "models/gsgtrainprops/rolling_stock/acf_4600/kcs_288720",
	["furx_849915"] = "models/gsgtrainprops/rolling_stock/acf_4600/cbfx_321255",
	["appn_462209"] = "models/gsgtrainprops/rolling_stock/acf_4600/mocx_412133",
	["appn_462212"] = "models/gsgtrainprops/rolling_stock/acf_4600/mocx_412174",
	["appn_462214"] = "models/gsgtrainprops/rolling_stock/acf_4600/mocx_416281",
	["mecr_669007"] = "models/gsgtrainprops/rolling_stock/acf_4600/cp_651340",
	["mecx_669005"] = "models/gsgtrainprops/rolling_stock/acf_4600/soo_119236",
	["rvrr_495127"] = "models/gsgtrainprops/rolling_stock/acf_4600/dme_51192",
	["rvrr_495242"] = "models/gsgtrainprops/rolling_stock/acf_4600/dme_51682",
	["rvrr_495692"] = "models/gsgtrainprops/rolling_stock/acf_4600/dme_52095",
	["shcx_113290"] = "models/gsgtrainprops/rolling_stock/acf_4600/aokx_494549",
	["shcx_113291"] = "models/gsgtrainprops/rolling_stock/acf_4600/ptex_21472",
	["awgx_14730"] = "models/gsgtrainprops/rolling_stock/acf_4600/mulx_201047",
	["pgr_431020"] = "models/gsgtrainprops/rolling_stock/acf_4600/cabx_80031",
	["furx_849916"] = "models/gsgtrainprops/rolling_stock/acf_4600/cefx_70466",

	--GONDOLA
	["bnsf_513060"] = "models/gsgtrainprops/rolling_stock/gon_52ft/wcrc_30063",
	["gonx_310323"] = "models/gsgtrainprops/rolling_stock/gon_52ft/hzgx_3924",
	["cnw_350382"] = "models/gsgtrainprops/rolling_stock/gon_52ft/drnm_10503",
	["csxt_475275"] = "models/gsgtrainprops/rolling_stock/gon_52ft/eatx_65047",
	["smw_315780"] = "models/gsgtrainprops/rolling_stock/gon_52ft/ssmx_6732",
    },
    random = true,
    norandom = false,
    rnd = 1,
    postfunc = function(ent)
        local bright = math.Rand(1,1.1)
        ent:SetNW2Vector("BodyColor",Vector(bright,bright,bright-(0.05-0.2*math.random())*bright))
    end,
    def=false,
})