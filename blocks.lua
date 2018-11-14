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


local function dust_register(element)
minetest.register_node("minerdream:"..element.."_dust", {
	description = element.." dust",
	tiles = {"minerdream_dust.png"},
	inventory_image = {"minerdream_dust.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end
local function block_register(element,crack)
minetest.register_node("minerdream:"..element.."_block", {
	description = element.." block",
	tiles = {"minerdream_"..element.."_block.png"},
	groups = {cracky = crack},
	sounds = default.node_sound_stone_defaults(),
})
end

local function ore_register(element,crack,bdust,bblock,desert)
local stonename = "stone"
local stone_name = "stone"
if desert then
  stonename = "desertstone"
  stone_name = "desert_stone"
end
minetest.register_node("minerdream:"..stonename.."_with_"..element, {
--	description = S(element.." ore"),
	description = element.." ore",
	tiles = {"default_"..stone_name..".png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
if bdust then
  dust_register(element)
end
if bblock then
  block_register(element,crack)
end
end
local function stone_register(element,crack)
minetest.register_node("minerdream:stone_with_"..element, {
--	description = S(element.." ore"),
	description = element.." ore",
	tiles = {"default_stone.png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
end
--[[
ore_register("rhodium",5,true,true)
ore_register("calcium",5,true,true)
ore_register("tantalum",5,true,true)
ore_register("ruthenium",4,true,true)
ore_register("cobalt",4,true,true)
ore_register("platinum",1,true,true)
if not minetest.get_modpath("aluminium") then
  ore_register("aluminium",1,true,true)
end
ore_register("zinc",1,true,true)
--ore_register("lead",2,true,true)
--ore_register("silver",2,true,true)
ore_register("potassium",3,true,true)
ore_register("nickel",2,true,true)
ore_register("coal",3,false,false,true)
ore_register("sulfur",3,true,false,true)
ore_register("lapislazuli",3,false,false,true)
ore_register("saltpeter",3,true,true,true)
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

]]
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

