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



if minetest.get_modpath("moreores") then
minetest.override_item("moreores:mineral_silver", {
	description = "Silver ore",
	tiles = {"default_stone.png^minerdream_silver_ore.png"},
	groups = {cracky = 3},
	drop = 'moreores:mineral_silver_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.override_item("moreores:silver_lump", {
	description = "Silver lump",
	inventory_image = {"default_stone.png^minerdream_silver_lump.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end
if minetest.get_modpath("technic") then
minetest.override_item("technic:mineral_lead", {
	description = "Lead ore",
	tiles = {"default_stone.png^minerdream_lead_ore.png"},
	groups = {cracky = 2},
	drop = 'moreores:mineral_lead_lump',
	sounds = default.node_sound_stone_defaults(),
})
minetest.override_item("technic:lead_lump", {
	description = "Lead lump",
	inventory_image = {"default_stone.png^minerdream_lead_lump.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end

stone_register("spinel",5)
stone_register("garnet",4)
stone_register("bituminous_coal",4)
stone_register("jade",4)
stone_register("amethyst",4)

-----------------desert ores-----------------
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
local function register_marble_intern(color,crack)
minetest.register_node("minerdream:marble_"..color, {
	description = color.." marble",
	tiles = {"minerdream_marble_"..color..".png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end
local function register_marble(color,crack)
  register_marble_intern(color,3)
  register_marble_intern(color.."_polished",3)
  register_marble_intern(color.."_brick",3)
  register_marble_intern(color.."_smallbrick",3)
  minetest.register_node("minerdream:pillar_marble_"..color.."_middle", {
	description = color.." marble pillar middle",
	tiles = {"minerdream_marble_"..color..".png"},
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
  minetest.register_node("minerdream:pillar_marble_"..color.."_middle", {
	description = color.." marble pillar middle",
	tiles = {"minerdream_marble_"..color..".png"},
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
  minetest.register_node("minerdream:pillar_marble_"..color.."_bottom", {
	description = color.." marble pillar bottom",
	tiles = {"minerdream_marble_"..color..".png"},
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
  minetest.register_node("minerdream:pillar_marble_"..color.."_top", {
	description = color.." marble pillar top",
	tiles = {"minerdream_marble_"..color..".png"},
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
  minetest.register_node("minerdream:pillar_marble_"..color.."_both", {
	description = color.." marble pillar both-sided",
	tiles = {"minerdream_marble_"..color..".png"},
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
end
register_marble("white",3)
register_marble("pink",3)
register_marble("red",3)
register_marble("blue",3)
register_marble("green",3)
register_marble("black",3)

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

minetest.register_node("minerdream:brass_block", {
	description = "Brass block",
	tiles = {"minerdream_brass_block.png"},
	groups = {cracky = 3},
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

if not minetest.get_modpath("aluminium") then
minetest.register_node("minerdream:aluminum_brick", {
	description = "Aluminum bricks",
	tiles = {"minerdream_aluminum_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end

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

if not minetest.get_modpath("aluminium") then
minetest.register_node("minerdream:aluminum_bar_block", {
	description = "Aluminum bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_aluminum_bar_block.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=3,dig_immediate=3},
})
end

minetest.register_node("minerdream:brass_bar_block", {
	description = "Brass bar stack",
	drawtype = "mesh",
	mesh = "bars.obj",
	tiles = {"minerdream_brass_bar_block.png"},
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

