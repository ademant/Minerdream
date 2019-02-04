

minetest.register_craft({
	output = "technic:battery",
	recipe = {
		{"group:wood",         "minerdream:lithium_dust",   "group:wood"},
		{"basic_materials:steel_strip", "homedecor:oil_extract", "basic_materials:steel_strip"},
		{"group:wood",         "minerdream:cobalt_dust",   "group:wood"},
	}
})

