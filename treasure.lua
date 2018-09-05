minetest.register_node("minerdream:treasure1", {
		description = "".. core.colorize("#BFFFFF", "Wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)"),
	tiles = {"minerdream_treasure1.png"},
	is_ground_content = false,
	groups = {cracky = 3, choppy = 3},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'minerdream:dagger 1'},
				rarity = 25,
			},
			{
				items = {'minerdream:treasure2'},
				rarity = 15,
			},
			{
				items = {'default:wood 5'},
				rarity = 5,
			},
			{
				items = {'default:stick 5'},
				rarity = 5,
			},
			{
				items = {'default:torch 10'},
				rarity = 5,
			},
			{
				items = {'default:apple 3'},
				rarity = 5,
			},
			{
				items = {'minerdream:arrow 10'},
				rarity = 5,
			},
			{
				items = {'minerdream:shuriken 15'},
				rarity = 5,
			},
			{
				items = {'default:coal_lump 3'},
				rarity = 10,
			},
			{
				items = {'minerdream:potassium_lump 3'},
				rarity = 10,
			},
			{
				items = {'minerdream:calcium_lump 3'},
				rarity = 10,
			},
			{
				items = {'default:flint 2'},
				rarity = 10,
			},
			{
				items = {'minerdream:zinc_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:nickel_lump 3'},
				rarity = 15,
			},
			{
				items = {'default:iron_lump 3'},
				rarity = 15,
			},
			{
				items = {'default:copper_lump 3'},
				rarity = 15,
			},
			{
				items = {'default:tin_lump 3'},
				rarity = 15,
			},
			

		}
	},
	sounds = default.node_sound_wood_defaults(),

})

minetest.register_node("minerdream:treasure2", {
		description = "".. core.colorize("#00FFFF", "Sturdy wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)"),
	tiles = {"minerdream_treasure2.png"},
	is_ground_content = false,
	groups = {cracky = 2, choppy = 2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'minerdream:shortsword 1'},
				rarity = 25,
			},
			{
				items = {'minerdream:club 1'},
				rarity = 25,
			},
			{
				items = {'minerdream:grenade 1'},
				rarity = 5,
			},
			{
				items = {'minerdream:treasure3'},
				rarity = 25,
			},
			{
				items = {'minerdream:shuriken 25'},
				rarity = 5,
			},
			{
				items = {'default:tree 5'},
				rarity = 5,
			},
			{
				items = {'default:wood 5'},
				rarity = 5,
			},
			{
				items = {'default:torch 15'},
				rarity = 5,
			},
			{
				items = {'minerdream:vitamin 3'},
				rarity = 5,
			},
			{
				items = {'minerdream:potion_tiny 1'},
				rarity = 5,
			},
			{
				items = {'default:coal_lump 5'},
				rarity = 10,
			},
			{
				items = {'default:steel_ingot 3'},
				rarity = 10,
			},
			{
				items = {'default:ladder_wood 15'},
				rarity = 5,
			},
			{
				items = {'minerdream:lead_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:silver_lump 3'},
				rarity = 15,
			},
			{
				items = {'default:gold_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:lapislazuli_lump 4'},
				rarity = 11,
			},
			{
				items = {'default:mese_crystal 3'},
				rarity = 15,
			},
			{
				items = {'default:diamond 2'},
				rarity = 20,
			},
			{
				items = {'minerdream:arrow 15'},
				rarity = 5,
			},
			

		}
	},
	sounds = default.node_sound_wood_defaults(),

})

minetest.register_node("minerdream:treasure3", {
		description = "".. core.colorize("#40FF80", "Reinforced wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 4 (rare)"),
	tiles = {"minerdream_treasure3.png"},
	is_ground_content = false,
	groups = {cracky = 1, choppy = 1},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'minerdream:mace 1'},
				rarity = 25,
			},
			{
				items = {'minerdream:treasure4'},
				rarity = 30,
			},
			{
				items = {'minerdream:grenade 2'},
				rarity = 5,
			},
			{
				items = {'minerdream:throwing_knife 15'},
				rarity = 5,
			},
			{
				items = {'default:tree 5'},
				rarity = 5,
			},
			{
				items = {'default:torch 25'},
				rarity = 5,
			},
			{
				items = {'farming:bread 3'},
				rarity = 5,
			},
			{
				items = {'minerdream:potion_tiny 2'},
				rarity = 3,
			},
			{
				items = {'default:coal_lump 8'},
				rarity = 10,
			},
			{
				items = {'default:steel_ingot 5'},
				rarity = 10,
			},
			{
				items = {'minerdream:platinum_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:aluminum_lump 3'},
				rarity = 15,
			},
			{
				items = {'default:ladder_wood 20'},
				rarity = 5,
			},
			{
				items = {'minerdream:arrow 20'},
				rarity = 5,
			},
			

		}
	},
	sounds = default.node_sound_wood_defaults(),

})

minetest.register_node("minerdream:treasure4", {
		description = "".. core.colorize("#0040FF", "Well-reinforced wooden loot crate\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)"),
	tiles = {"minerdream_treasure4.png"},
	is_ground_content = false,
	groups = {cracky = 4, choppy = 1},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'minerdream:revolver'},
				rarity = 25,
			},
			{
				items = {'minerdream:claymore'},
				rarity = 20,
			},
			{
				items = {'minerdream:treasure5'},
				rarity = 20,
			},
			{
				items = {'minerdream:throwing_knife 25'},
				rarity = 5,
			},
			{
				items = {'minerdream:grenade 3'},
				rarity = 5,
			},
			{
				items = {'default:torch 35'},
				rarity = 5,
			},
			{
				items = {'farming:bread 5'},
				rarity = 5,
			},
			{
				items = {'minerdream:potion_lesser 1'},
				rarity = 3,
			},
			{
				items = {'default:coal_lump 10'},
				rarity = 10,
			},
			{
				items = {'minerdream:bituminous_coal 5'},
				rarity = 15,
			},
			{
				items = {'default:steel_ingot 8'},
				rarity = 10,
			},
			{
				items = {'minerdream:stainlesssteel_bar 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:cobalt_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:ruthenium_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:amethyst 1'},
				rarity = 15,
			},
			{
				items = {'minerdream:garnet 1'},
				rarity = 15,
			},
			{
				items = {'minerdream:jade 1'},
				rarity = 15,
			},
			{
				items = {'default:ladder_wood 25'},
				rarity = 5,
			},
			{
				items = {'minerdream:arrow 25'},
				rarity = 5,
			},
			{
				items = {'minerdream:bullet 25'},
				rarity = 7,
			},
			

		}
	},
	sounds = default.node_sound_wood_defaults(),

})

minetest.register_node("minerdream:treasure5", {
		description = "".. core.colorize("#00FF00", "Steel loot crate\n")..core.colorize("#A0A0A0", "tier: 6 (epic)"),
	tiles = {"minerdream_treasure5.png"},
	is_ground_content = false,
	groups = {cracky = 5},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'minerdream:shotgun'},
				rarity = 25,
			},
			{
				items = {'minerdream:katana'},
				rarity = 20,
			},
			{
				items = {'minerdream:treasure5'},
				rarity = 25,
			},
			{
				items = {'minerdream:throwing_knife 30'},
				rarity = 5,
			},
			{
				items = {'minerdream:grenade 4'},
				rarity = 5,
			},
			{
				items = {'default:torch 50'},
				rarity = 5,
			},
			{
				items = {'farming:bread 7'},
				rarity = 5,
			},
			{
				items = {'minerdream:potion_lesser 2'},
				rarity = 3,
			},
			{
				items = {'minerdream:bituminous_coal 8'},
				rarity = 10,
			},
			{
				items = {'default:steel_ingot 10'},
				rarity = 10,
			},
			{
				items = {'minerdream:stainlesssteel_bar 4'},
				rarity = 13,
			},
			{
				items = {'minerdream:rhodium_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:tantalum_lump 3'},
				rarity = 15,
			},
			{
				items = {'minerdream:onyx 1'},
				rarity = 15,
			},
			{
				items = {'minerdream:spinel 1'},
				rarity = 15,
			},
			{
				items = {'minerdream:topaz 1'},
				rarity = 15,
			},
			{
				items = {'minerdream:aquamarine 1'},
				rarity = 15,
			},
			{
				items = {'default:ladder_wood 30'},
				rarity = 5,
			},
			{
				items = {'minerdream:arrow 30'},
				rarity = 5,
			},
			{
				items = {'minerdream:bullet 30'},
				rarity = 7,
			},
			

		}
	},
	sounds = default.node_sound_wood_defaults(),

})



