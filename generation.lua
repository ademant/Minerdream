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


