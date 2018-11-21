local local_craft_stack=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{input, input},
		{input, input},
	} })
end
local local_craft_pillar=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{input},
		{input},
		{input},
	} })
end
local local_craft_pillar_bottom=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{'',input,''},
		{'',input,''},
		{input,input,input},
	} })
end
local local_craft_pillar_both=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{'',input,''},
		{'',input,''},
		{input,input,input},
	} })
end
local local_craft_pillar_top=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{input,input,input},
		{'',input,''},
		{'',input,''},
	} })
end
local local_craft_block=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{input, input, input},
		{input, input, input},
		{input, input, input},
	} })
minetest.register_craft({
	output = input.." 9",
	recipe = {{output}} })
end
----------slimerecipies------
local slime_def={red={torches=5,burntime=50},
	blue={torches=4,burntime=40},
	green={torches=3,burntime=30},
	yellow={torches=6,burntime=60},
	purple={torches=7,burntime=70},
	brown={torches=8,burntime=80},
	}
for i,idef in pairs(slime_def) do
	local_craft_block('minerdream:slimeball_'..i,'minerdream:slimeblock_'..i)
	minetest.register_craft({
		output = 'default:torch '..idef.torches,
		recipe = {
			{'minerdream:slimeball_'..i},
			{'group:stick'},
		}
	})
	minetest.register_craft({
		type = "fuel",
		recipe = "minerdream:slimeball_"..i,
		burntime = idef.burntime,
	})
end


-----------------alloys n stuff---------

minetest.register_craft( {
	type = "shapeless",
	output = "tnt:gunpowder 12",
	recipe = {"default:coal_lump", "minerdream:sulfur_powder", "minerdream:saltpeter_powder"},
})

minetest.register_craft({
	output = 'minerdream:brass_nugget',
	recipe = {
		{'minerdream:casing', 'minerdream:casing', 'minerdream:casing'},
		{'minerdream:casing', 'minerdream:casing', 'minerdream:casing'},
		{'minerdream:casing', 'minerdream:casing', 'minerdream:casing'},
	}
})

minetest.register_craft({
	output = 'minerdream:brass_bar',
	recipe = {
		{'minerdream:brass_nugget', 'minerdream:brass_nugget', ''},
		{'minerdream:brass_nugget', 'minerdream:brass_nugget', ''},
	}
})
minetest.register_craft({
	output = 'default:gold_lump',
	recipe = {
		{'minerdream:gold_nugget', 'minerdream:gold_nugget', ''},
		{'minerdream:gold_nugget', 'minerdream:gold_nugget', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:brass_bar 3',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'minerdream:zinc_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:sulfur_powder',
	recipe = {
		{'minerdream:sulfur_lump'},
	}
})
minetest.register_craft({
	output = 'dye:blue 3',
	recipe = {
		{'minerdream:lapislazuli_lump'},
	}
})

minetest.register_craft({
	output = 'minerdream:saltpeter_powder',
	recipe = {
		{'minerdream:saltpeter_lump'},
	}
})

minetest.register_craft({
	output = 'minerdream:brass_bar 3',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', 'minerdream:zinc_bar'},
	}
})


minetest.register_craft({
	output = 'minerdream:stainlesssteel_bar 1',
	recipe = {
		{'default:steel_ingot', 'minerdream:zinc_bar', 'default:coal_lump'},
	}
})

minetest.register_craft({
	output = 'minerdream:steelstick 3',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', ''},
		{'', 'minerdream:stainlesssteel_bar', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:expensivestick 2',
	recipe = {
		{'', 'minerdream:silver_bar', ''},
		{'', 'default:gold_ingot', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 8',
	recipe = {
		{'minerdream:bituminous_coal'},
		{'group:stick'},
	}
})
----------fuels-------------

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:bituminous_coal",
	burntime = 125,
})


--------------lapis----------------

minetest.register_craft({
	output = 'minerdream:lapislazuli_lump 9',
	recipe = {
		{'minerdream:lapislazuli_block'},
	}
})
minetest.register_craft({
	output = 'minerdream:lapislazuli_smallbrick 4',
	recipe = {
		{'minerdream:lapislazuli_brick', 'minerdream:lapislazuli_brick', ''},
		{'minerdream:lapislazuli_brick', 'minerdream:lapislazuli_brick', ''},

	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_brick",
	recipe = {"minerdream:lapislazuli_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuligold_brick 2",
	recipe = {"minerdream:lapislazuli_smallbrick", "minerdream:gold_brick"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuligold_brick_a",
	recipe = {"minerdream:lapislazuligold_brick"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuligold_brick",
	recipe = {"minerdream:lapislazuligold_brick_a"},
})

minetest.register_craft({
	output = 'minerdream:lapislazuli_goldblock',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'default:gold_ingot', 'minerdream:lapislazuli_block', 'default:gold_ingot'},
		{'', 'default:gold_ingot', ''},
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_goldblock_a",
	recipe = {"minerdream:lapislazuli_goldblock"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_goldblock_b",
	recipe = {"minerdream:lapislazuli_goldblock_a"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_goldblock_c",
	recipe = {"minerdream:lapislazuli_goldblock_b"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_goldblock_d",
	recipe = {"minerdream:lapislazuli_goldblock_c"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lapislazuli_goldblock",
	recipe = {"minerdream:lapislazuli_goldblock_d"},
})

----------bar stacks---------------
minetest.register_craft({
	output = 'minerdream:brass_bar_block',
	recipe = {
		{'minerdream:brass_bar', 'minerdream:brass_bar', ''},
		{'minerdream:brass_bar', 'minerdream:brass_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:brass_bar 4',
	recipe = {
		{'minerdream:brass_bar_block', '', ''},
	}
})

-------------------marble-------------
for _,colo in pairs({"white","pink","red","green","purple","black"}) do
	local_craft_stack('minerdream:marble_'..colo,'minerdream:marble_'..colo..'_polished 4')
	local_craft_stack('minerdream:marble_'..colo..'_polished','minerdream:marble_'..colo..'_brick 4')
	local_craft_stack('minerdream:marble_'..colo..'_brick','minerdream:marble_'..colo..'_smallbrick 4')
	local_craft_pillar('minerdream:marble_'..colo,'minerdream:pillar_marble_'..colo..'_middle 3')
	local_craft_pillar_bottom('minerdream:marble_'..colo,'minerdream:pillar_marble_'..colo..'_bottom 5')
	local_craft_pillar_top('minerdream:marble_'..colo,'minerdream:pillar_marble_'..colo..'_top 5')
	local_craft_pillar_both('minerdream:marble_'..colo,'minerdream:pillar_marble_'..colo..'_both 7')
end

--------------misc items-------------

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:vitamin 6",
	recipe = {"default:iron_lump", "minerdream:calcium_lump", "minerdream:potassium_lump", "minerdream:zinc_lump"},
})

--------------------bows----------------


minetest.register_craft({
	output = 'minerdream:bow_copper',
	recipe = {
		{'', 'default:copper_ingot', 'default:copper_ingot'},
		{'default:copper_ingot', '', 'farming:cotton'},
		{'default:copper_ingot', 'farming:cotton', ''},
	}
})
------------unusualweapons and ammo------------

minetest.register_craft({
	output = 'minerdream:pink_blaster',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'minerdream:spinel', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'', '', 'minerdream:rhodium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:dark_shuriken 50',
	recipe = {
		{'minerdream:shuriken', 'minerdream:shuriken', 'minerdream:shuriken'},
		{'minerdream:shuriken', 'minerdream:onyx', 'minerdream:shuriken'},
		{'minerdream:shuriken', 'minerdream:shuriken', 'minerdream:shuriken'},
	}
})

minetest.register_craft({
	output = 'minerdream:amethyst_staff',
	recipe = {
		{'', 'minerdream:amethyst', 'minerdream:cobalt_bar'},
		{'', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:amethyst', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:ocean_staff',
	recipe = {
		{'', 'default:gold_ingot', 'minerdream:aquamarine'},
		{'', 'minerdream:tantalum_bar', 'default:gold_ingot'},
		{'minerdream:tantalum_bar', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:arrow 20',
	recipe = {
		{'', '', 'default:paper'},
		{'default:steel_ingot', 'group:wood', 'group:wood'},
		{'', '', 'default:paper'},

	}
})

minetest.register_craft({
	output = 'minerdream:arrow 20',
	recipe = {
		{'', '', 'mobs:chicken_feather'},
		{'default:steel_ingot', 'group:wood', 'group:wood'},
		{'', '', 'mobs:chicken_feather'},

	}
})

minetest.register_craft({
	output = 'minerdream:arrow 20',
	recipe = {
		{'', '', 'default:paper'},
		{'default:flint', 'group:wood', 'group:wood'},
		{'', '', 'default:paper'},

	}
})

minetest.register_craft({
	output = 'minerdream:arrow 20',
	recipe = {
		{'', '', 'mobs:chicken_feather'},
		{'default:flint', 'group:wood', 'group:wood'},
		{'', '', 'mobs:chicken_feather'},

	}
})

minetest.register_craft({
	output = 'minerdream:bullet 50',
	recipe = {
		{'', 'minerdream:lead_bar', ''},
		{'minerdream:brass_bar', 'tnt:gunpowder', 'minerdream:brass_bar'},
		{'minerdream:brass_bar', 'default:steel_ingot', 'minerdream:brass_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:handgun',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'default:mese_crystal_fragment', 'minerdream:lead_bar'},
		{'', '', 'minerdream:lead_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:golden_crystal_trisword',
	recipe = {
		{'', 'minerdream:topaz', 'minerdream:topaz'},
		{'minerdream:rhodium_bar', 'default:mese', 'minerdream:topaz'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', ''},
	}
})

------special armors-----

minetest.register_craft({
	output = 'minerdream:helmet_scout',
	recipe = {
		{'', 'minerdream:amethyst', ''},
		{'default:gold_ingot', 'minerdream:helmet_cobalt', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_scout',
	recipe = {
		{'minerdream:amethyst', '', 'minerdream:amethyst'},
		{'default:gold_ingot', 'minerdream:chestplate_cobalt', 'default:gold_ingot'},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'minerdream:leggings_scout',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'minerdream:amethyst', 'minerdream:leggings_cobalt', 'minerdream:amethyst'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:boots_scout',
	recipe = {
		{'', '', ''},
		{'minerdream:amethyst', 'minerdream:boots_cobalt', 'minerdream:amethyst'},
		{'default:gold_ingot', '', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'minerdream:shield_scout',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'default:gold_ingot', 'minerdream:amethyst', 'default:gold_ingot'},
		{'', 'minerdream:shield_cobalt', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:helmet_defender',
	recipe = {
		{'', 'minerdream:garnet', ''},
		{'default:bronze_ingot', 'minerdream:helmet_ruthenium', 'default:bronze_ingot'},
	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_defender',
	recipe = {
		{'minerdream:garnet', '', 'minerdream:garnet'},
		{'default:bronze_ingot', 'minerdream:chestplate_ruthenium', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_defender',
	recipe = {
		{'', 'default:bronze_ingot', ''},
		{'minerdream:garnet', 'minerdream:leggings_ruthenium', 'minerdream:garnet'},
		{'', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_defender',
	recipe = {
		{'', '', ''},
		{'minerdream:garnet', 'minerdream:boots_ruthenium', 'minerdream:garnet'},
		{'default:bronze_ingot', '', 'default:bronze_ingot'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_defender',
	recipe = {
		{'', 'default:bronze_ingot', ''},
		{'default:bronze_ingot', 'minerdream:garnet', 'default:bronze_ingot'},
		{'', 'minerdream:shield_ruthenium', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_shadow',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'wool:black', 'minerdream:helmet_tantalum', 'wool:black'},
		{'', 'minerdream:onyx', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_shadow',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'wool:black', 'minerdream:chestplate_tantalum', 'wool:black'},
		{'', 'minerdream:onyx', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_shadow',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'wool:black', 'minerdream:leggings_tantalum', 'wool:black'},
		{'', 'minerdream:onyx', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_shadow',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'wool:black', 'minerdream:boots_tantalum', 'wool:black'},
		{'', 'minerdream:onyx', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_shadow',
	recipe = {
		{'', 'minerdream:spinel', ''},
		{'minerdream:lead_bar', 'minerdream:shield_tantalum', 'minerdream:lead_bar'},
		{'', 'minerdream:onyx', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_knight',
	recipe = {
		{'', 'minerdream:topaz', ''},
		{'minerdream:silver_bar', 'minerdream:helmet_rhodium', 'minerdream:silver_bar'},
		{'', 'minerdream:topaz', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_knight',
	recipe = {
		{'', 'minerdream:topaz', ''},
		{'minerdream:silver_bar', 'minerdream:chestplate_rhodium', 'minerdream:silver_bar'},
		{'', 'minerdream:topaz', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_knight',
	recipe = {
		{'', 'minerdream:topaz', ''},
		{'minerdream:silver_bar', 'minerdream:leggings_rhodium', 'minerdream:silver_bar'},
		{'', 'minerdream:topaz', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_knight',
	recipe = {
		{'', 'minerdream:topaz', ''},
		{'minerdream:silver_bar', 'minerdream:boots_rhodium', 'minerdream:silver_bar'},
		{'', 'minerdream:topaz', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_knight',
	recipe = {
		{'', 'minerdream:topaz', ''},
		{'minerdream:silver_bar', 'minerdream:shield_rhodium', 'minerdream:silver_bar'},
		{'', '', ''},

	}
})

----------------------accessories---------------

minetest.register_craft({
	output = 'minerdream:accessory_speedring',
	recipe = {
		{'', 'minerdream:jade', 'minerdream:jade'},
		{'minerdream:silver_bar', '', 'minerdream:jade'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:accessory_protectionring',
	recipe = {
		{'', 'minerdream:garnet', 'minerdream:garnet'},
		{'default:gold_ingot', '', 'minerdream:garnet'},
		{'default:gold_ingot', 'default:gold_ingot', ''},

	}
})
