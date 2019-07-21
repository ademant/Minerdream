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
	output = 'dye:blue 3',
	recipe = {
		{'minerdream:lapislazuli_lump'},
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
		{'default:steel_ingot', 'minerdream:zinc_ingot', 'default:coal_lump'},
	}
})

local stainlessbar="minerdream:stainlesssteel_bar"
if minetest.registered_items["technic:stainless_steel_ingot"] ~= nil then
	stainlessbar = "technic:stainless_steel_ingot"
end
minetest.register_craft({
	output = 'minerdream:steelstick 3',
	recipe = {
		{'', stainlessbar, ''},
		{'', stainlessbar, ''},
	}
})

local silveringot=minerdream.items["silver"]
if silveringot ~= nil then
	local ingot_name=silveringot.ingot_name
	if ingot_name == nil and silveringot.ingot_def ~= nil then
		ingot_name = silveringot.ingot_def.name
	end
	if ingot_name ~= nil then
		minetest.register_craft({
			output = 'minerdream:expensivestick 2',
			recipe = {
				{ingot_name},
				{ 'default:gold_ingot'},
			}
		})
	end
end

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
	output = 'minerdream:dark_shuriken 50',
	recipe = {
		{'minerdream:shuriken', 'minerdream:shuriken', 'minerdream:shuriken'},
		{'minerdream:shuriken', 'minerdream:onyx', 'minerdream:shuriken'},
		{'minerdream:shuriken', 'minerdream:shuriken', 'minerdream:shuriken'},
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
