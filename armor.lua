if minetest.global_exists("armor") and armor.elements then
	table.insert(armor.elements, "accessory")
	local mult = armor.config.level_multiplier or 1
	armor.config.level_multiplier = mult * 1.1
end

armor:register_armor("minerdream:helmet_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium helmet\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.0\n")..core.colorize("#A0A0A0", "heal: 8.35 \n")..core.colorize("#A0A0A0", "walking speed + 12%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_rhodium.png",
		groups = {armor_head=1, armor_heal=8.35, armor_use=60,
			physics_jump=0.09, physics_speed=0.12, physics_gravity=-0.08},
		armor_groups = {fleshy=15.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium chestplate\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 20.0\n")..core.colorize("#A0A0A0", "heal: 8.35 \n")..core.colorize("#A0A0A0", "walking speed + 12%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_rhodium.png",
		groups = {armor_torso=1, armor_heal=8.35, armor_use=60,
			physics_jump=0.09, physics_speed=0.12, physics_gravity=-0.08},
		armor_groups = {fleshy=20.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium leggings\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 20.0\n")..core.colorize("#A0A0A0", "heal: 8.35\n")..core.colorize("#A0A0A0", "walking speed + 12%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_rhodium.png",
		groups = {armor_legs=1, armor_heal=8.35, armor_use=60,
			physics_jump=0.09, physics_speed=0.12, physics_gravity=-0.08},
		armor_groups = {fleshy=20.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium boots\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.0\n")..core.colorize("#A0A0A0", "heal: 8.35\n")..core.colorize("#A0A0A0", "walking speed + 12%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_rhodium.png",
		groups = {armor_feet=1, armor_heal=8.35, armor_use=60,
			physics_jump=0.09, physics_speed=0.12, physics_gravity=-0.08},
		armor_groups = {fleshy=15.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium shield\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.0\n")..core.colorize("#A0A0A0", "heal: 8.35\n")..core.colorize("#A0A0A0", "walking speed + 12%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_rhodium.png",
		groups = {armor_shield=1, armor_heal=8.35, armor_use=60,
			physics_jump=0.09, physics_speed=0.12, physics_gravity=-0.08},
		armor_groups = {fleshy=15.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


armor:register_armor("minerdream:helmet_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum helmet\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 8.2 \n")..core.colorize("#A0A0A0", "walking speed + 16%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_tantalum.png",
		groups = {armor_head=1, armor_heal=8.2, armor_use=60,
			physics_jump=0.1, physics_speed=0.16, physics_gravity=-0.09},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum chestplate\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 19.5\n")..core.colorize("#A0A0A0", "heal: 8.2 \n")..core.colorize("#A0A0A0", "walking speed + 16%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_tantalum.png",
		groups = {armor_torso=1, armor_heal=8.2, armor_use=60,
			physics_jump=0.1, physics_speed=0.16, physics_gravity=-0.09},
		armor_groups = {fleshy=19.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum leggings\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 19.5\n")..core.colorize("#A0A0A0", "heal: 8.2\n")..core.colorize("#A0A0A0", "walking speed + 16%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_tantalum.png",
		groups = {armor_legs=1, armor_heal=8.2, armor_use=60,
			physics_jump=0.10, physics_speed=0.16, physics_gravity=-0.09},
		armor_groups = {fleshy=19.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum boots\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 8.2\n")..core.colorize("#A0A0A0", "walking speed + 16%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_tantalum.png",
		groups = {armor_feet=1, armor_heal=8.2, armor_use=60,
			physics_jump=0.10, physics_speed=0.16, physics_gravity=-0.09},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum shield\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 8.2\n")..core.colorize("#A0A0A0", "walking speed + 16%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_tantalum.png",
		groups = {armor_shield=1, armor_heal=8.2, armor_use=60,
			physics_jump=0.10, physics_speed=0.16, physics_gravity=-0.09},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium helmet\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.75\n")..core.colorize("#A0A0A0", "heal: 8.0 \n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_ruthenium.png",
		groups = {armor_head=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=13.75},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium chestplate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.75\n")..core.colorize("#A0A0A0", "heal: 8.0 \n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_ruthenium.png",
		groups = {armor_torso=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=18.75},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium leggings\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.75\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_ruthenium.png",
		groups = {armor_legs=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=18.75},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium boots\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.75\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_ruthenium.png",
		groups = {armor_feet=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.075, physics_speed=0.075, physics_gravity=-0.075},
		armor_groups = {fleshy=13.75},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium shield\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.75\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_ruthenium.png",
		groups = {armor_shield=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=13.75},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


armor:register_armor("minerdream:helmet_cobalt", {
		description = "".. core.colorize("#0040FF", "Cobalt helmet\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.25 \n")..core.colorize("#A0A0A0", "walking speed + 9%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_cobalt.png",
		groups = {armor_head=1, armor_heal=8.25, armor_use=80,
			physics_jump=0.09, physics_speed=0.09, physics_gravity=-0.09},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_cobalt", {
		description = "".. core.colorize("#0040FF", "cobalt chestplate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 8.25 \n")..core.colorize("#A0A0A0", "walking speed + 9%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_cobalt.png",
		groups = {armor_torso=1, armor_heal=8.25, armor_use=80,
			physics_jump=0.09, physics_speed=0.09, physics_gravity=-0.09},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_cobalt", {
		description = "".. core.colorize("#0040FF", "cobalt leggings\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 8.25\n")..core.colorize("#A0A0A0", "walking speed + 9%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_cobalt.png",
		groups = {armor_legs=1, armor_heal=8.25, armor_use=80,
			physics_jump=0.09, physics_speed=0.09, physics_gravity=-0.09},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_cobalt", {
		description = "".. core.colorize("#0040FF", "cobalt boots\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.25\n")..core.colorize("#A0A0A0", "walking speed + 9%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_cobalt.png",
		groups = {armor_feet=1, armor_heal=8.25, armor_use=80,
			physics_jump=0.09, physics_speed=0.09, physics_gravity=-0.09},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_cobalt", {
		description = "".. core.colorize("#0040FF", "cobalt shield\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.25\n")..core.colorize("#A0A0A0", "walking speed + 9%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 9%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_cobalt.png",
		groups = {armor_shield=1, armor_heal=8.25, armor_use=80,
			physics_jump=0.09, physics_speed=0.09, physics_gravity=-0.09},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


armor:register_armor("minerdream:helmet_platinum", {
		description = "".. core.colorize("#40FF80", "platinum helmet\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 7.75 \n")..core.colorize("#A0A0A0", "walking speed + 3%\n")..core.colorize("#A0A0A0", "gravity - 3%\n")..core.colorize("#A0A0A0", "jump force + 3%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_platinum.png",
		groups = {armor_head=1, armor_heal=7.75, armor_use=100,
			physics_jump=0.03, physics_speed=0.03, physics_gravity=-0.03},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_platinum", {
		description = "".. core.colorize("#40FF80", "platinum chestplate\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 7.75 \n")..core.colorize("#A0A0A0", "walking speed + 3%\n")..core.colorize("#A0A0A0", "gravity - 3%\n")..core.colorize("#A0A0A0", "jump force + 3%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_platinum.png",
		groups = {armor_torso=1, armor_heal=7.75, armor_use=100,
			physics_jump=0.03, physics_speed=0.03, physics_gravity=-0.03},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_platinum", {
		description = "".. core.colorize("#40FF80", "platinum leggings\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 7.75\n")..core.colorize("#A0A0A0", "walking speed + 3%\n")..core.colorize("#A0A0A0", "gravity - 3%\n")..core.colorize("#A0A0A0", "jump force + 3%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_platinum.png",
		groups = {armor_legs=1, armor_heal=7.75, armor_use=100,
			physics_jump=0.03, physics_speed=0.03, physics_gravity=-0.03},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_platinum", {
		description = "".. core.colorize("#40FF80", "platinum boots\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 7.75\n")..core.colorize("#A0A0A0", "walking speed + 3%\n")..core.colorize("#A0A0A0", "gravity - 3%\n")..core.colorize("#A0A0A0", "jump force + 3%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_platinum.png",
		groups = {armor_feet=1, armor_heal=7.75, armor_use=100,
			physics_jump=0.03, physics_speed=0.03, physics_gravity=-0.03},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_platinum", {
		description = "".. core.colorize("#40FF80", "platinum shield\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 7.75\n")..core.colorize("#A0A0A0", "walking speed + 3%\n")..core.colorize("#A0A0A0", "gravity - 3%\n")..core.colorize("#A0A0A0", "jump force + 3%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_platinum.png",
		groups = {armor_shield=1, armor_heal=7.75, armor_use=100,
			physics_jump=0.03, physics_speed=0.03, physics_gravity=-0.03},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


armor:register_armor("minerdream:helmet_aluminum", {
		description = "".. core.colorize("#40FF80", "aluminum helmet\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 6%\n")..core.colorize("#A0A0A0", "gravity - 6%\n")..core.colorize("#A0A0A0", "jump force + 6%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_aluminum.png",
		groups = {armor_head=1, armor_heal=7.5, armor_use=100,
			physics_jump=0.06, physics_speed=0.06, physics_gravity=-0.06},
		armor_groups = {fleshy=13},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_aluminum", {
		description = "".. core.colorize("#40FF80", "aluminum chestplate\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 18\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 6%\n")..core.colorize("#A0A0A0", "gravity - 6%\n")..core.colorize("#A0A0A0", "jump force + 6%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_aluminum.png",
		groups = {armor_torso=1, armor_heal=7.5, armor_use=100,
			physics_jump=0.06, physics_speed=0.06, physics_gravity=-0.06},
		armor_groups = {fleshy=18},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_aluminum", {
		description = "".. core.colorize("#40FF80", "aluminum leggings\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 18\n")..core.colorize("#A0A0A0", "heal: 7.5\n")..core.colorize("#A0A0A0", "walking speed + 6%\n")..core.colorize("#A0A0A0", "gravity - 6%\n")..core.colorize("#A0A0A0", "jump force + 6%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_aluminum.png",
		groups = {armor_legs=1, armor_heal=7.5, armor_use=100,
			physics_jump=0.06, physics_speed=0.06, physics_gravity=-0.06},
		armor_groups = {fleshy=18},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_aluminum", {
		description = "".. core.colorize("#40FF80", "aluminum boots\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7.5\n")..core.colorize("#A0A0A0", "walking speed + 6%\n")..core.colorize("#A0A0A0", "gravity - 6%\n")..core.colorize("#A0A0A0", "jump force + 6%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_aluminum.png",
		groups = {armor_feet=1, armor_heal=7.5, armor_use=100,
			physics_jump=0.06, physics_speed=0.06, physics_gravity=-0.06},
		armor_groups = {fleshy=13},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_aluminum", {
		description = "".. core.colorize("#40FF80", "aluminum shield\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "Defence: 13\n")..core.colorize("#A0A0A0", "heal: 7.5\n")..core.colorize("#A0A0A0", "walking speed + 6%\n")..core.colorize("#A0A0A0", "gravity - 6%\n")..core.colorize("#A0A0A0", "jump force + 6%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_aluminum.png",
		groups = {armor_shield=1, armor_heal=7.5, armor_use=100,
			physics_jump=0.06, physics_speed=0.06, physics_gravity=-0.06},
		armor_groups = {fleshy=13},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


armor:register_armor('minerdream:helmet_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel helmet\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 6 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_stainlesssteel.png",
		groups = {armor_head=1, armor_heal=6, armor_use=175,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
})

armor:register_armor('minerdream:chestplate_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel chestplate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 15\n")..core.colorize("#A0A0A0", "heal: 6 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_stainlesssteel.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=175,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
})

armor:register_armor('minerdream:leggings_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel leggings\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 15\n")..core.colorize("#A0A0A0", "heal: 6 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_stainlesssteel.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=175,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
})

armor:register_armor('minerdream:boots_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel boots\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 6 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_stainlesssteel.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=175,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
})

armor:register_armor('minerdream:shield_stainlesssteel', {
		description = "".. core.colorize("#BFFFFF", "Stainless steel shield\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 10\n")..core.colorize("#A0A0A0", "heal: 6 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_stainlesssteel.png",
		groups = {armor_shield=1, armor_heal=6, armor_use=175,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
})

armor:register_armor("minerdream:helmet_lead", {
		description = "".. core.colorize("#BFFFFF", "Lead helmet\n")..core.colorize("#A0A0A0", "tier: 3 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 0 \n")..core.colorize("#A0A0A0", "walking speed - 6%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_lead.png",
		groups = {armor_head=1, armor_heal=0, armor_use=600,
			physics_speed=-0.01, physics_gravity=0.04},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_lead", {
		description = "".. core.colorize("#BFFFFF", "Lead chestplate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 0 \n")..core.colorize("#A0A0A0", "walking speed - 6%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_lead.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=600,
			physics_speed=-0.06, physics_gravity=0.04},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_lead", {
		description = "".. core.colorize("#BFFFFF", "Lead leggings\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 0 \n")..core.colorize("#A0A0A0", "walking speed - 6%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_lead.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=600,
			physics_speed=-0.06, physics_gravity=0.04},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_lead", {
		description = "".. core.colorize("#BFFFFF", "Lead boots\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 0 \n")..core.colorize("#A0A0A0", "walking speed - 6%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_lead.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=600,
			physics_speed=-0.06, physics_gravity=0.04},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_lead", {
		description = "".. core.colorize("#BFFFFF", "Lead shield\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 0 \n")..core.colorize("#A0A0A0", "walking speed - 6%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_lead.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=600,
			physics_speed=-0.06, physics_gravity=0.04},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_nickel", {
		description = "".. core.colorize("#BFFFFF", "nickel helmet\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_nickel.png",
		groups = {armor_head=1, armor_heal=5, armor_use=350,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_nickel", {
		description = "".. core.colorize("#BFFFFF", "nickel chestplate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 4%\n")..core.colorize("#A0A0A0", "gravity + 4%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_nickel.png",
		groups = {armor_torso=1, armor_heal=5, armor_use=350,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_nickel", {
		description = "".. core.colorize("#BFFFFF", "nickel leggings\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_nickel.png",
		groups = {armor_legs=1, armor_heal=5, armor_use=350,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_nickel", {
		description = "".. core.colorize("#BFFFFF", "nickel boots\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 1%\n")..core.colorize("#A0A0A0", "gravity + 1%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_nickel.png",
		groups = {armor_feet=1, armor_heal=5, armor_use=350,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_nickel", {
		description = "".. core.colorize("#BFFFFF", "nickel shield\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 5 \n")..core.colorize("#A0A0A0", "walking speed - 3%\n")..core.colorize("#A0A0A0", "gravity + 3%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_nickel.png",
		groups = {armor_shield=1, armor_heal=5, armor_use=350,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_silver", {
		description = "".. core.colorize("#00FFFF", "silver helmet\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 2%\n")..core.colorize("#A0A0A0", "gravity - 2%\n")..core.colorize("#A0A0A0", "jump force + 2%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_silver.png",
		groups = {armor_head=1, armor_heal=7.5, armor_use=300,
			physics_jump=0.02, physics_speed=0.02, physics_gravity=-0.02},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_silver", {
		description = "".. core.colorize("#00FFFF", "silver chestplate\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 2%\n")..core.colorize("#A0A0A0", "gravity - 2%\n")..core.colorize("#A0A0A0", "jump force + 2%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_silver.png",
		groups = {armor_torso=1, armor_heal=7.5, armor_use=300,
			physics_jump=0.02, physics_speed=0.02, physics_gravity=-0.02},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_silver", {
		description = "".. core.colorize("#00FFFF", "silver leggings\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 16\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 2%\n")..core.colorize("#A0A0A0", "gravity - 2%\n")..core.colorize("#A0A0A0", "jump force + 2%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_silver.png",
		groups = {armor_legs=1, armor_heal=7.5, armor_use=300,
			physics_jump=0.02, physics_speed=0.02, physics_gravity=-0.02},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_silver", {
		description = "".. core.colorize("#00FFFF", "silver boots\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 2%\n")..core.colorize("#A0A0A0", "gravity - 2%\n")..core.colorize("#A0A0A0", "jump force + 2%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_silver.png",
		groups = {armor_feet=1, armor_heal=7.5, armor_use=300,
			physics_jump=0.02, physics_speed=0.02, physics_gravity=-0.02},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_silver", {
		description = "".. core.colorize("#00FFFF", "silver shield\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "Defence: 11\n")..core.colorize("#A0A0A0", "heal: 7.5 \n")..core.colorize("#A0A0A0", "walking speed + 2%\n")..core.colorize("#A0A0A0", "gravity - 2%\n")..core.colorize("#A0A0A0", "jump force + 2%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_silver.png",
		groups = {armor_shield=1, armor_heal=7.5, armor_use=300,
			physics_jump=0.02, physics_speed=0.02, physics_gravity=-0.02},
		armor_groups = {fleshy=11},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

---------------------accessoaries--------------------

armor:register_armor("minerdream:accessory_speedring", {
		description = "".. core.colorize("#0040FF", "Ring of speed\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "walking speed + 50%\n")..core.colorize("#A0A0A0", "type: accessory "),
		inventory_image = "minerdream_inv_accessory_speedring.png",
		groups = {armor_accessory=1, armor_heal=0.0, armor_use=0,
			physics_jump=0.0, physics_speed=0.5, physics_gravity=-0.00},
		armor_groups = {fleshy=0.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:accessory_protectionring", {
		description = "".. core.colorize("#0040FF", "Ring of protection\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "heal + 7.5%\n")..core.colorize("#A0A0A0", "type: accessory "),
		inventory_image = "minerdream_inv_accessory_protectionring.png",
		groups = {armor_accessory=1, armor_heal=7.5, armor_use=0,
			physics_jump=0.0, physics_speed=0.0, physics_gravity=-0.00},
		armor_groups = {fleshy=0.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})


---------------------special craftable------------

armor:register_armor("minerdream:helmet_defender", {
		description = "".. core.colorize("#0040FF", "Defender's helmet\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 14.25\n")..core.colorize("#A0A0A0", "heal: 8.0 \n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_defender.png",
		groups = {armor_head=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=14.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_defender", {
		description = "".. core.colorize("#0040FF", "Defender's chestplate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.25\n")..core.colorize("#A0A0A0", "heal: 8.0 \n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_defender.png",
		groups = {armor_torso=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=19.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_defender", {
		description = "".. core.colorize("#0040FF", "Defender's leggings\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 19.25\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_defender.png",
		groups = {armor_legs=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=19.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_defender", {
		description = "".. core.colorize("#0040FF", "Defender's boots\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 14.25\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_defender.png",
		groups = {armor_feet=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.075, physics_speed=0.075, physics_gravity=-0.075},
		armor_groups = {fleshy=14.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_defender", {
		description = "".. core.colorize("#0040FF", "Defender's shield\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 14.25\n")..core.colorize("#A0A0A0", "heal: 8.0\n")..core.colorize("#A0A0A0", "walking speed + 8%\n")..core.colorize("#A0A0A0", "gravity - 8%\n")..core.colorize("#A0A0A0", "jump force + 8%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_defender.png",
		groups = {armor_shield=1, armor_heal=8.0, armor_use=80,
			physics_jump=0.08, physics_speed=0.08, physics_gravity=-0.08},
		armor_groups = {fleshy=14.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_scout", {
		description = "".. core.colorize("#0040FF", "Scout's helmet\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.75 \n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_scout.png",
		groups = {armor_head=1, armor_heal=8.75, armor_use=80,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.1},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_scout", {
		description = "".. core.colorize("#0040FF", "Scout's chestplate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 8.75 \n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_scout.png",
		groups = {armor_torso=1, armor_heal=8.75, armor_use=80,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.1},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_scout", {
		description = "".. core.colorize("#0040FF", "Scout's leggings\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 8.75\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_scout.png",
		groups = {armor_legs=1, armor_heal=8.75, armor_use=80,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.1},
		armor_groups = {fleshy=18.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_scout", {
		description = "".. core.colorize("#0040FF", "Scout's boots\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.75\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_scout.png",
		groups = {armor_feet=1, armor_heal=8.75, armor_use=80,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.1},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_scout", {
		description = "".. core.colorize("#0040FF", "Scout's shield\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "Defence: 13.5\n")..core.colorize("#A0A0A0", "heal: 8.75\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_scout.png",
		groups = {armor_shield=1, armor_heal=8.75, armor_use=80,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.1},
		armor_groups = {fleshy=13.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_shadow", {
		description = "".. core.colorize("#00FF00", "Hood of shadows\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 9.0 \n")..core.colorize("#A0A0A0", "walking speed + 25%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_shadow.png",
		groups = {armor_head=1, armor_heal=9.0, armor_use=50,
			physics_jump=0.1, physics_speed=0.25, physics_gravity=-0.10},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_shadow", {
		description = "".. core.colorize("#00FF00", "Robe of shadows\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 18.5\n")..core.colorize("#A0A0A0", "heal: 9.0 \n")..core.colorize("#A0A0A0", "walking speed + 25%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_shadow.png",
		groups = {armor_torso=1, armor_heal=9.0, armor_use=50,
			physics_jump=0.1, physics_speed=0.25, physics_gravity=-0.1},
		armor_groups = {fleshy=19.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_shadow", {
		description = "".. core.colorize("#00FF00", "Leggings of shadows\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 19.5\n")..core.colorize("#A0A0A0", "heal: 9.0\n")..core.colorize("#A0A0A0", "walking speed + 25%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_shadow.png",
		groups = {armor_legs=1, armor_heal=9.0, armor_use=50,
			physics_jump=0.10, physics_speed=0.25, physics_gravity=-0.1},
		armor_groups = {fleshy=19.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_shadow", {
		description = "".. core.colorize("#00FF00", "Boots of shadows \n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 9.0\n")..core.colorize("#A0A0A0", "walking speed + 25%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_shadow.png",
		groups = {armor_feet=1, armor_heal=9.0, armor_use=50,
			physics_jump=0.10, physics_speed=0.25, physics_gravity=-0.1},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_shadow", {
		description = "".. core.colorize("#00FF00", "Shield of shadows\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 14.5\n")..core.colorize("#A0A0A0", "heal: 9.0\n")..core.colorize("#A0A0A0", "walking speed + 25%\n")..core.colorize("#A0A0A0", "gravity - 10%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_shadow.png",
		groups = {armor_shield=1, armor_heal=9.0, armor_use=50,
			physics_jump=0.10, physics_speed=0.25, physics_gravity=-0.1},
		armor_groups = {fleshy=14.5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:helmet_knight", {
		description = "".. core.colorize("#00FF00", "knight's helmet\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.25\n")..core.colorize("#A0A0A0", "heal: 8.5 \n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: head gear "),
		inventory_image = "minerdream_inv_helmet_knight.png",
		groups = {armor_head=1, armor_heal=8.5, armor_use=60,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.09},
		armor_groups = {fleshy=15.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:chestplate_knight", {
		description = "".. core.colorize("#00FF00", "knight's chestplate\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 20.25\n")..core.colorize("#A0A0A0", "heal: 8.5 \n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: torso gear "),
		inventory_image = "minerdream_inv_chestplate_knight.png",
		groups = {armor_torso=1, armor_heal=8.5, armor_use=60,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.09},
		armor_groups = {fleshy=20.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:leggings_knight", {
		description = "".. core.colorize("#00FF00", "knight's leggings\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 20.25\n")..core.colorize("#A0A0A0", "heal: 8.5\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: leg gear "),
		inventory_image = "minerdream_inv_leggings_knight.png",
		groups = {armor_legs=1, armor_heal=8.5, armor_use=60,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.09},
		armor_groups = {fleshy=20.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:boots_knight", {
		description = "".. core.colorize("#00FF00", "knight's boots\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.25\n")..core.colorize("#A0A0A0", "heal: 8.5\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: feet gear "),
		inventory_image = "minerdream_inv_boots_knight.png",
		groups = {armor_feet=1, armor_heal=8.5, armor_use=60,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.09},
		armor_groups = {fleshy=15.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("minerdream:shield_knight", {
		description = "".. core.colorize("#00FF00", "knight's shield\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "Defence: 15.25\n")..core.colorize("#A0A0A0", "heal: 8.5\n")..core.colorize("#A0A0A0", "walking speed + 13%\n")..core.colorize("#A0A0A0", "gravity - 9%\n")..core.colorize("#A0A0A0", "jump force + 10%\n")..core.colorize("#A0A0A0", "type: hand gear "),
		inventory_image = "minerdream_inv_shield_knight.png",
		groups = {armor_shield=1, armor_heal=8.5, armor_use=60,
			physics_jump=0.1, physics_speed=0.13, physics_gravity=-0.09},
		armor_groups = {fleshy=15.25},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})



---------------------special grindable-------------

armor:register_armor("minerdream:accessory_slimering", {
		description = "".. core.colorize("#40FF80", "Slimy ring\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "jump force + 25%\n")..core.colorize("#A0A0A0", "gravity - 5%\n")..core.colorize("#A0A0A0", "type: accessory "),
		inventory_image = "minerdream_inv_accessory_slimering.png",
		groups = {armor_accessory=1, armor_heal=0.0, armor_use=0,
			physics_jump=0.25, physics_speed=0.5, physics_gravity=-0.05},
		armor_groups = {fleshy=0.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
