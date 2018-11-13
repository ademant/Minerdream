----------green slime----------------

mobs:register_mob("minerdream:slime_green", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 1,
	hp_min = 5,
	hp_max = 5,
	armor = 100,
	collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_green"},
	},
	blood_texture = "minerdream_slimeball_green.png",
	makes_footstep_sound = true,
	walk_velocity = 2,
	run_velocity = 2,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 6,
	stepheight = 1.1,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_green", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_green_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 200, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})

--[[
mobs:spawn({
	name = "minerdream:slime_green",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 1000,
	max_height = 0,
})
]]

minetest.register_craftitem("minerdream:slime_green_egg", {
	description = "Green slime spawnegg",
	inventory_image = "minerdream_egg_greenslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_green")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_green", {
	tiles = {
		"minerdream_slime_top.png",
		"minerdream_slime_top.png",
		"minerdream_slime_side.png",
		"minerdream_slime_side.png",
		"minerdream_slime_side.png",
		"minerdream_slime_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=0.4,y=0.4,z=0.4},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

----------blue slime----------------

mobs:register_mob("minerdream:slime_blue", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 2,
	hp_min = 8,
	hp_max = 8,
	armor = 100,
	collisionbox = {-0.45, -0.45, -0.45, 0.45, 0.45, 0.45},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_blue"},
	},
	blood_texture = "minerdream_slimeball_blue.png",
	makes_footstep_sound = true,
	walk_velocity = 2,
	run_velocity = 2,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 6,
	stepheight = 1.1,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_blue", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_blue_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 175, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})


mobs:spawn({
	name = "minerdream:slime_blue",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 1250,
	max_height = -50,
})


minetest.register_craftitem("minerdream:slime_blue_egg", {
	description = "blue slime spawnegg",
	inventory_image = "minerdream_egg_blueslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_blue")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_blue", {
	tiles = {
		"minerdream_slime_blue_top.png",
		"minerdream_slime_blue_top.png",
		"minerdream_slime_blue_side.png",
		"minerdream_slime_blue_side.png",
		"minerdream_slime_blue_side.png",
		"minerdream_slime_blue_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=0.6,y=0.6,z=0.6},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

----------red slime----------------

mobs:register_mob("minerdream:slime_red", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 3,
	hp_min = 12,
	hp_max = 12,
	armor = 100,
	collisionbox = {-0.6, -0.6, -0.6, 0.6, 0.6, 0.6},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_red"},
	},
	blood_texture = "minerdream_slimeball_red.png",
	makes_footstep_sound = true,
	walk_velocity = 3,
	run_velocity = 3,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 7,
	stepheight = 1.1,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_red", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_red_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 150, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})


mobs:spawn({
	name = "minerdream:slime_red",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 1500,
	max_height = -100,
})


minetest.register_craftitem("minerdream:slime_red_egg", {
	description = "red slime spawnegg",
	inventory_image = "minerdream_egg_redslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_red")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_red", {
	tiles = {
		"minerdream_slime_red_top.png",
		"minerdream_slime_red_top.png",
		"minerdream_slime_red_side.png",
		"minerdream_slime_red_side.png",
		"minerdream_slime_red_side.png",
		"minerdream_slime_red_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=0.8,y=0.8,z=0.8},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

----------yellow slime----------------

mobs:register_mob("minerdream:slime_yellow", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 2,
	damage = 4,
	hp_min = 20,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.75, -0.75, -0.75, 0.75, 0.75, 0.75},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_yellow"},
	},
	blood_texture = "minerdream_slimeball_yellow.png",
	makes_footstep_sound = true,
	walk_velocity = 3,
	run_velocity = 3,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 7,
	stepheight = 1.1,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_yellow", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_yellow_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 125, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})


mobs:spawn({
	name = "minerdream:slime_yellow",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 1750,
	max_height = -250,
})


minetest.register_craftitem("minerdream:slime_yellow_egg", {
	description = "yellow slime spawnegg",
	inventory_image = "minerdream_egg_yellowslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_yellow")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_yellow", {
	tiles = {
		"minerdream_slime_yellow_top.png",
		"minerdream_slime_yellow_top.png",
		"minerdream_slime_yellow_side.png",
		"minerdream_slime_yellow_side.png",
		"minerdream_slime_yellow_side.png",
		"minerdream_slime_yellow_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

----------purple slime----------------

mobs:register_mob("minerdream:slime_purple", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 3,
	damage = 6,
	hp_min = 35,
	hp_max = 35,
	armor = 100,
	collisionbox = {-0.9, -0.9, -0.9, 0.9, 0.9, 0.9},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_purple"},
	},
	blood_texture = "minerdream_slimeball_purple.png",
	makes_footstep_sound = true,
	walk_velocity = 4,
	run_velocity = 4,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 8,
	stepheight = 1.1,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_purple", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_purple_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 100, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})


mobs:spawn({
	name = "minerdream:slime_purple",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 2000,
	max_height = -500,
})


minetest.register_craftitem("minerdream:slime_purple_egg", {
	description = "purple slime spawnegg",
	inventory_image = "minerdream_egg_purpleslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_purple")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_purple", {
	tiles = {
		"minerdream_slime_purple_top.png",
		"minerdream_slime_purple_top.png",
		"minerdream_slime_purple_side.png",
		"minerdream_slime_purple_side.png",
		"minerdream_slime_purple_side.png",
		"minerdream_slime_purple_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=1.2,y=1.2,z=1.2},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

----------brown slime----------------

mobs:register_mob("minerdream:slime_brown", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	reach = 3.5,
	damage = 8,
	hp_min = 50,
	hp_max = 50,
	armor = 100,
	collisionbox = {-1.05, -1.05, -1.05, 1.05, 1.05, 1.05},
	visual = "wielditem",
	textures = {
		{"minerdream:slime_brown"},
	},
	blood_texture = "minerdream_slimeball_brown.png",
	makes_footstep_sound = true,
	walk_velocity = 4,
	run_velocity = 4,
	walk_chance = 0,
	fall_speed = -50,
	jump_chance = 30,
	jump_height = 9,
	stepheight = 1.2,
	floats = 0,
	view_range = 16,
	drops = {
		{name = "minerdream:slimeball_brown", chance = 1, min = 1, max = 3},
		{name = "minerdream:slime_brown_egg", chance = 100, min = 1, max = 1},
		{name = "minerdream:accessory_slimering", chance = 75, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 8,
	light_damage = 0,
	animation = {
		speed_normal = 16,
		speed_run = 16,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})


mobs:spawn({
	name = "minerdream:slime_brown",
	nodes = {"default:stone"},
	max_light = 10,
	chance = 2000,
	max_height = -1200,
})


minetest.register_craftitem("minerdream:slime_brown_egg", {
	description = "brown slime spawnegg",
	inventory_image = "minerdream_egg_brownslime.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "minerdream:slime_brown")
			itemstack:take_item()
		end
		return itemstack
	end,
})


minetest.register_node("minerdream:slime_brown", {
	tiles = {
		"minerdream_slime_brown_top.png",
		"minerdream_slime_brown_top.png",
		"minerdream_slime_brown_side.png",
		"minerdream_slime_brown_side.png",
		"minerdream_slime_brown_side.png",
		"minerdream_slime_brown_side.png"
	},
	drawtype = "nodebox",
	wield_scale = {x=1.4,y=1.4,z=1.4},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
			{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
			{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
			{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
			{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
			{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
			{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
			{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
		}
	}
})

