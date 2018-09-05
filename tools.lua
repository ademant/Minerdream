minetest.register_tool('minerdream:pick_rhodium', {
		description = "".. core.colorize("#00FF00", "rhodium pickaxe\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.55,y=1.55,z=1.2},
	inventory_image = "minerdream_pick_rhodium.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[6]=6.00, [5]=4.00, [4]=3.00, [1]=1.25, [2]=0.5, [3]=0.20}, uses=105, maxlevel=3},
			crumbly={times={[1]=0.6, [2]=0.25, [3]=0.10}, uses=105, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool('minerdream:axe_rhodium', {
		description = "".. core.colorize("#00FF00", "rhodium axe\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.55,y=1.55,z=1.2 },
	inventory_image = "minerdream_axe_rhodium.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.4, [3]=0.25}, uses=105, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool('minerdream:sword_rhodium', {
		description = "".. core.colorize("#00FF00", "rhodium sword\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 14\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.55,y=1.55,z=1.2},
	inventory_image = "minerdream_sword_rhodium.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.60,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.25, [2]=0.55, [3]=0.05}, uses=105, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})



minetest.register_tool('minerdream:pick_tantalum', {
		description = "".. core.colorize("#00FF00", "tantalum pickaxe\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.55,y=1.55,z=1.2},
	inventory_image = "minerdream_pick_tantalum.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[6]=6.00, [5]=4.00, [4]=3.00, [1]=1.25, [2]=0.5, [3]=0.20}, uses=105, maxlevel=3},
			crumbly={times={[1]=0.6, [2]=0.25, [3]=0.10}, uses=110, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool('minerdream:axe_tantalum', {
		description = "".. core.colorize("#00FF00", "tantalum axe\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.55,y=1.55,z=1.2 },
	inventory_image = "minerdream_axe_tantalum.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.4, [3]=0.25}, uses=110, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool('minerdream:sword_tantalum', {
		description = "".. core.colorize("#00FF00", "tantalum sword\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 14\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.55,y=1.55,z=1.2},
	inventory_image = "minerdream_sword_tantalum.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.60,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.25, [2]=0.55, [3]=0.05}, uses=110, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})



minetest.register_tool('minerdream:pick_ruthenium', {
		description = "".. core.colorize("#0040FF", "ruthenium pickaxe\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_pick_ruthenium.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[5]=5.00, [4]=3.50, [1]=1.5, [2]=0.7, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:axe_ruthenium', {
		description = "".. core.colorize("#0040FF", "ruthenium axe\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 11\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.4,y=1.4,z=1.4 },
	inventory_image = "minerdream_axe_ruthenium.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.50, [2]=0.5, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool('minerdream:sword_ruthenium', {
		description = "".. core.colorize("#0040FF", "ruthenium sword\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 11\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_sword_ruthenium.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.65,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.7, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool('minerdream:shovel_ruthenium', {
		description = "".. core.colorize("#0040FF", "ruthenium shovel\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.85 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_shovel_ruthenium.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.8, [2]=0.3, [3]=0.15}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})



minetest.register_tool('minerdream:pick_cobalt', {
		description = "".. core.colorize("#0040FF", "Cobalt pickaxe\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.7 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_pick_cobalt.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			cracky={times={[5]=5.00, [4]=3.50, [1]=1.5, [2]=0.7, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:axe_cobalt', {
		description = "".. core.colorize("#0040FF", "Cobalt axe\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.7 "),
	wield_scale = {x=1.4,y=1.4,z=1.4 },
	inventory_image = "minerdream_axe_cobalt.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.70,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.50, [2]=0.5, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:sword_cobalt', {
		description = "".. core.colorize("#0040FF", "Cobalt sword\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.55 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_sword_cobalt.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.55,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.7, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:shovel_cobalt', {
		description = "".. core.colorize("#0040FF", "Cobalt shovel\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 4.65 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.4,y=1.4,z=1.4},
	inventory_image = "minerdream_shovel_cobalt.png",
	range = 4.65,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.8, [2]=0.3, [3]=0.15}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})


minetest.register_tool('minerdream:pick_platinum', {
		description = "".. core.colorize("#40FF80", "platinum pickaxe\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_pick_platinum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[4]=3.80, [1]=1.7, [2]=0.8, [3]=0.3}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool('minerdream:axe_platinum', {
		description = "".. core.colorize("#40FF80", "platinum axe\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.8 "),
	wield_scale = {x=1.30,y=1.30,z=1.30 },
	inventory_image = "minerdream_axe_platinum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.70, [2]=0.65, [3]=0.35}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool('minerdream:sword_platinum', {
		description = "".. core.colorize("#40FF80", "platinum sword\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_sword_platinum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.65,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.7, [3]=0.10}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:shovel_platinum', {
		description = "".. core.colorize("#40FF80", "platinum shovel\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.85 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_shovel_platinum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.85,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.8, [2]=0.3, [3]=0.15}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})


minetest.register_tool('minerdream:pick_aluminum', {
		description = "".. core.colorize("#40FF80", "aluminum pickaxe\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_pick_aluminum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.65,
		max_drop_level=1,
		groupcaps={
			cracky={times={[4]=4.00, [1]=1.85, [2]=0.9, [3]=0.35}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool('minerdream:axe_aluminum', {
		description = "".. core.colorize("#40FF80", "aluminum axe\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.65 "),
	wield_scale = {x=1.30,y=1.30,z=1.30 },
	inventory_image = "minerdream_axe_aluminum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.65,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.85, [2]=0.70, [3]=0.40}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool('minerdream:sword_aluminum', {
		description = "".. core.colorize("#40FF80", "aluminum sword\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_sword_aluminum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.65, [2]=0.8, [3]=0.15}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool('minerdream:shovel_aluminum', {
		description = "".. core.colorize("#40FF80", "aluminum shovel\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 4.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.7 "),
	wield_scale = {x=1.3,y=1.3,z=1.3},
	inventory_image = "minerdream_shovel_aluminum.png",
	range = 4.5,
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.95, [2]=0.4, [3]=0.20}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool('minerdream:pick_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel pickaxe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 4.75\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "minerdream_pick_stainlesssteel.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=3.60, [2]=1.40, [3]=0.70}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=4.75},
	},
})

minetest.register_tool('minerdream:axe_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel axe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 5.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "minerdream_axe_stainlesssteel.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.35, [2]=1.30, [3]=0.90}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=5.25},
	},
})

minetest.register_tool('minerdream:sword_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel sword\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 6.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "minerdream_sword_stainlesssteel.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.75,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.35, [2]=1.10, [3]=0.30}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=6.25},
	},
})

minetest.register_tool('minerdream:shovel_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel shovel\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 3.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.0 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	inventory_image = "minerdream_shovel_stainlesssteel.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.35, [2]=0.8, [3]=0.35}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=3.25},
	},
})

minetest.register_tool('minerdream:pick_lead', {
		description = "".. core.colorize("#00FFFF", "lead pickaxe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.6 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_pick_lead.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.60,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.40, [2]=1.2, [3]=0.60}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:axe_lead', {
		description = "".. core.colorize("#00FFFF", "lead axe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.6 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_axe_lead.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.6,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.0, [3]=0.60}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:sword_lead', {
		description = "".. core.colorize("#00FFFF", "lead sword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.5 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_sword_lead.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.25}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:shovel_lead', {
		description = "".. core.colorize("#00FFFF", "lead shovel\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.65 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_shovel_lead.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.65,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.20, [2]=0.6, [3]=0.30}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("minerdream:pick_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel pickaxe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 5.25\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.90 "),
	inventory_image = "minerdream_pick_nickel.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=3.40, [2]=1.30, [3]=0.65}, uses=45, maxlevel=2},
		},
		damage_groups = {fleshy=5.25},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:sword_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel sword\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 6.75\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.70 "),
	inventory_image = "minerdream_sword_nickel.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 0.70,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.20, [2]=0.95, [3]=0.275}, uses=45, maxlevel=2},
		},
		damage_groups = {fleshy=6.75},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:axe_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel axe\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 5.75\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.90 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	inventory_image = "minerdream_axe_nickel.png",
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.275, [2]=1.20, [3]=0.75}, uses=45, maxlevel=2},
		},
		damage_groups = {fleshy=5.75},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:shovel_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel shovel\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 3.75\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.1,y=1.1,z=1.1},
	range = 4.25,
	inventory_image = "minerdream_shovel_nickel.png",
	wield_image = "minerdream_shovel_nickel.png",
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.30, [2]=0.75, [3]=0.325}, uses=45, maxlevel=2},
		},
		damage_groups = {fleshy=3.75},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool('minerdream:pick_gold', {
		description = "".. core.colorize("#00FFFF", "Golden pickaxe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 5.5\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_pick_gold.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.10,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.40, [2]=1.2, [3]=0.60}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=5.5},
	},
})

minetest.register_tool('minerdream:axe_gold', {
		description = "".. core.colorize("#00FFFF", "Golden axe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 6\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_axe_gold.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.0, [3]=0.60}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool('minerdream:sword_gold', {
		description = "".. core.colorize("#00FFFF", "Golden sword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.925 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_sword_gold.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.925,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.0, [3]=0.25}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool('minerdream:shovel_gold', {
		description = "".. core.colorize("#00FFFF", "Golden shovel\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.15 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_shovel_gold.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 1.15,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.20, [2]=0.6, [3]=0.30}, uses=5, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool('minerdream:pick_silver', {
		description = "".. core.colorize("#00FFFF", "Silver pickaxe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 5.5\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_pick_silver.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.40, [2]=1.2, [3]=0.60}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5.5},
	},
})

minetest.register_tool('minerdream:axe_silver', {
		description = "".. core.colorize("#00FFFF", "Silver axe\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 6\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_axe_silver.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.40, [2]=1.1, [3]=0.65}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool('minerdream:sword_silver', {
		description = "".. core.colorize("#00FFFF", "Silver sword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.725 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_sword_silver.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.725,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.2, [2]=1.1, [3]=0.3}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool('minerdream:shovel_silver', {
		description = "".. core.colorize("#00FFFF", "Silver shovel\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4.3 \n")..core.colorize("#A0A0A0", "attack interval: 0.95 "),
	wield_scale = {x=1.15,y=1.15,z=1.15},
	inventory_image = "minerdream_shovel_silver.png",
	range = 4.3,
	tool_capabilities = {
		full_punch_interval = 0.95,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.40, [2]=0.7, [3]=0.35}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool('minerdream:pick_flint', {
		description = "".. core.colorize("#FFFFFF", "flint pickaxe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=1.00,y=1.00,z=1.00},
	inventory_image = "minerdream_pick_flint.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 1.10,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=4.15, [2]=1.7, [3]=0.85}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool('minerdream:axe_flint', {
		description = "".. core.colorize("#FFFFFF", "flint axe\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=1.00,y=1.00,z=1.00},
	inventory_image = "minerdream_axe_flint.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 1.10,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.65, [2]=1.50, [3]=1.05}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool('minerdream:shovel_flint', {
		description = "".. core.colorize("#FFFFFF", "flint shovel\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 1.15 "),
	wield_scale = {x=1.00,y=1.00,z=1.00},
	inventory_image = "minerdream_shovel_flint.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 1.15,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.65, [2]=1.0, [3]=0.45}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool('minerdream:sword_flint', {
		description = "".. core.colorize("#FFFFFF", "flint sword\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 4.15 \n")..core.colorize("#A0A0A0", "attack interval: 0.9 "),
	wield_scale = {x=1.00,y=1.00,z=1.00},
	inventory_image = "minerdream_sword_flint.png",
	range = 4.15,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.65, [2]=1.30, [3]=0.40}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})


