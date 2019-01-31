---------mob drops----------------

for _,colo in pairs({"green","blue","red","yellow","purple","brown"}) do
minetest.register_craftitem('minerdream:slimeball_'..colo, {
		description = colo.." ball of slime",
	inventory_image = "minerdream_slimeball_"..colo..".png",
	stack_max= 1000,
})
end
---------------------materials---------------

minetest.register_craftitem('minerdream:expensivestick', {
		description = "Expensive stick",
	inventory_image = "minerdream_expensivestick.png",
	stack_max= 1000,
})

minetest.register_craftitem('minerdream:steelstick', {
		description = "Stainless steel stick",
	inventory_image = "minerdream_steelstick.png",
	stack_max= 1000,
})

minetest.register_craftitem('minerdream:stainlesssteel_bar', {
		description = "Stainless steel bar",
	inventory_image = "minerdream_stainlesssteel_bar.png",
	stack_max= 1000,
})
-----------------ores----------------

minetest.register_craftitem('minerdream:brass_nugget', {
		description = "".. core.colorize("#FFFFFF", "brass nugget\n")..core.colorize("#A0A0A0", "4 of those, can be combined into a bar"),
	inventory_image = "minerdream_brass_nugget.png",
	stack_max= 1000,
})

minetest.register_craftitem('minerdream:gold_nugget', {
		description = "".. core.colorize("#FFFFFF", "Raw gold nugget\n")..core.colorize("#A0A0A0", "4 of those, can be combined into a lump"),
	inventory_image = "minerdream_gold_nugget.png",
	stack_max= 1000,
})
---------------refined goods-----------------

minetest.register_craftitem('minerdream:brass_bar', {
		description = "".. core.colorize("#BFFFFF", "brass bar\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	inventory_image = "minerdream_brass_bar.png",
	stack_max= 250,
})
------------------consumables----------------

minetest.register_craftitem("minerdream:vitamin", {
		description = "".. core.colorize("#FFFFFF", "Vitamin pill\n")..core.colorize("#A0A0A0", "Consumable\n")..core.colorize("#A0A0A0", "Restores 3 hp"),
	wield_scale = {x=0.25,y=0.25,z=0.5},
	inventory_image = "minerdream_pill.png",
	on_use = minetest.item_eat(3),
})

minetest.register_craftitem("minerdream:potion_tiny", {
		description = "".. core.colorize("#FFFFFF", "Tiny healing potion\n")..core.colorize("#A0A0A0", "Consumable\n")..core.colorize("#A0A0A0", "Restores 5 hp"),
	wield_scale = {x=0.75,y=0.75,z=0.75},
	inventory_image = "minerdream_potion_tiny.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("minerdream:potion_lesser", {
		description = "".. core.colorize("#FFFFFF", "Lesser healing potion\n")..core.colorize("#A0A0A0", "Consumable\n")..core.colorize("#A0A0A0", "Restores 10 hp"),
	wield_scale = {x=0.75,y=0.75,z=0.75},
	inventory_image = "minerdream_potion_lesser.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("minerdream:potion_normal", {
		description = "".. core.colorize("#FFFFFF", " Healing potion\n")..core.colorize("#A0A0A0", "Consumable\n")..core.colorize("#A0A0A0", "Restores 15 hp"),
	wield_scale = {x=0.75,y=0.75,z=0.75},
	inventory_image = "minerdream_potion_normal.png",
	on_use = minetest.item_eat(15),
})

minetest.register_craftitem("minerdream:potion_greater", {
		description = "".. core.colorize("#FFFFFF", "Greater healing potion\n")..core.colorize("#A0A0A0", "Consumable\n")..core.colorize("#A0A0A0", "Restores 20 hp"),
	wield_scale = {x=0.75,y=0.75,z=0.75},
	inventory_image = "minerdream_potion_greater.png",
	on_use = minetest.item_eat(20),
})
