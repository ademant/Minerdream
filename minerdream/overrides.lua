local S=minerdream.intllib

minetest.override_item('3d_armor:helmet_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft "..S("diamond").." "..S("helmet\n"))..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7 \n")..core.colorize("#A0A0A0", "type: head gear "),
		groups = {armor_head=1, armor_heal=7, armor_use=150,},
	armor_groups = {fleshy=13},
})

minetest.override_item('3d_armor:chestplate_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft "..S("diamond").." "..S("chestplate\n"))..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 18\n")..core.colorize("#A0A0A0", "heal: 7 \n")..core.colorize("#A0A0A0", "type: torso gear "),
		groups = {armor_torso=1, armor_heal=7, armor_use=150,},
	armor_groups = {fleshy=18},
})

minetest.override_item('3d_armor:leggings_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft "..S("diamond").." "..S("leggings\n"))..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 18\n")..core.colorize("#A0A0A0", "heal: 7 \n")..core.colorize("#A0A0A0", "type: leg gear "),
		groups = {armor_legs=1, armor_heal=7, armor_use=150,},
	armor_groups = {fleshy=18},
})

minetest.override_item('3d_armor:boots_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft "..S("diamond").." "..S("boots\n"))..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7 \n")..core.colorize("#A0A0A0", "type: feet gear "),
		groups = {armor_feet=1, armor_heal=7, armor_use=150,},
	armor_groups = {fleshy=13},
})

minetest.override_item('shields:shield_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft "..S("diamond").." "..S("shield\n"))..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7 \n")..core.colorize("#A0A0A0", "type: hand gear "),
		groups = {armor_shield=1, armor_heal=7, armor_use=150,},
	armor_groups = {fleshy=13},
})


minetest.override_item('3d_armor:helmet_gold', {
		description = "".. core.colorize("#00FFFF", "Golden helmet\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 12\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 2%\n")..core.colorize("#A0A0A0", "gravity + 2%\n")..core.colorize("#A0A0A0", "type: head gear "),
		groups = {armor_head=1, armor_heal=5, armor_use=1500,
			physics_speed=-0.02, physics_gravity=0.02},
	armor_groups = {fleshy=12},
})

minetest.override_item('3d_armor:chestplate_gold', {
		description = "".. core.colorize("#00FFFF", "Golden chestplate\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 17\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 5%\n")..core.colorize("#A0A0A0", "gravity + 5%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		groups = {armor_torso=1, armor_heal=5, armor_use=1500,
			physics_speed=-0.05, physics_gravity=0.05},
	armor_groups = {fleshy=17},
})

minetest.override_item('3d_armor:leggings_gold', {
		description = "".. core.colorize("#00FFFF", "Golden leggings\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 17\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		groups = {armor_legs=1, armor_heal=5, armor_use=1500,
			physics_speed=-0.04, physics_gravity=0.04},
	armor_groups = {fleshy=17},
})

minetest.override_item('3d_armor:boots_gold', {
		description = "".. core.colorize("#00FFFF", "Golden boots\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 12\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 2%\n")..core.colorize("#A0A0A0", "gravity + 2%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		groups = {armor_feet=1, armor_heal=5, armor_use=1500,
			physics_speed=-0.02, physics_gravity=0.02},
	armor_groups = {fleshy=12},
})

minetest.override_item('shields:shield_gold', {
		description = "".. core.colorize("#00FFFF", "Golden shield\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 12\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		groups = {armor_shield=1, armor_heal=5, armor_use=1500,
			physics_speed=-0.04, physics_gravity=0.04},
	armor_groups = {fleshy=12},
})

minetest.override_item('3d_armor:helmet_wood', {
		description = "".. core.colorize("#FFFFFF", "wooden helmet\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: head gear "),
})

minetest.override_item('3d_armor:chestplate_wood', {
		description = "".. core.colorize("#FFFFFF", "wooden chestplate\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "type: torso gear "),
})

minetest.override_item('3d_armor:leggings_wood', {
		description = "".. core.colorize("#FFFFFF", "wooden leggings\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "type: leg gear "),
})

minetest.override_item('3d_armor:boots_wood', {
		description = "".. core.colorize("#FFFFFF", "wooden boots\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: feet gear "),
})

minetest.override_item('shields:shield_wood', {
		description = "".. core.colorize("#FFFFFF", "wooden shield\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: hand gear "),
})

minetest.override_item('3d_armor:helmet_cactus', {
		description = "".. core.colorize("#FFFFFF", "cactus helmet\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: head gear "),
})

minetest.override_item('3d_armor:chestplate_cactus', {
		description = "".. core.colorize("#FFFFFF", "cactus chestplate\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "type: torso gear "),
})

minetest.override_item('3d_armor:leggings_cactus', {
		description = "".. core.colorize("#FFFFFF", "cactus leggings\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "type: leg gear "),
})

minetest.override_item('3d_armor:boots_cactus', {
		description = "".. core.colorize("#FFFFFF", "cactus boots\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: feet gear "),
})

minetest.override_item('shields:shield_cactus', {
		description = "".. core.colorize("#FFFFFF", "cactus shield\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "Defence: 5\n")..core.colorize("#A0A0A0", "type: hand gear "),
})

minetest.override_item('3d_armor:helmet_bronze', {
		description = "".. core.colorize("#BFFFFF", "bronze helmet\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 9\n")..core.colorize("#A0A0A0", "heal: 3 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: head gear "),
		groups = {armor_head=1, armor_heal=3, armor_use=600,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=9},
})

minetest.override_item('3d_armor:chestplate_bronze', {
		description = "".. core.colorize("#BFFFFF", "bronze chestplate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 14\n")..core.colorize("#A0A0A0", "heal: 3 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		groups = {armor_torso=1, armor_heal=3, armor_use=600,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=14},
})

minetest.override_item('3d_armor:leggings_bronze', {
		description = "".. core.colorize("#BFFFFF", "bronze leggings\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 14\n")..core.colorize("#A0A0A0", "heal: 3 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		groups = {armor_legs=1, armor_heal=3, armor_use=600,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=14},
})

minetest.override_item('3d_armor:boots_bronze', {
		description = "".. core.colorize("#BFFFFF", "bronze boots\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 9\n")..core.colorize("#A0A0A0", "heal: 3 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		groups = {armor_feet=1, armor_heal=3, armor_use=600,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=9},
})

minetest.override_item('shields:shield_bronze', {
		description = "".. core.colorize("#BFFFFF", "bronze shield\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 9\n")..core.colorize("#A0A0A0", "heal: 3 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		groups = {armor_shield=1, armor_heal=3, armor_use=600,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=9},
})

minetest.override_item('3d_armor:helmet_steel', {
		description = "".. core.colorize("#BFFFFF", "steel helmet\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: head gear "),
		groups = {armor_head=1, armor_heal=5, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
})

minetest.override_item('3d_armor:chestplate_steel', {
		description = "".. core.colorize("#BFFFFF", "steel chestplate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 15\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		groups = {armor_torso=1, armor_heal=5, armor_use=400,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
})

minetest.override_item('3d_armor:leggings_steel', {
		description = "".. core.colorize("#BFFFFF", "steel leggings\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 15\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		groups = {armor_legs=1, armor_heal=5, armor_use=400,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
})

minetest.override_item('3d_armor:boots_steel', {
		description = "".. core.colorize("#BFFFFF", "steel boots\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		groups = {armor_feet=1, armor_heal=5, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
})

minetest.override_item('shields:shield_steel', {
		description = "".. core.colorize("#BFFFFF", "steel shield\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		groups = {armor_shield=1, armor_heal=5, armor_use=400,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
})


minetest.override_item('default:sword_wood', {
		description = "".. core.colorize("#FFFFFF", "Wooden sword\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 2\n")..core.colorize("#A0A0A0", "range: 3.8 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	range = 3.8,
})

minetest.override_item('default:sword_stone', {
		description = "".. core.colorize("#FFFFFF", "Stone sword\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.2 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 4,
})

minetest.override_item('default:sword_steel', {
		description = "".. core.colorize("#BFFFFF", "Steel sword\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 6.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.35, [2]=1.10, [3]=0.30}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=6.25},
	},
})

minetest.override_item('default:sword_bronze', {
		description = "".. core.colorize("#BFFFFF", "Bronze sword\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 6\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.05,y=1.05,z=1.05},
	range = 4.2,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.override_item('default:sword_mese', {
		description = "".. core.colorize("#00FFFF", "MESE sword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.725 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.725,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.25}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.override_item('default:sword_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond sword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 4.35 \n")..core.colorize("#A0A0A0", "attack interval: 0.7 "),
	wield_scale = {x=1.2,y=1.2,z=1.2},
	range = 4.35,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.8, [2]=0.9, [3]=0.20}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})


minetest.override_item('default:shovel_wood', {
		description = "".. core.colorize("#FFFFFF", "Wooden shovel\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 2\n")..core.colorize("#A0A0A0", "range: 3.8 \n")..core.colorize("#A0A0A0", "attack interval: 1.2 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	range = 3.8,
})

minetest.override_item('default:shovel_stone', {
		description = "".. core.colorize("#FFFFFF", "Stone shovel\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 2.5\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.4 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 4,
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.8, [2]=1.2, [3]=0.5}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2.5},
	},
})

minetest.override_item('default:shovel_bronze', {
		description = "".. core.colorize("#BFFFFF", "Bronze shovel\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 3\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 1.05 "),
	wield_scale = {x=1.05,y=1.05,z=1.05},
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 1.05,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.5, [2]=0.9, [3]=0.4}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.override_item('default:shovel_steel', {
		description = "".. core.colorize("#BFFFFF", "Steel shovel\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 3.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.35, [2]=0.8, [3]=0.35}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=3.25},
	},
})

minetest.override_item('default:shovel_mese', {
		description = "".. core.colorize("#00FFFF", "MESE shovel\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.20, [2]=0.6, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.override_item('default:shovel_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond shovel\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 4.35 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.2,y=1.2,z=1.2},
	range = 4.35,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.10, [2]=0.5, [3]=0.25}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})


minetest.override_item('default:axe_wood', {
		description = "".. core.colorize("#FFFFFF", "Wooden axe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 2\n")..core.colorize("#A0A0A0", "range: 3.8 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	range = 3.8,
})

minetest.override_item('default:axe_stone', {
		description = "".. core.colorize("#FFFFFF", "Stone axe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 3\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.2 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 4,

})

minetest.override_item('default:axe_bronze', {
		description = "".. core.colorize("#BFFFFF", "Bronze axe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=1.05,y=1.05,z=1.05},
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 1.00,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.override_item('default:axe_steel', {
		description = "".. core.colorize("#BFFFFF", "Steel axe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 5.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.35, [2]=1.30, [3]=0.90}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=5.25},
	},
})

minetest.override_item('default:axe_mese', {
		description = "".. core.colorize("#00FFFF", "MESE axe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 6\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.0, [3]=0.60}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.override_item('default:axe_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond axe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.35 \n")..core.colorize("#A0A0A0", "attack interval: 0.85 "),
	wield_scale = {x=1.2,y=1.2,z=1.2},
	range = 4.35,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.45}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})


minetest.override_item('default:pick_wood', {
		description = "".. core.colorize("#FFFFFF", "Wooden pickaxe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 2\n")..core.colorize("#A0A0A0", "range: 3.8 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	range = 3.8,
})

minetest.override_item('default:pick_stone', {
		description = "".. core.colorize("#FFFFFF", "Stone pickaxe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 3\n")..core.colorize("#A0A0A0", "range: 4 \n")..core.colorize("#A0A0A0", "attack interval: 1.2 "),
	wield_scale = {x=1.0,y=1.0,z=1.0},
	range = 4,

})

minetest.override_item('default:pick_bronze', {
		description = "".. core.colorize("#BFFFFF", "Bronze pickaxe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 4.5\n")..core.colorize("#A0A0A0", "range: 4.20 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=1.05,y=1.05,z=1.05},
	range = 4.20,
	tool_capabilities = {
		full_punch_interval = 1.00,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4.5},
	},
})

minetest.override_item('default:pick_steel', {
		description = "".. core.colorize("#BFFFFF", "Steel pickaxe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 4.75\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=3.60, [2]=1.40, [3]=0.70}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=4.75},
	},
})

minetest.override_item('default:pick_mese', {
		description = "".. core.colorize("#00FFFF", "MESE pickaxe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 5.5\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.40, [2]=1.2, [3]=0.60}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5.5},
	},
})

minetest.override_item('default:pick_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond pickaxe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 6.5\n")..core.colorize("#A0A0A0", "range: 4.35 \n")..core.colorize("#A0A0A0", "attack interval: 0.85 "),
	wield_scale = {x=1.2,y=1.2,z=1.2},
	range = 4.35,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.00, [2]=1.00, [3]=0.40}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=6.5},
	},
})

minetest.override_item('default:coal_lump', {
		description = "".. core.colorize("#FFFFFF", "Coal lump\n")..core.colorize("#A0A0A0", "tier: 1 (common)"),
	stack_max= 1000,
})

minetest.override_item('default:flint', {
		description = "".. core.colorize("#FFFFFF", "flint\n")..core.colorize("#A0A0A0", "tier: 1 (common)"),
	stack_max= 1000,
})

minetest.override_item('default:iron_lump', {
		description = "".. core.colorize("#BFFFFF", "Iron lump\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 1000,
})

minetest.override_item('default:tin_lump', {
		description = "".. core.colorize("#BFFFFF", "Tin lump\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 1000,
})

minetest.override_item('default:copper_lump', {
		description = "".. core.colorize("#BFFFFF", "Copper lump\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 1000,
})

minetest.override_item('default:gold_lump', {
		description = "".. core.colorize("#00FFFF", "Gold lump\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	stack_max= 1000,
})

minetest.override_item('default:steel_ingot', {
		description = "".. core.colorize("#BFFFFF", "Steel bar\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 250,
})

minetest.override_item('default:tin_ingot', {
		description = "".. core.colorize("#BFFFFF", "Tin bar\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 250,
})

minetest.override_item('default:copper_ingot', {
		description = "".. core.colorize("#BFFFFF", "Copper bar\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 250,
})

minetest.override_item('default:bronze_ingot', {
		description = "".. core.colorize("#BFFFFF", "Bronze bar\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	stack_max= 250,
})

minetest.override_item('default:gold_ingot', {
		description = "".. core.colorize("#00FFFF", "Gold bar\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	stack_max= 250,
})

minetest.override_item('default:diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	stack_max= 1000,
})

minetest.override_item('default:mese_crystal', {
		description = "".. core.colorize("#00FFFF", "MESE crystal\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	stack_max= 1000,
})

minetest.override_item('default:cobble', {
	stack_max= 30000,
})
minetest.override_item('default:torch', {
	stack_max= 1000,
})

if minetest.get_modpath("hbhunger") then

   hbhunger.register_food("minerdream:vitamin", 1, "", nil, 3)
   hbhunger.register_food("minerdream:potion_tiny", 0, "", nil, 5)
   hbhunger.register_food("minerdream:potion_lesser", 0, "", nil, 10)
   hbhunger.register_food("minerdream:potion_normal", 0, "", nil, 15)
   hbhunger.register_food("minerdream:potion_greater", 0, "", nil, 20)

end

if minetest.get_modpath("hunger") then

	hunger.register_food("minerdream:vitamin", 1, "", nil, 3)
   hunger.register_food("minerdream:potion_tiny", 0, "", nil, 5)
   hunger.register_food("minerdream:potion_lesser", 0, "", nil, 10)
   hunger.register_food("minerdream:potion_normal", 0, "", nil, 15)
   hunger.register_food("minerdream:potion_greater", 0, "", nil, 20)

end



