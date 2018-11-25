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


minetest.register_craft({
	type = "cooking",
	cooktime = 2,
	output = "minerdream:potassium_bar",
	recipe = "minerdream:potassium_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 2,
	output = "minerdream:calcium_bar",
	recipe = "minerdream:calcium_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 4,
	output = "minerdream:nickel_bar",
	recipe = "minerdream:nickel_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 4,
	output = "minerdream:lead_bar",
	recipe = "minerdream:lead_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 4,
	output = "minerdream:zinc_bar",
	recipe = "minerdream:zinc_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 8,
	output = "minerdream:silver_bar",
	recipe = "minerdream:silver_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 8,
	output = "minerdream:lead_bar",
	recipe = "minerdream:lead_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 32,
	output = "minerdream:aluminum_bar",
	recipe = "minerdream:aluminum_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 16,
	output = "minerdream:platinum_bar",
	recipe = "minerdream:platinum_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 32,
	output = "minerdream:cobalt_bar",
	recipe = "minerdream:cobalt_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 32,
	output = "minerdream:ruthenium_bar",
	recipe = "minerdream:ruthenium_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 64,
	output = "minerdream:tantalum_bar",
	recipe = "minerdream:tantalum_lump",
})

minetest.register_craft({
	type = "cooking",
	cooktime = 64,
	output = "minerdream:rhodium_bar",
	recipe = "minerdream:rhodium_lump",
})

--------------lapis----------------

minetest.register_craft({
	output = 'minerdream:lapislazuli_block',
	recipe = {
		{'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump'},
		{'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump'},
		{'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump', 'minerdream:lapislazuli_lump'},
	}
})

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

minetest.register_craft({
	output = 'minerdream:onyx_block',
	recipe = {
		{'minerdream:onyx', 'minerdream:onyx', 'minerdream:onyx'},
		{'minerdream:onyx', 'minerdream:onyx', 'minerdream:onyx'},
		{'minerdream:onyx', 'minerdream:onyx', 'minerdream:onyx'},
	}
})

minetest.register_craft({
	output = 'minerdream:onyx 9',
	recipe = {
		{'minerdream:onyx_block'},
	}
})


minetest.register_craft({
	output = 'minerdream:aquamarine_block',
	recipe = {
		{'minerdream:aquamarine', 'minerdream:aquamarine', 'minerdream:aquamarine'},
		{'minerdream:aquamarine', 'minerdream:aquamarine', 'minerdream:aquamarine'},
		{'minerdream:aquamarine', 'minerdream:aquamarine', 'minerdream:aquamarine'},
	}
})

minetest.register_craft({
	output = 'minerdream:aquamarine 9',
	recipe = {
		{'minerdream:aquamarine_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:spinel_block',
	recipe = {
		{'minerdream:spinel', 'minerdream:spinel', 'minerdream:spinel'},
		{'minerdream:spinel', 'minerdream:spinel', 'minerdream:spinel'},
		{'minerdream:spinel', 'minerdream:spinel', 'minerdream:spinel'},
	}
})

minetest.register_craft({
	output = 'minerdream:spinel 9',
	recipe = {
		{'minerdream:spinel_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:garnet_block',
	recipe = {
		{'minerdream:garnet', 'minerdream:garnet', 'minerdream:garnet'},
		{'minerdream:garnet', 'minerdream:garnet', 'minerdream:garnet'},
		{'minerdream:garnet', 'minerdream:garnet', 'minerdream:garnet'},
	}
})

minetest.register_craft({
	output = 'minerdream:garnet 9',
	recipe = {
		{'minerdream:garnet_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:jade_block',
	recipe = {
		{'minerdream:jade', 'minerdream:jade', 'minerdream:jade'},
		{'minerdream:jade', 'minerdream:jade', 'minerdream:jade'},
		{'minerdream:jade', 'minerdream:jade', 'minerdream:jade'},
	}
})

minetest.register_craft({
	output = 'minerdream:jade 9',
	recipe = {
		{'minerdream:jade_block'},
	}
})


minetest.register_craft({
	output = 'minerdream:amethyst_block',
	recipe = {
		{'minerdream:amethyst', 'minerdream:amethyst', 'minerdream:amethyst'},
		{'minerdream:amethyst', 'minerdream:amethyst', 'minerdream:amethyst'},
		{'minerdream:amethyst', 'minerdream:amethyst', 'minerdream:amethyst'},
	}
})

minetest.register_craft({
	output = 'minerdream:amethyst 9',
	recipe = {
		{'minerdream:amethyst_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:topaz_block',
	recipe = {
		{'minerdream:topaz', 'minerdream:topaz', 'minerdream:topaz'},
		{'minerdream:topaz', 'minerdream:topaz', 'minerdream:topaz'},
		{'minerdream:topaz', 'minerdream:topaz', 'minerdream:topaz'},
	}
})

minetest.register_craft({
	output = 'minerdream:topaz 9',
	recipe = {
		{'minerdream:topaz_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:rhodium_block',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:rhodium_bar 9',
	recipe = {
		{'minerdream:rhodium_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:tantalum_block',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:tantalum_bar 9',
	recipe = {
		{'minerdream:tantalum_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:ruthenium_block',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:ruthenium_bar 9',
	recipe = {
		{'minerdream:ruthenium_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:cobalt_block',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:cobalt_bar 9',
	recipe = {
		{'minerdream:cobalt_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:platinum_block',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:platinum_bar 9',
	recipe = {
		{'minerdream:platinum_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:aluminum_block',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:aluminum_bar 9',
	recipe = {
		{'minerdream:aluminum_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:zinc_block',
	recipe = {
		{'minerdream:zinc_bar', 'minerdream:zinc_bar', 'minerdream:zinc_bar'},
		{'minerdream:zinc_bar', 'minerdream:zinc_bar', 'minerdream:zinc_bar'},
		{'minerdream:zinc_bar', 'minerdream:zinc_bar', 'minerdream:zinc_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:zinc_bar 9',
	recipe = {
		{'minerdream:zinc_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:lead_block',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:lead_bar 9',
	recipe = {
		{'minerdream:lead_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:brass_block',
	recipe = {
		{'minerdream:brass_bar', 'minerdream:brass_bar', 'minerdream:brass_bar'},
		{'minerdream:brass_bar', 'minerdream:brass_bar', 'minerdream:brass_bar'},
		{'minerdream:brass_bar', 'minerdream:brass_bar', 'minerdream:brass_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:brass_bar 9',
	recipe = {
		{'minerdream:brass_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:silver_block',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:silver_bar 9',
	recipe = {
		{'minerdream:silver_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:potassium_block',
	recipe = {
		{'minerdream:potassium_bar', 'minerdream:potassium_bar', 'minerdream:potassium_bar'},
		{'minerdream:potassium_bar', 'minerdream:potassium_bar', 'minerdream:potassium_bar'},
		{'minerdream:potassium_bar', 'minerdream:potassium_bar', 'minerdream:potassium_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:potassium_bar 9',
	recipe = {
		{'minerdream:potassium_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:calcium_block',
	recipe = {
		{'minerdream:calcium_bar', 'minerdream:calcium_bar', 'minerdream:calcium_bar'},
		{'minerdream:calcium_bar', 'minerdream:calcium_bar', 'minerdream:calcium_bar'},
		{'minerdream:calcium_bar', 'minerdream:calcium_bar', 'minerdream:calcium_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:calcium_bar 9',
	recipe = {
		{'minerdream:calcium_block'},
	}
})

minetest.register_craft({
	output = 'minerdream:nickel_block',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
	}
})

minetest.register_craft({
	output = 'minerdream:nickel_bar 9',
	recipe = {
		{'minerdream:nickel_block'},
	}
})

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

------------gemstone bricks-------------------

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:onyx_brick",
	recipe = {"minerdream:onyx", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:spinel_brick",
	recipe = {"minerdream:spinel", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:aquamarine_brick",
	recipe = {"minerdream:aquamarine", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:garnet_brick",
	recipe = {"minerdream:garnet", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:jade_brick",
	recipe = {"minerdream:jade", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:topaz_brick",
	recipe = {"minerdream:topaz", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:amethyst_brick",
	recipe = {"minerdream:amethyst", "default:cobble"},
})

-----------metal bricks--------------

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:rhodium_brick",
	recipe = {"minerdream:rhodium_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:tantalum_brick",
	recipe = {"minerdream:tantalum_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:ruthenium_brick",
	recipe = {"minerdream:ruthenium_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:cobalt_brick",
	recipe = {"minerdream:cobalt_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:platinum_brick",
	recipe = {"minerdream:platinum_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:aluminum_brick",
	recipe = {"minerdream:aluminum_lump", "default:cobble"},
})


minetest.register_craft({
	output = 'minerdream:brass_brick',
	recipe = {
		{'', 'minerdream:brass_nugget', ''},
		{'minerdream:brass_nugget', 'default:cobble', 'minerdream:brass_nugget'},
		{'', 'minerdream:brass_nugget', ''},
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:copper_brick",
	recipe = {"default:copper_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:tin_brick",
	recipe = {"default:tin_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:iron_brick",
	recipe = {"default:iron_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:gold_brick",
	recipe = {"default:gold_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:zinc_brick",
	recipe = {"minerdream:zinc_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:lead_brick",
	recipe = {"minerdream:lead_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:nickel_brick",
	recipe = {"minerdream:nickel_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:calcium_brick",
	recipe = {"minerdream:calcium_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:potassium_brick",
	recipe = {"minerdream:potassium_lump", "default:cobble"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "minerdream:silver_brick",
	recipe = {"minerdream:silver_lump", "default:cobble"},
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

minetest.register_craft({
	output = 'minerdream:spear_steel',
	recipe = {
		{'', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'group:stick', 'default:steel_ingot'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_lead',
	recipe = {
		{'', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'', 'group:stick', 'minerdream:lead_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_stainlesssteel',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'', 'group:stick', 'minerdream:stainlesssteel_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_gold',
	recipe = {
		{'', 'default:gold_ingot', 'default:gold_ingot'},
		{'', 'group:stick', 'default:gold_ingot'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_diamond',
	recipe = {
		{'', 'default:diamond', 'default:diamond'},
		{'', 'group:stick', 'default:diamond'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_mese',
	recipe = {
		{'', 'default:mese_crystal', 'default:mese_crystal'},
		{'', 'group:stick', 'default:mese_crystal'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_nickel',
	recipe = {
		{'', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'', 'group:stick', 'minerdream:nickel_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_silver',
	recipe = {
		{'', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'', 'group:stick', 'minerdream:silver_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_aluminum',
	recipe = {
		{'', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'', 'group:stick', 'minerdream:aluminum_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_platinum',
	recipe = {
		{'', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'', 'group:stick', 'minerdream:platinum_bar'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_cobalt',
	recipe = {
		{'', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'', 'minerdream:steelstick', 'minerdream:cobalt_bar'},
		{'minerdream:steelstick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_flint',
	recipe = {
		{'', 'default:flint', 'default:flint'},
		{'', 'group:stick', 'default:flint'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_ruthenium',
	recipe = {
		{'', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'', 'minerdream:steelstick', 'minerdream:ruthenium_bar'},
		{'minerdream:steelstick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_tantalum',
	recipe = {
		{'', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'', 'minerdream:expensivestick', 'minerdream:tantalum_bar'},
		{'minerdream:expensivestick', '', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:spear_rhodium',
	recipe = {
		{'', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'', 'minerdream:expensivestick', 'minerdream:rhodium_bar'},
		{'minerdream:expensivestick', '', ''},
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
	output = 'minerdream:bow_tin',
	recipe = {
		{'', 'default:tin_ingot', 'default:tin_ingot'},
		{'default:tin_ingot', '', 'farming:cotton'},
		{'default:tin_ingot', 'farming:cotton', ''},
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

minetest.register_craft({
	output = 'minerdream:bow_steel',
	recipe = {
		{'', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'farming:cotton'},
		{'default:steel_ingot', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_lead',
	recipe = {
		{'', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', '', 'farming:cotton'},
		{'minerdream:lead_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_stainlesssteel',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', '', 'farming:cotton'},
		{'minerdream:stainlesssteel_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_gold',
	recipe = {
		{'', 'default:gold_ingot', 'default:gold_ingot'},
		{'default:gold_ingot', '', 'farming:cotton'},
		{'default:gold_ingot', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_mese',
	recipe = {
		{'', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', '', 'farming:cotton'},
		{'default:mese_crystal', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_diamond',
	recipe = {
		{'', 'default:diamond', 'default:diamond'},
		{'default:diamond', '', 'farming:cotton'},
		{'default:diamond', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_nickel',
	recipe = {
		{'', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', '', 'farming:cotton'},
		{'minerdream:nickel_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_silver',
	recipe = {
		{'', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', '', 'farming:cotton'},
		{'minerdream:silver_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_aluminum',
	recipe = {
		{'', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', '', 'farming:cotton'},
		{'minerdream:aluminum_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_platinum',
	recipe = {
		{'', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', '', 'farming:cotton'},
		{'minerdream:platinum_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_cobalt',
	recipe = {
		{'', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', '', 'farming:cotton'},
		{'minerdream:cobalt_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_ruthenium',
	recipe = {
		{'', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', '', 'farming:cotton'},
		{'minerdream:ruthenium_bar', 'farming:cotton', ''},
	}
})


minetest.register_craft({
	output = 'minerdream:bow_tantalum',
	recipe = {
		{'', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', '', 'farming:cotton'},
		{'minerdream:tantalum_bar', 'farming:cotton', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:bow_rhodium',
	recipe = {
		{'', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', '', 'farming:cotton'},
		{'minerdream:rhodium_bar', 'farming:cotton', ''},
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

-----------------------tools------------------

minetest.register_craft({
	output = 'minerdream:pick_nickel',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_nickel',
	recipe = {
		{'', 'minerdream:nickel_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_nickel',
	recipe = {
		{'', 'minerdream:nickel_bar', ''},
		{'', 'minerdream:nickel_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_nickel',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', ''},
		{'minerdream:nickel_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_nickel',
	recipe = {
		{'', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'', 'group:stick', 'minerdream:nickel_bar'},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = 'minerdream:pick_silver',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_silver',
	recipe = {
		{'', 'minerdream:silver_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_silver',
	recipe = {
		{'', 'minerdream:silver_bar', ''},
		{'', 'minerdream:silver_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_silver',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', ''},
		{'minerdream:silver_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_silver',
	recipe = {
		{'', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'', 'group:stick', 'minerdream:silver_bar'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_gold',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_gold',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_gold',
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'', 'default:gold_ingot', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_gold',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', ''},
		{'default:gold_ingot', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_gold',
	recipe = {
		{'', 'default:gold_ingot', 'default:gold_ingot'},
		{'', 'group:stick', 'default:gold_ingot'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_lead',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_lead',
	recipe = {
		{'', 'minerdream:lead_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_lead',
	recipe = {
		{'', 'minerdream:lead_bar', ''},
		{'', 'minerdream:lead_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_lead',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', ''},
		{'minerdream:lead_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_lead',
	recipe = {
		{'', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'', 'group:stick', 'minerdream:lead_bar'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_stainlesssteel',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_stainlesssteel',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', ''},
		{'', 'minerdream:stainlesssteel_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', ''},
		{'minerdream:stainlesssteel_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_stainlesssteel',
	recipe = {
		{'', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'', 'group:stick', 'minerdream:stainlesssteel_bar'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_aluminum',
	recipe = {
		{'', 'minerdream:aluminum_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_aluminum',
	recipe = {
		{'', 'minerdream:aluminum_bar', ''},
		{'', 'minerdream:aluminum_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', ''},
		{'minerdream:aluminum_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_aluminum',
	recipe = {
		{'', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'', 'group:stick', 'minerdream:aluminum_bar'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_platinum',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_platinum',
	recipe = {
		{'', 'minerdream:platinum_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_platinum',
	recipe = {
		{'', 'minerdream:platinum_bar', ''},
		{'', 'minerdream:platinum_bar', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_platinum',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', ''},
		{'minerdream:platinum_bar', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_platinum',
	recipe = {
		{'', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'', 'group:stick', 'minerdream:platinum_bar'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_flint',
	recipe = {
		{'default:flint', 'default:flint', 'default:flint'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_flint',
	recipe = {
		{'', 'default:flint', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_flint',
	recipe = {
		{'', 'default:flint', ''},
		{'', 'default:flint', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_flint',
	recipe = {
		{'default:flint', 'default:flint', ''},
		{'default:flint', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_flint',
	recipe = {
		{'', 'default:flint', 'default:flint'},
		{'', 'group:stick', 'default:flint'},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_cobalt',
	recipe = {
		{'', 'minerdream:cobalt_bar', ''},
		{'', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_cobalt',
	recipe = {
		{'', 'minerdream:cobalt_bar', ''},
		{'', 'minerdream:cobalt_bar', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', ''},
		{'minerdream:cobalt_bar', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_cobalt',
	recipe = {
		{'', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'', 'minerdream:steelstick', 'minerdream:cobalt_bar'},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_ruthenium',
	recipe = {
		{'', 'minerdream:ruthenium_bar', ''},
		{'', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_ruthenium',
	recipe = {
		{'', 'minerdream:ruthenium_bar', ''},
		{'', 'minerdream:ruthenium_bar', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', ''},
		{'minerdream:ruthenium_bar', 'minerdream:steelstick', ''},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_ruthenium',
	recipe = {
		{'', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'', 'minerdream:steelstick', 'minerdream:ruthenium_bar'},
		{'', 'minerdream:steelstick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_tantalum',
	recipe = {
		{'', 'minerdream:tantalum_bar', ''},
		{'', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_tantalum',
	recipe = {
		{'', 'minerdream:tantalum_bar', ''},
		{'', 'minerdream:tantalum_bar', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', ''},
		{'minerdream:tantalum_bar', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_tantalum',
	recipe = {
		{'', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'', 'minerdream:expensivestick', 'minerdream:tantalum_bar'},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:pick_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:shovel_rhodium',
	recipe = {
		{'', 'minerdream:rhodium_bar', ''},
		{'', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:sword_rhodium',
	recipe = {
		{'', 'minerdream:rhodium_bar', ''},
		{'', 'minerdream:rhodium_bar', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', ''},
		{'minerdream:rhodium_bar', 'minerdream:expensivestick', ''},
		{'', 'minerdream:expensivestick', ''},
	}
})

minetest.register_craft({
	output = 'minerdream:axe_rhodium',
	recipe = {
		{'', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'', 'minerdream:expensivestick', 'minerdream:rhodium_bar'},
		{'', 'minerdream:expensivestick', ''},
	}
})

-------------------armor-------------

minetest.register_craft({
	output = 'minerdream:helmet_nickel',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_nickel',
	recipe = {
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_nickel',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_nickel',
	recipe = {
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', '', 'minerdream:nickel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_nickel',
	recipe = {
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'minerdream:nickel_bar', 'minerdream:nickel_bar', 'minerdream:nickel_bar'},
		{'', 'minerdream:nickel_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_silver',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_silver',
	recipe = {
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_silver',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_silver',
	recipe = {
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', '', 'minerdream:silver_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_silver',
	recipe = {
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'minerdream:silver_bar', 'minerdream:silver_bar', 'minerdream:silver_bar'},
		{'', 'minerdream:silver_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_lead',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_lead',
	recipe = {
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_lead',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_lead',
	recipe = {
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', '', 'minerdream:lead_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_lead',
	recipe = {
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'minerdream:lead_bar', 'minerdream:lead_bar', 'minerdream:lead_bar'},
		{'', 'minerdream:lead_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', '', 'minerdream:aluminum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_aluminum',
	recipe = {
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'minerdream:aluminum_bar', 'minerdream:aluminum_bar', 'minerdream:aluminum_bar'},
		{'', 'minerdream:aluminum_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', '', 'minerdream:stainlesssteel_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_stainlesssteel',
	recipe = {
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar', 'minerdream:stainlesssteel_bar'},
		{'', 'minerdream:stainlesssteel_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_platinum',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_platinum',
	recipe = {
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_platinum',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_platinum',
	recipe = {
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', '', 'minerdream:platinum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_platinum',
	recipe = {
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'minerdream:platinum_bar', 'minerdream:platinum_bar', 'minerdream:platinum_bar'},
		{'', 'minerdream:platinum_bar', ''},

	}
})


minetest.register_craft({
	output = 'minerdream:helmet_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', '', 'minerdream:cobalt_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_cobalt',
	recipe = {
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'minerdream:cobalt_bar', 'minerdream:cobalt_bar', 'minerdream:cobalt_bar'},
		{'', 'minerdream:cobalt_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', '', 'minerdream:ruthenium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_ruthenium',
	recipe = {
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar', 'minerdream:ruthenium_bar'},
		{'', 'minerdream:ruthenium_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', '', 'minerdream:tantalum_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_tantalum',
	recipe = {
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'minerdream:tantalum_bar', 'minerdream:tantalum_bar', 'minerdream:tantalum_bar'},
		{'', 'minerdream:tantalum_bar', ''},

	}
})

minetest.register_craft({
	output = 'minerdream:helmet_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:chestplate_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:leggings_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:boots_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', '', 'minerdream:rhodium_bar'},

	}
})

minetest.register_craft({
	output = 'minerdream:shield_rhodium',
	recipe = {
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'minerdream:rhodium_bar', 'minerdream:rhodium_bar', 'minerdream:rhodium_bar'},
		{'', 'minerdream:rhodium_bar', ''},

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

