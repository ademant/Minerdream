----rocks n stuff--------
local function mg_reg_ore(iore,ymin,ymax,clust)
	minetest.register_ore({
		ore_type        = "blob",
		ore             = iore,
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = clust,
		y_min           = ymin,
		y_max           = ymax,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})
end

mg_reg_ore("minerdream:marble_white",-5000,-50,5)
mg_reg_ore("minerdream:marble_pink",-5000,-125,5)
mg_reg_ore("minerdream:marble_red",-5000,-200,5)
mg_reg_ore("minerdream:marble_red",-5000,-300,5)
mg_reg_ore("minerdream:marble_blue",-5000,-425,5)
mg_reg_ore("minerdream:marble_black",-5000,-600,5)

---treasure---

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure1",
		wherein        = "default:desert_stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -200,
		y_max          = 50,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure1",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -200,
		y_max          = 50,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure2",
		wherein        = "default:desert_stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -400,
		y_max          = -100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure2",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -400,
		y_max          = -100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure3",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -750,
		y_max          = -250,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure4",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -2000,
		y_max          = -500,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:treasure5",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -2500,
		y_max          = -1500,
	})


---ores---
local function mg_reg_ore_scat(iore,numores,clust,ymin,ymax,scarcity)
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = iore,
		wherein        = "default:stone",
		clust_scarcity = scarcity,
		clust_num_ores = numores,
		clust_size     = clust,
		y_min          = ymin,
		y_max          = ymax,
	})
end

mg_reg_ore_scat("minerdream:stone_with_calcium",5,2,-31000,420,12 * 12 * 12)
mg_reg_ore_scat("minerdream:stone_with_potassium",7,3,-31000,420,13 * 13 * 13)
mg_reg_ore_scat("minerdream:stone_with_nickel",7,3,-31000,-40,13 * 13 * 13)
mg_reg_ore_scat("minerdream:stone_with_zinc",7,3,-31000,-50,14 * 14 * 14)
mg_reg_ore_scat("minerdream:stone_with_silver",3,2,-31000,-64,14 * 14 * 14)
mg_reg_ore_scat("minerdream:stone_with_lead",7,3,-31000,-70,13 * 13 * 13)
if not minetest.get_modpath("aluminium") then
  mg_reg_ore_scat("minerdream:stone_with_aluminium",4,3,-31000,-250,14 * 14 * 14)
end
mg_reg_ore_scat("minerdream:stone_with_platinum",4,3,-31000,-300,14 * 14 * 14)
mg_reg_ore_scat("minerdream:stone_with_cobalt",3,3,-31000,-500,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_ruthenium",3,3,-31000,-500,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_amethyst",1,1,-31000,-650,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_jade",1,1,-31000,-650,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_garnet",1,1,-31000,-650,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_bituminous_coal",10,3,-31000,-500,13 * 13 * 13)
mg_reg_ore_scat("minerdream:stone_with_topaz",1,1,-31000,-1700,15 * 15 * 15)
mg_reg_ore_scat("minerdream:stone_with_spinel",1,1,-31000,-1700,16 * 16 * 16)
mg_reg_ore_scat("minerdream:stone_with_aquamarine",1,1,-31000,-1700,16 * 16 * 16)
mg_reg_ore_scat("minerdream:stone_with_onyx",1,1,-31000,-1700,16 * 16 * 16)
mg_reg_ore_scat("minerdream:stone_with_tantalum",3,3,-31000,-1500,16 * 16 * 16)
mg_reg_ore_scat("minerdream:stone_with_rhodium",3,3,-31000,-1500,16 * 16 * 16)
-------desert ores--------

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_richiron",
		wherein        = "default:desert_stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_lapislazuli",
		wherein        = "default:desert_stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_coal",
		wherein        = "default:desert_stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_sulfur",
		wherein        = "default:desert_stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_saltpeter",
		wherein        = "default:desert_stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:desertstone_with_poorgold",
		wherein        = "default:desert_stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = 420,
	})


