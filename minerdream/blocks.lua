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


-----------------desert ores-----------------
minetest.register_node("minerdream:desertstone_with_richiron", {
	description = "Rich desert iron ore",
	tiles = {"default_desert_stone.png^minerdream_richiron_ore.png"},
	groups = {cracky = 2},
	drop = 'default:iron_lump 2',
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
-- from original version by daviddoesminetest
minetest.register_node("minerdream:desertstone_with_coal", {
	description = "Desert coal ore",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3},
	drop = 'default:coal_lump 1',
	sounds = default.node_sound_stone_defaults(),
})
