----rocks n stuff--------

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_white",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -50,
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

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_pink",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -125,
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

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_red",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -200,
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

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_green",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -300,
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

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_blue",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -425,
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

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "minerdream:marble_black",
		wherein         = {"default:stone"},
		clust_scarcity  = 25 * 25 * 25,
		clust_size      = 5,
		y_min           = -5000,
		y_max           = -600,
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

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_calcium",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_potassium",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 7,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 420,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_nickel",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 7,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -40,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_zinc",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 7,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -50,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_silver",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_lead",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 7,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -70,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_aluminum",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -250,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_platinum",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -300,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_cobalt",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -500,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_ruthenium",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -500,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_amethyst",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -650,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_jade",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -650,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_garnet",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -650,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_bituminous_coal",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 10,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -500,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_topaz",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -1700,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_spinel",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -1700,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_aquamarine",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -1700,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_onyx",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -1700,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_tantalum",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 3,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -1500,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "minerdream:stone_with_rhodium",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 3,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -1500,
	})

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


