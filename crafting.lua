----------slimerecipies------

minetest.register_craft({
	output = 'minerdream:slimeblock_green',
	recipe = {
		{'minerdream:slimeball_green', 'minerdream:slimeball_green', 'minerdream:slimeball_green'},
		{'minerdream:slimeball_green', 'minerdream:slimeball_green', 'minerdream:slimeball_green'},
		{'minerdream:slimeball_green', 'minerdream:slimeball_green', 'minerdream:slimeball_green'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_green 9',
	recipe = {
		{'', 'minerdream:slimeblock_green', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 3',
	recipe = {
		{'', 'minerdream:slimeball_green', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_green",
	burntime = 30,
})


minetest.register_craft({
	output = 'minerdream:slimeblock_blue',
	recipe = {
		{'minerdream:slimeball_blue', 'minerdream:slimeball_blue', 'minerdream:slimeball_blue'},
		{'minerdream:slimeball_blue', 'minerdream:slimeball_blue', 'minerdream:slimeball_blue'},
		{'minerdream:slimeball_blue', 'minerdream:slimeball_blue', 'minerdream:slimeball_blue'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_blue 9',
	recipe = {
		{'', 'minerdream:slimeblock_blue', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'', 'minerdream:slimeball_blue', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_blue",
	burntime = 40,
})


minetest.register_craft({
	output = 'minerdream:slimeblock_red',
	recipe = {
		{'minerdream:slimeball_red', 'minerdream:slimeball_red', 'minerdream:slimeball_red'},
		{'minerdream:slimeball_red', 'minerdream:slimeball_red', 'minerdream:slimeball_red'},
		{'minerdream:slimeball_red', 'minerdream:slimeball_red', 'minerdream:slimeball_red'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_red 9',
	recipe = {
		{'', 'minerdream:slimeblock_red', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 5',
	recipe = {
		{'', 'minerdream:slimeball_red', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_red",
	burntime = 50,
})


minetest.register_craft({
	output = 'minerdream:slimeblock_yellow',
	recipe = {
		{'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow'},
		{'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow'},
		{'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow', 'minerdream:slimeball_yellow'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_yellow 9',
	recipe = {
		{'', 'minerdream:slimeblock_yellow', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 6',
	recipe = {
		{'', 'minerdream:slimeball_yellow', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_yellow",
	burntime = 60,
})


minetest.register_craft({
	output = 'minerdream:slimeblock_purple',
	recipe = {
		{'minerdream:slimeball_purple', 'minerdream:slimeball_purple', 'minerdream:slimeball_purple'},
		{'minerdream:slimeball_purple', 'minerdream:slimeball_purple', 'minerdream:slimeball_purple'},
		{'minerdream:slimeball_purple', 'minerdream:slimeball_purple', 'minerdream:slimeball_purple'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_purple 9',
	recipe = {
		{'', 'minerdream:slimeblock_purple', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 7',
	recipe = {
		{'', 'minerdream:slimeball_purple', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_purple",
	burntime = 70,
})

minetest.register_craft({
	output = 'minerdream:slimeblock_brown',
	recipe = {
		{'minerdream:slimeball_brown', 'minerdream:slimeball_brown', 'minerdream:slimeball_brown'},
		{'minerdream:slimeball_brown', 'minerdream:slimeball_brown', 'minerdream:slimeball_brown'},
		{'minerdream:slimeball_brown', 'minerdream:slimeball_brown', 'minerdream:slimeball_brown'},
	}
})

minetest.register_craft({
	output = 'minerdream:slimeball_brown 9',
	recipe = {
		{'', 'minerdream:slimeblock_brown', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 8',
	recipe = {
		{'', 'minerdream:slimeball_brown', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:slimeball_brown",
	burntime = 80,
})

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
		{'', 'minerdream:bituminous_coal', ''},
		{'', 'group:stick', ''},
	}
})
----------fuels-------------

minetest.register_craft({
	type = "fuel",
	recipe = "minerdream:bituminous_coal",
	burntime = 125,
})


-------------mineralsmelting----------
--[[
local function smelt_register(element,cooktime)
  minetest.register_craft({
	type="cooking",
	cooktime=cooktime,
	output="minerdream:"..element.."_bar",
	recipe="minerdream:"..element.."_lump",
  })
  if minetest.get_modpath("technic") then
  	technic.register_grinder_recipe({input = {"minerdream:"..element.."_lump"}, output = "minerdream:"..element.."_dust 2"})
  	technic.register_grinder_recipe({input = {"minerdream:"..element.."_bar"}, output = "minerdream:"..element.."_dust"})
    minetest.register_craft({
	  type="cooking",
	  cooktime=cooktime,
	  output="minerdream:"..element.."_bar",
	  recipe="minerdream:"..element.."_dust",
    })
  end
end]]
--[[
smelt_register("potassium",2)
smelt_register("calcium",2)
smelt_register("nickel",4)
--smelt_register("lead",4)
smelt_register("zinc",4)
--smelt_register("silver",8)
smelt_register("platinum",16)
smelt_register("cobalt",32)
smelt_register("ruthenium",32)
smelt_register("tantalum",64)
smelt_register("rhodium",64)
if not minetest.get_modpath("aluminium") then
  smelt_register("aluminium",32)
end
]]
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

-------------mineral blocks-------
----------bar stacks---------------

minetest.register_craft({
	output = 'minerdream:rhodium_bar_block',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', ''},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:rhodium_bar 4',
	recipe = {
		{'minerdream:rhodium_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:tantalum_bar_block',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', ''},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:tantalum_bar 4',
	recipe = {
		{'minerdream:tantalum_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:ruthenium_bar_block',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', ''},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:ruthenium_bar 4',
	recipe = {
		{'minerdream:ruthenium_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:cobalt_bar_block',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', ''},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:cobalt_bar 4',
	recipe = {
		{'minerdream:cobalt_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:platinum_bar_block',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', ''},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:platinum_bar 4',
	recipe = {
		{'minerdream:platinum_bar_block', '', ''},
	}
})


minetest.register_craft({
	output = 'minerdream:aluminum_bar_block',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', ''},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:aluminum_bar 4',
	recipe = {
		{'minerdream:aluminum_bar_block', '', ''},
	}
})

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

minetest.register_craft({
	output = 'minerdream:gold_bar_block',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', ''},
		{'default:gold_ingot', 'default:gold_ingot', ''},

	}
})

minetest.register_craft({
	output = 'default:gold_ingot 4',
	recipe = {
		{'minerdream:gold_bar_block', '', ''},
	}
})


minetest.register_craft({
	output = 'minerdream:tin_bar_block',
	recipe = {
		{'default:tin_ingot', 'default:tin_ingot', ''},
		{'default:tin_ingot', 'default:tin_ingot', ''},

	}
})

minetest.register_craft({
	output = 'default:tin_ingot 4',
	recipe = {
		{'minerdream:tin_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'default:copper_ingot 4',
	recipe = {
		{'minerdream:copper_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:copper_bar_block',
	recipe = {
		{'default:copper_ingot', 'default:copper_ingot', ''},
		{'default:copper_ingot', 'default:copper_ingot', ''},

	}
})

minetest.register_craft({
	output = 'default:steel_ingot 4',
	recipe = {
		{'minerdream:steel_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:steel_bar_block',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', ''},

	}
})

minetest.register_craft({
	output = 'default:bronze_ingot 4',
	recipe = {
		{'minerdream:bronze_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bronze_bar_block',
	recipe = {
		{'default:bronze_ingot', 'default:bronze_ingot', ''},
		{'default:bronze_ingot', 'default:bronze_ingot', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:potassium_bar 4',
	recipe = {
		{'minerdream:potassium_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:potassium_bar_block',
	recipe = {
		{'minerdream:potassium_bar', 'minerdream:potassium_bar', ''},
		{'minerdream:potassium_bar', 'minerdream:potassium_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:calcium_bar 4',
	recipe = {
		{'minerdream:calcium_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:calcium_bar_block',
	recipe = {
		{'minerdream:calcium_bar', 'minerdream:calcium_bar', ''},
		{'minerdream:calcium_bar', 'minerdream:calcium_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:nickel_bar 4',
	recipe = {
		{'minerdream:nickel_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:nickel_bar_block',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', ''},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:silver_bar 4',
	recipe = {
		{'minerdream:silver_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:silver_bar_block',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', ''},
		{'minerdream:silver_bar', 'minerdream:silver_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:zinc_bar 4',
	recipe = {
		{'minerdream:zinc_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:zinc_bar_block',
	recipe = {
		{'minerdream:zinc_bar', 'minerdream:zinc_bar', ''},
		{'minerdream:zinc_bar', 'minerdream:zinc_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:lead_bar 4',
	recipe = {
		{'minerdream:lead_bar_block', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:lead_bar_block',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', ''},
		{'minerdream:lead_bar', 'minerdream:lead_bar', ''},

	}
})

-------------------marble-------------

minetest.register_craft({
	output = 'minerdream:marble_white_polished 4',
	recipe = {
		{'minerdream:marble_white', 'minerdream:marble_white', ''},
		{'minerdream:marble_white', 'minerdream:marble_white', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_pink_polished 4',
	recipe = {
		{'minerdream:marble_pink', 'minerdream:marble_pink', ''},
		{'minerdream:marble_pink', 'minerdream:marble_pink', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_red_polished 4',
	recipe = {
		{'minerdream:marble_red', 'minerdream:marble_red', ''},
		{'minerdream:marble_red', 'minerdream:marble_red', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_green_polished 4',
	recipe = {
		{'minerdream:marble_green', 'minerdream:marble_green', ''},
		{'minerdream:marble_green', 'minerdream:marble_green', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_purple_polished 4',
	recipe = {
		{'minerdream:marble_purple', 'minerdream:marble_purple', ''},
		{'minerdream:marble_purple', 'minerdream:marble_purple', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_black_polished 4',
	recipe = {
		{'minerdream:marble_black', 'minerdream:marble_black', ''},
		{'minerdream:marble_black', 'minerdream:marble_black', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_white_brick 4',
	recipe = {
		{'minerdream:marble_white_polished', 'minerdream:marble_white_polished', ''},
		{'minerdream:marble_white_polished', 'minerdream:marble_white_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_pink_brick 4',
	recipe = {
		{'minerdream:marble_pink_polished', 'minerdream:marble_pink_polished', ''},
		{'minerdream:marble_pink_polished', 'minerdream:marble_pink_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_red_brick 4',
	recipe = {
		{'minerdream:marble_red_polished', 'minerdream:marble_red_polished', ''},
		{'minerdream:marble_red_polished', 'minerdream:marble_red_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_green_brick 4',
	recipe = {
		{'minerdream:marble_green_polished', 'minerdream:marble_green_polished', ''},
		{'minerdream:marble_green_polished', 'minerdream:marble_green_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_blue_brick 4',
	recipe = {
		{'minerdream:marble_blue_polished', 'minerdream:marble_blue_polished', ''},
		{'minerdream:marble_blue_polished', 'minerdream:marble_blue_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_black_brick 4',
	recipe = {
		{'minerdream:marble_black_polished', 'minerdream:marble_black_polished', ''},
		{'minerdream:marble_black_polished', 'minerdream:marble_black_polished', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_white_smallbrick 4',
	recipe = {
		{'minerdream:marble_white_brick', 'minerdream:marble_white_brick', ''},
		{'minerdream:marble_white_brick', 'minerdream:marble_white_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_pink_smallbrick 4',
	recipe = {
		{'minerdream:marble_pink_brick', 'minerdream:marble_pink_brick', ''},
		{'minerdream:marble_pink_brick', 'minerdream:marble_pink_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_red_smallbrick 4',
	recipe = {
		{'minerdream:marble_red_brick', 'minerdream:marble_red_brick', ''},
		{'minerdream:marble_red_brick', 'minerdream:marble_red_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_green_smallbrick 4',
	recipe = {
		{'minerdream:marble_green_brick', 'minerdream:marble_green_brick', ''},
		{'minerdream:marble_green_brick', 'minerdream:marble_green_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_blue_smallbrick 4',
	recipe = {
		{'minerdream:marble_blue_brick', 'minerdream:marble_blue_brick', ''},
		{'minerdream:marble_blue_brick', 'minerdream:marble_blue_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:marble_black_smallbrick 4',
	recipe = {
		{'minerdream:marble_black_brick', 'minerdream:marble_black_brick', ''},
		{'minerdream:marble_black_brick', 'minerdream:marble_black_brick', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_white_middle 3',
	recipe = {
		{'minerdream:marble_white', '', ''},
		{'minerdream:marble_white', '', ''},
		{'minerdream:marble_white', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_white_bottom 5',
	recipe = {
		{'', 'minerdream:marble_white', ''},
		{'', 'minerdream:marble_white', ''},
		{'minerdream:marble_white', 'minerdream:marble_white', 'minerdream:marble_white'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_white_top 5',
	recipe = {
		{'minerdream:marble_white', 'minerdream:marble_white', 'minerdream:marble_white'},
		{'', 'minerdream:marble_white', ''},
		{'', 'minerdream:marble_white', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_white_both 7',
	recipe = {
		{'minerdream:marble_white', 'minerdream:marble_white', 'minerdream:marble_white'},
		{'', 'minerdream:marble_white', ''},
		{'minerdream:marble_white', 'minerdream:marble_white', 'minerdream:marble_white'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_pink_middle 3',
	recipe = {
		{'minerdream:marble_pink', '', ''},
		{'minerdream:marble_pink', '', ''},
		{'minerdream:marble_pink', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_pink_bottom 5',
	recipe = {
		{'', 'minerdream:marble_pink', ''},
		{'', 'minerdream:marble_pink', ''},
		{'minerdream:marble_pink', 'minerdream:marble_pink', 'minerdream:marble_pink'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_pink_top 5',
	recipe = {
		{'minerdream:marble_pink', 'minerdream:marble_pink', 'minerdream:marble_pink'},
		{'', 'minerdream:marble_pink', ''},
		{'', 'minerdream:marble_pink', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_pink_both 7',
	recipe = {
		{'minerdream:marble_pink', 'minerdream:marble_pink', 'minerdream:marble_pink'},
		{'', 'minerdream:marble_pink', ''},
		{'minerdream:marble_pink', 'minerdream:marble_pink', 'minerdream:marble_pink'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_red_middle 3',
	recipe = {
		{'minerdream:marble_red', '', ''},
		{'minerdream:marble_red', '', ''},
		{'minerdream:marble_red', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_red_bottom 5',
	recipe = {
		{'', 'minerdream:marble_red', ''},
		{'', 'minerdream:marble_red', ''},
		{'minerdream:marble_red', 'minerdream:marble_red', 'minerdream:marble_red'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_red_top 5',
	recipe = {
		{'minerdream:marble_red', 'minerdream:marble_red', 'minerdream:marble_red'},
		{'', 'minerdream:marble_red', ''},
		{'', 'minerdream:marble_red', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_red_both 7',
	recipe = {
		{'minerdream:marble_red', 'minerdream:marble_red', 'minerdream:marble_red'},
		{'', 'minerdream:marble_red', ''},
		{'minerdream:marble_red', 'minerdream:marble_red', 'minerdream:marble_red'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_blue_middle 3',
	recipe = {
		{'minerdream:marble_blue', '', ''},
		{'minerdream:marble_blue', '', ''},
		{'minerdream:marble_blue', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_blue_bottom 5',
	recipe = {
		{'', 'minerdream:marble_blue', ''},
		{'', 'minerdream:marble_blue', ''},
		{'minerdream:marble_blue', 'minerdream:marble_blue', 'minerdream:marble_blue'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_blue_top 5',
	recipe = {
		{'minerdream:marble_blue', 'minerdream:marble_blue', 'minerdream:marble_blue'},
		{'', 'minerdream:marble_blue', ''},
		{'', 'minerdream:marble_blue', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_blue_both 7',
	recipe = {
		{'minerdream:marble_blue', 'minerdream:marble_blue', 'minerdream:marble_blue'},
		{'', 'minerdream:marble_blue', ''},
		{'minerdream:marble_blue', 'minerdream:marble_blue', 'minerdream:marble_blue'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_green_middle 3',
	recipe = {
		{'minerdream:marble_green', '', ''},
		{'minerdream:marble_green', '', ''},
		{'minerdream:marble_green', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_green_bottom 5',
	recipe = {
		{'', 'minerdream:marble_green', ''},
		{'', 'minerdream:marble_green', ''},
		{'minerdream:marble_green', 'minerdream:marble_green', 'minerdream:marble_green'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_green_top 5',
	recipe = {
		{'minerdream:marble_green', 'minerdream:marble_green', 'minerdream:marble_green'},
		{'', 'minerdream:marble_green', ''},
		{'', 'minerdream:marble_green', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_green_both 7',
	recipe = {
		{'minerdream:marble_green', 'minerdream:marble_green', 'minerdream:marble_green'},
		{'', 'minerdream:marble_green', ''},
		{'minerdream:marble_green', 'minerdream:marble_green', 'minerdream:marble_green'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_black_middle 3',
	recipe = {
		{'minerdream:marble_black', '', ''},
		{'minerdream:marble_black', '', ''},
		{'minerdream:marble_black', '', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_black_bottom 5',
	recipe = {
		{'', 'minerdream:marble_black', ''},
		{'', 'minerdream:marble_black', ''},
		{'minerdream:marble_black', 'minerdream:marble_black', 'minerdream:marble_black'},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_black_top 5',
	recipe = {
		{'minerdream:marble_black', 'minerdream:marble_black', 'minerdream:marble_black'},
		{'', 'minerdream:marble_black', ''},
		{'', 'minerdream:marble_black', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:pillar_marble_black_both 7',
	recipe = {
		{'minerdream:marble_black', 'minerdream:marble_black', 'minerdream:marble_black'},
		{'', 'minerdream:marble_black', ''},
		{'minerdream:marble_black', 'minerdream:marble_black', 'minerdream:marble_black'},

	}
})

--------------misc items-------------

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:vitamin 6",
	recipe = {"default:iron_lump", "minerdream:calcium_lump", "minerdream:potassium_lump", "minerdream:zinc_lump"},
})

------------spears---------------

minetest.register_craft({
	output = 'minerdream:spear_bronze',
	recipe = {
		{'', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'', 'group:stick', 'default:bronze_ingot'},
		{'group:stick', '', ''},
	}
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
minetest.register_craft({
	output = 'minerdream:bow_bronze',
	recipe = {
		{'', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', '', 'farming:cotton'},
		{'default:bronze_ingot', 'farming:cotton', ''},
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

