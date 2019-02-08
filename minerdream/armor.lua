if minetest.global_exists("armor") and armor.elements then
	table.insert(armor.elements, "accessory")
	local mult = armor.config.level_multiplier or 1
	armor.config.level_multiplier = mult * 1.1
end
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


---------------------special grindable-------------

armor:register_armor("minerdream:accessory_slimering", {
		description = "".. core.colorize("#40FF80", "Slimy ring\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "jump force + 25%\n")..core.colorize("#A0A0A0", "gravity - 5%\n")..core.colorize("#A0A0A0", "type: accessory "),
		inventory_image = "minerdream_inv_accessory_slimering.png",
		groups = {armor_accessory=1, armor_heal=0.0, armor_use=0,
			physics_jump=0.25, physics_speed=0.5, physics_gravity=-0.05},
		armor_groups = {fleshy=0.0},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
