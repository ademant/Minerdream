-----------slimeblocks----------------

minetest.register_node("minerdream:slimeblock_green", {
	description = "Green block of slime",
	tiles = {"minerdream_slimeblock_green.png"},
	groups = {crumbly = 3,bouncy=75,fall_damage_add_percent=-50},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("minerdream:slimeblock_blue", {
	description = "Blue block of slime",
	tiles = {"minerdream_slimeblock_blue.png"},
	groups = {crumbly = 3,bouncy=80,fall_damage_add_percent=-55},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("minerdream:slimeblock_red", {
	description = "Red block of slime",
	tiles = {"minerdream_slimeblock_red.png"},
	groups = {crumbly = 3,bouncy=85,fall_damage_add_percent=-60},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("minerdream:slimeblock_yellow", {
	description = "Yellow block of slime",
	tiles = {"minerdream_slimeblock_yellow.png"},
	groups = {crumbly = 3,bouncy=90,fall_damage_add_percent=-65},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("minerdream:slimeblock_purple", {
	description = "Purple block of slime",
	tiles = {"minerdream_slimeblock_purple.png"},
	groups = {crumbly = 3,bouncy=95,fall_damage_add_percent=-70},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("minerdream:slimeblock_brown", {
	description = "Brown block of slime",
	tiles = {"minerdream_slimeblock_brown.png"},
	groups = {crumbly = 3,bouncy=100,fall_damage_add_percent=-75},
	sounds = default.node_sound_sand_defaults(),
})

-------------ores--------------

minetest.register_node("minerdream:stone_with_onyx", {
	description = "Onyx ore",
	tiles = {"default_stone.png^minerdream_onyx_ore.png"},
	groups = {cracky = 5},
	drop = 'minerdream:onyx',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_aquamarine", {
	description = "Aquamarine ore",
	tiles = {"minerdream_aquamarine_rock.png"},
	groups = {cracky = 5},
	drawtype = "mesh",
	paramtype = "light",
	sunlight_propagates = true,
	mesh = "gemstone_cubic_pillars.obj",
	drop = 'minerdream:aquamarine',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},
		},
	},
})

minetest.register_node("minerdream:stone_with_topaz", {
	description = "Topaz ore",
	tiles = {"minerdream_topaz_rock.png"},
	groups = {cracky = 5},
	drawtype = "mesh",
	paramtype = "light",
	sunlight_propagates = true,
	mesh = "gemstone_cubic.obj",
	drop = 'minerdream:topaz',
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},
		},
	},
})


minetest.register_node("minerdream:stone_with_calcium", {
	description = "Calcium Ore",
	tiles = {"default_stone.png^minerdream_calcium_ore.png"},
	groups = {cracky = 3, cheapore = 1},
	drop = 'minerdream:calcium_lump',
	sounds = default.node_sound_stone_defaults(),
})

local function ore_register(element,crack,desert)
local stonename = "stone"
local stone_name = "stone"
if desert then
  stonename = "desertstone"
  stone_name = "desert_stone"
end
minetest.register_node("minerdream:"..stonename.."_with_"..element, {
	description = S(element.." ore"),
	tiles = {"default_"..stone_name..".png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
end
local function stone_register(element,crack)
minetest.register_node("minerdream:stone_with_"..element, {
	description = S(element.." ore"),
	tiles = {"default_stone.png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
end

ore_register("rhodium",5)
ore_register("tantalum",5)
ore_register("ruthenium",4)
ore_register("cobalt",4)
ore_register("platinum",1)
if not minetest.get_modpath("aluminium") then
  ore_register("aluminium",1)
end
ore_register("zinc",1)
ore_register("lead",2)
ore_register("silver",2)
ore_register("potassium",3)
ore_register("nickel",2)
ore_register("coal",3,desert=true)
ore_register("sulfur",3,desert=true)
ore_register("lapislazuli",3,desert=true)
ore_register("saltpeter",3,desert=true)

stone_register("spinel",5)
stone_register("garnet",4)
stone_register("bituminous_coal",4)
stone_register("jade",4)
stone_register("amethyst",4)

--[[
minetest.register_node("minerdream:stone_with_bituminous_coal", {
	description = "Bituminous coal ore",
	tiles = {"default_stone.png^minerdream_bituminous_coal_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:bituminous_coal',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_rhodium", {
	description = "Rhodium ore",
	tiles = {"default_stone.png^minerdream_rhodium_ore.png"},
	groups = {cracky = 5},
	drop = 'minerdream:rhodium_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_tantalum", {
	description = "Tantalum ore",
	tiles = {"default_stone.png^minerdream_tantalum_ore.png"},
	groups = {cracky = 5},
	drop = 'minerdream:tantalum_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_spinel", {
	description = "Spinel ore",
	tiles = {"default_stone.png^minerdream_spinel_ore.png"},
	groups = {cracky = 5},
	drop = 'minerdream:spinel',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_garnet", {
	description = "Garnet ore",
	tiles = {"default_stone.png^minerdream_garnet_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:garnet',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_jade", {
	description = "Jade ore",
	tiles = {"default_stone.png^minerdream_jade_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:jade',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_amethyst", {
	description = "amethyst ore",
	tiles = {"default_stone.png^minerdream_amethyst_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:amethyst',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_ruthenium", {
	description = "Ruthenium ore",
	tiles = {"default_stone.png^minerdream_ruthenium_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:ruthenium_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_cobalt", {
	description = "Cobalt ore",
	tiles = {"default_stone.png^minerdream_cobalt_ore.png"},
	groups = {cracky = 4},
	drop = 'minerdream:cobalt_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_platinum", {
	description = "Platinum ore",
	tiles = {"default_stone.png^minerdream_platinum_ore.png"},
	groups = {cracky = 1},
	drop = 'minerdream:platinum_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_aluminum", {
	description = "Aluminum ore",
	tiles = {"default_stone.png^minerdream_aluminum_ore.png"},
	groups = {cracky = 1},
	drop = 'minerdream:aluminum_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_zinc", {
	description = "Zinc Ore",
	tiles = {"default_stone.png^minerdream_zinc_ore.png"},
	groups = {cracky = 1},
	drop = 'minerdream:zinc_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_lead", {
	description = "Lead Ore",
	tiles = {"default_stone.png^minerdream_lead_ore.png"},
	groups = {cracky = 2},
	drop = 'minerdream:lead_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_silver", {
	description = "Silver Ore",
	tiles = {"default_stone.png^minerdream_silver_ore.png"},
	groups = {cracky = 2},
	drop = 'minerdream:silver_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_potassium", {
	description = "Potassium Ore",
	tiles = {"default_stone.png^minerdream_potassium_ore.png"},
	groups = {cracky = 3},
	drop = 'minerdream:potassium_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:stone_with_nickel", {
	description = "Nickel Ore",
	tiles = {"default_stone.png^minerdream_nickel_ore.png"},
	groups = {cracky = 2},
	drop = 'minerdream:nickel_lump',
	sounds = default.node_sound_stone_defaults(),
})
]]
-----------------desert ores-----------------
--[[
minetest.register_node("minerdream:desertstone_with_coal", {
	description = "Desert coal ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'default:coal_lump 1',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:desertstone_with_sulfur", {
	description = "Desert sulfur ore",
	tiles = {"default_desert_stone.png^minerdream_sulfur_ore.png"},
	groups = {cracky = 3},
	drop = 'minerdream:sulfur_lump 1',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:desertstone_with_lapislazuli", {
	description = "Desert lapis lazuli ore",
	tiles = {"default_desert_stone.png^minerdream_lapislazuli_ore.png"},
	groups = {cracky = 3},
	drop = 'minerdream:lapislazuli_lump 1',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:desertstone_with_saltpeter", {
	description = "Desert saltpeter ore",
	tiles = {"default_desert_stone.png^minerdream_saltpeter_ore.png"},
	groups = {cracky = 3},
	drop = 'minerdream:saltpeter_lump 1',
	sounds = default.node_sound_stone_defaults(),
})
]]
minetest.register_node("minerdream:desertstone_with_richiron", {
	description = "Rich desert iron ore",
	tiles = {"default_desert_stone.png^minerdream_richiron_ore.png"},
	groups = {cracky = 2},
	drop = 'default:iron_lump 2',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:desertstone_with_poorgold", {
	description = "Poor desert gold ore",
	tiles = {"default_desert_stone.png^minerdream_poorgold_ore.png"},
	groups = {cracky = 3},
	drop = 'minerdream:gold_nugget 1',
	sounds = default.node_sound_stone_defaults(),
})


--------------marble---------------

minetest.register_node("minerdream:marble_white", {
	description = "White marble",
	tiles = {"minerdream_marble_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_pink", {
	description = "Pink marble",
	tiles = {"minerdream_marble_pink.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_red", {
	description = "Red marble",
	tiles = {"minerdream_marble_red.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_blue", {
	description = "Blue marble",
	tiles = {"minerdream_marble_blue.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_green", {
	description = "Green marble",
	tiles = {"minerdream_marble_green.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_black", {
	description = "Black marble",
	tiles = {"minerdream_marble_black.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_white_polished", {
	description = "Polished white marble",
	tiles = {"minerdream_marble_white_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_pink_polished", {
	description = "Polished pink marble",
	tiles = {"minerdream_marble_pink_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_red_polished", {
	description = "Polished red marble",
	tiles = {"minerdream_marble_red_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_blue_polished", {
	description = "Polished blue marble",
	tiles = {"minerdream_marble_blue_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_green_polished", {
	description = "Polished green marble",
	tiles = {"minerdream_marble_green_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_black_polished", {
	description = "Polished black marble",
	tiles = {"minerdream_marble_black_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_white_brick", {
	description = "White marble bricks",
	tiles = {"minerdream_marble_white_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_pink_brick", {
	description = "Pink marble bricks",
	tiles = {"minerdream_marble_pink_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_red_brick", {
	description = "Red marble bricks",
	tiles = {"minerdream_marble_red_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_blue_brick", {
	description = "Blue marble bricks",
	tiles = {"minerdream_marble_blue_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_green_brick", {
	description = "Green marble bricks",
	tiles = {"minerdream_marble_green_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_black_brick", {
	description = "Black marble bricks",
	tiles = {"minerdream_marble_black_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_white_smallbrick", {
	description = "White marble small-bricks",
	tiles = {"minerdream_marble_white_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_pink_smallbrick", {
	description = "Pink marble small-bricks",
	tiles = {"minerdream_marble_pink_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_red_smallbrick", {
	description = "Red marble small-bricks",
	tiles = {"minerdream_marble_red_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_blue_smallbrick", {
	description = "Blue marble small-bricks",
	tiles = {"minerdream_marble_blue_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_green_smallbrick", {
	description = "Green marble small-bricks",
	tiles = {"minerdream_marble_green_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:marble_black_smallbrick", {
	description = "Black marble small-bricks",
	tiles = {"minerdream_marble_black_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:pillar_marble_white_middle", {
	description = "White marble pillar middle",
	tiles = {"minerdream_marble_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_white_bottom", {
	description = "White marble pillar bottom",
	tiles = {"minerdream_marble_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_white_top", {
	description = "White marble pillar top",
	tiles = {"minerdream_marble_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_white_both", {
	description = "White marble pillar both-sided",
	tiles = {"minerdream_marble_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})

minetest.register_node("minerdream:pillar_marble_pink_middle", {
	description = "Pink marble pillar middle",
	tiles = {"minerdream_marble_pink.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_pink_bottom", {
	description = "Pink marble pillar bottom",
	tiles = {"minerdream_marble_pink.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_pink_top", {
	description = "Pink marble pillar top",
	tiles = {"minerdream_marble_pink.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_pink_both", {
	description = "Pink marble pillar both-sided",
	tiles = {"minerdream_marble_pink.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})

minetest.register_node("minerdream:pillar_marble_red_middle", {
	description = "Red marble pillar middle",
	tiles = {"minerdream_marble_red.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_red_bottom", {
	description = "Red marble pillar bottom",
	tiles = {"minerdream_marble_red.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_red_top", {
	description = "Red marble pillar top",
	tiles = {"minerdream_marble_red.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_red_both", {
	description = "Red marble pillar both-sided",
	tiles = {"minerdream_marble_red.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})

minetest.register_node("minerdream:pillar_marble_blue_middle", {
	description = "Blue marble pillar middle",
	tiles = {"minerdream_marble_blue.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_blue_bottom", {
	description = "Blue marble pillar bottom",
	tiles = {"minerdream_marble_blue.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_blue_top", {
	description = "Blue marble pillar top",
	tiles = {"minerdream_marble_blue.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_blue_both", {
	description = "Blue marble pillar both-sided",
	tiles = {"minerdream_marble_blue.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})

minetest.register_node("minerdream:pillar_marble_green_middle", {
	description = "Green marble pillar middle",
	tiles = {"minerdream_marble_green.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_green_bottom", {
	description = "Green marble pillar bottom",
	tiles = {"minerdream_marble_green.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_green_top", {
	description = "Green marble pillar top",
	tiles = {"minerdream_marble_green.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_green_both", {
	description = "Green marble pillar both-sided",
	tiles = {"minerdream_marble_green.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})

minetest.register_node("minerdream:pillar_marble_black_middle", {
	description = "Black marble pillar middle",
	tiles = {"minerdream_marble_black.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
		}
	}
})

minetest.register_node("minerdream:pillar_marble_black_bottom", {
	description = "Black marble pillar bottom",
	tiles = {"minerdream_marble_black.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox4
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox5
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_black_top", {
	description = "Black marble pillar top",
	tiles = {"minerdream_marble_black.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
		}
	}
})

minetest.register_node("minerdream:pillar_marble_black_both", {
	description = "Black marble pillar both-sided",
	tiles = {"minerdream_marble_black.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.1875, 0.375, 0.5, 0.1875}, -- NodeBox1
			{-0.1875, -0.5, -0.375, 0.1875, 0.5, 0.375}, -- NodeBox2
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375}, -- NodeBox4
			{-0.3125, 0.375, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, 0.375, -0.3125, 0.5, 0.5, 0.3125}, -- NodeBox6
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375}, -- NodeBox9
			{-0.3125, -0.5, -0.5, 0.3125, -0.375, 0.5}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, -0.375, 0.3125}, -- NodeBox11
		}
	}
})
------------lapis-------------
minetest.register_node("minerdream:lapislazuli_block", {
	description = "Lapis lazuli block",
	tiles = {"minerdream_lapislazuli_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_goldblock", {
	description = "Lapis lazuli-gold block #1",
	tiles = {"minerdream_lapislazuli_goldblock.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_goldblock_a", {
	description = "Lapis lazuli-gold block #2",
	tiles = {"minerdream_lapislazuli_goldblock_a.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_goldblock_b", {
	description = "Lapis lazuli-gold block #3",
	tiles = {"minerdream_lapislazuli_goldblock_b.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_goldblock_c", {
	description = "Lapis lazuli-gold block #4",
	tiles = {"minerdream_lapislazuli_goldblock_c.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_goldblock_d", {
	description = "Lapis lazuli-gold block #5",
	tiles = {"minerdream_lapislazuli_goldblock_d.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lapislazuli_brick", {
	description = "Lapis lazuli bricks",
	tiles = {"minerdream_lapislazuli_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("minerdream:lapislazuli_smallbrick", {
	description = "Small lapis lazuli bricks",
	tiles = {"minerdream_lapislazuli_smallbrick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("minerdream:lapislazuligold_brick", {
	description = "lapis lazuli-gold bricks #1",
	tiles = {"minerdream_lapislazuligold_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("minerdream:lapislazuligold_brick_a", {
	description = "lapis lazuli-gold bricks #2",
	tiles = {"minerdream_lapislazuligold_brick_a.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

---------------blox-----------

minetest.register_node("minerdream:onyx_block", {
	description = "Onyx block",
	tiles = {"minerdream_onyx_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:spinel_block", {
	description = "Spinel block",
	tiles = {"minerdream_spinel_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("minerdream:garnet_block", {
	description = "Garnet block",
	tiles = {"minerdream_garnet_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("minerdream:aquamarine_block", {
	description = "Aquamarine block",
	tiles = {"minerdream_aquamarine_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("minerdream:jade_block", {
	description = "Jade block",
	tiles = {"minerdream_jade_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:amethyst_block", {
	description = "Amethyst block",
	tiles = {"minerdream_amethyst_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:topaz_block", {
	description = "Topaz block",
	tiles = {"minerdream_topaz_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:rhodium_block", {
	description = "Rhodium block",
	tiles = {"minerdream_rhodium_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:tantalum_block", {
	description = "Tantalum block",
	tiles = {"minerdream_tantalum_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:ruthenium_block", {
	description = "Ruthenium block",
	tiles = {"minerdream_ruthenium_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:cobalt_block", {
	description = "Cobalt block",
	tiles = {"minerdream_cobalt_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:platinum_block", {
	description = "Platinum block",
	tiles = {"minerdream_platinum_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:aluminum_block", {
	description = "Aluminum block",
	tiles = {"minerdream_aluminum_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:brass_block", {
	description = "Brass block",
	tiles = {"minerdream_brass_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lead_block", {
	description = "Lead block",
	tiles = {"minerdream_lead_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:zinc_block", {
	description = "Zinc block",
	tiles = {"minerdream_zinc_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:calcium_block", {
	description = "Calcium block",
	tiles = {"minerdream_calcium_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:potassium_block", {
	description = "Potassium block",
	tiles = {"minerdream_potassium_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("minerdream:nickel_block", {
	description = "Nickel block",
	tiles = {"minerdream_nickel_block.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:silver_block", {
	description = "Silver block",
	tiles = {"minerdream_silver_block.png"},
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

---------------brix----------

minetest.register_node("minerdream:onyx_brick", {
	description = "Onyx bricks",
	tiles = {"minerdream_onyx_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:spinel_brick", {
	description = "Spinel bricks",
	tiles = {"minerdream_spinel_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:aquamarine_brick", {
	description = "Aquamarine bricks",
	tiles = {"minerdream_aquamarine_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:garnet_brick", {
	description = "Garnet bricks",
	tiles = {"minerdream_garnet_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:jade_brick", {
	description = "Jade bricks",
	tiles = {"minerdream_jade_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:amethyst_brick", {
	description = "Amethyst bricks",
	tiles = {"minerdream_amethyst_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:topaz_brick", {
	description = "Topaz bricks",
	tiles = {"minerdream_topaz_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:rhodium_brick", {
	description = "Rhodium bricks",
	tiles = {"minerdream_rhodium_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:tantalum_brick", {
	description = "Tantalum bricks",
	tiles = {"minerdream_tantalum_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:ruthenium_brick", {
	description = "Ruthenium bricks",
	tiles = {"minerdream_ruthenium_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:cobalt_brick", {
	description = "Cobalt bricks",
	tiles = {"minerdream_cobalt_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:platinum_brick", {
	description = "Platinum bricks",
	tiles = {"minerdream_platinum_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:aluminum_brick", {
	description = "Aluminum bricks",
	tiles = {"minerdream_aluminum_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:brass_brick", {
	description = "Brass bricks",
	tiles = {"minerdream_brass_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:lead_brick", {
	description = "Lead bricks",
	tiles = {"minerdream_lead_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:zinc_brick", {
	description = "Zinc bricks",
	tiles = {"minerdream_zinc_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:copper_brick", {
	description = "Copper bricks",
	tiles = {"minerdream_copper_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:tin_brick", {
	description = "Tin bricks",
	tiles = {"minerdream_tin_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:iron_brick", {
	description = "Iron bricks",
	tiles = {"minerdream_iron_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:gold_brick", {
	description = "Golden bricks",
	tiles = {"minerdream_gold_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:potassium_brick", {
	description = "Potassium bricks",
	tiles = {"minerdream_potassium_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:calcium_brick", {
	description = "Calcium bricks",
	tiles = {"minerdream_calcium_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:nickel_brick", {
	description = "Nickel bricks",
	tiles = {"minerdream_nickel_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("minerdream:silver_brick", {
	description = "Silver bricks",
	tiles = {"minerdream_silver_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
-------------gemstones---------------

minetest.register_node("minerdream:onyx", {
		description = "".. core.colorize("#00FF00", "Onyx gemstone\n")..core.colorize("#A0A0A0", "tier: 6 (eepic)"),
	drawtype = "mesh",
	mesh = "jade.obj",
	walkable = "true",
	inventory_image = "minerdream_onyx_gem.png",
	tiles = {"minerdream_onyx.png"},
	paramtype = "light",
	is_ground_content = true,
	stack_max= 200,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:spinel", {
		description = "".. core.colorize("#00FF00", "Spinel gemstone\n")..core.colorize("#A0A0A0", "tier: 6 (epic)"),
	drawtype = "mesh",
	mesh = "topaz.obj",
	walkable = "true",
	inventory_image = "minerdream_spinel_gem.png",
	tiles = {"minerdream_spinel.png"},
	paramtype = "light",
	stack_max= 200,
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:topaz", {
		description = "".. core.colorize("#00FF00", "Topaz gemstone\n")..core.colorize("#A0A0A0", "tier: 6 (epic)"),
	drawtype = "mesh",
	mesh = "topaz.obj",
	walkable = "true",
	inventory_image = "minerdream_topaz_gem.png",
	tiles = {"minerdream_topaz.png"},
	paramtype = "light",
	stack_max= 200,
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:aquamarine", {
		description = "".. core.colorize("#00FF00", "Aquamarine gemstone\n")..core.colorize("#A0A0A0", "tier: 6 (epic)"),
	drawtype = "mesh",
	mesh = "aquamarine.obj",
	walkable = "true",
	inventory_image = "minerdream_aquamarine_gem.png",
	tiles = {"minerdream_aquamarine.png"},
	paramtype = "light",
	is_ground_content = true,
	stack_max= 200,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:jade", {
		description = "".. core.colorize("#0040FF", "Jade gemstone\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)"),
	drawtype = "mesh",
	mesh = "jade.obj",
	walkable = "true",
	inventory_image = "minerdream_jade_gem.png",
	tiles = {"minerdream_jade.png"},
	paramtype = "light",
	is_ground_content = true,
	stack_max= 200,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:amethyst", {
		description = "".. core.colorize("#0040FF", "Amethyst gemstone\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)"),
	drawtype = "mesh",
	mesh = "amethyst.obj",
	walkable = "true",
	inventory_image = "minerdream_amethyst_gem.png",
	tiles = {"minerdream_amethyst.png"},
	paramtype = "light",
	is_ground_content = true,
	stack_max= 200,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

minetest.register_node("minerdream:garnet", {
		description = "".. core.colorize("#0040FF", "Garnet gemstone\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)"),
	drawtype = "mesh",
	mesh = "garnet.obj",
	walkable = "true",
	inventory_image = "minerdream_garnet_gem.png",
	tiles = {"minerdream_garnet.png"},
	paramtype = "light",
	is_ground_content = true,
	stack_max= 200,
	groups = {snappy=3,dig_immediate=3},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},
		},
	},
})

-------------bars---------------------

minetest.register_node("minerdream:rhodium_bar_block", {
	description = "Rhodium bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_rhodium_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:tantalum_bar_block", {
	description = "Tantalum bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_tantalum_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:ruthenium_bar_block", {
	description = "Ruthenium bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_ruthenium_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:cobalt_bar_block", {
	description = "Cobalt bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_cobalt_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:platinum_bar_block", {
	description = "Platinum bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_platinum_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:aluminum_bar_block", {
	description = "Aluminum bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_aluminum_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:brass_bar_block", {
	description = "Brass bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_brass_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:zinc_bar_block", {
	description = "Zinc bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_zinc_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:lead_bar_block", {
	description = "Lead bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_lead_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:gold_bar_block", {
	description = "Gold bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_gold_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:copper_bar_block", {
	description = "Copper bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_copper_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:tin_bar_block", {
	description = "Tin bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_tin_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:steel_bar_block", {
	description = "Steel bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_steel_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:bronze_bar_block", {
	description = "Bronze bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_bronze_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:potassium_bar_block", {
	description = "Potassium bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_potassium_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:calcium_bar_block", {
	description = "calcium bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_calcium_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:nickel_bar_block", {
	description = "nickel bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_nickel_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})

minetest.register_node("minerdream:silver_bar_block", {
	description = "silver bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_silver_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})
