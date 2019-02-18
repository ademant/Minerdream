local S=minerdream.intllib

local has_value = basic_functions.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local ore_cols={
	col_num={"crack","scarcity","num_ores","clust_size","y_min","y_max","tier","lump_cooking_time"},
	groups_num={"has_dust","has_block","in_desert","has_block","has_brick","is_metall","is_mineral",
		"has_bar","has_lump","has_bar_block","has_dust","has_spear","has_bow","has_arrow","has_pick",
		"has_axe","has_shovel","has_sword","has_helmet","has_chestplate","has_shield","has_leggings",
		"has_boots","drop_as_lump","is_gemstone","is_lump_gemstone","has_no_drop","has_no_lump","has_nugget",
		"in_desertstone"}}
local miner_definition = basic_functions.import_csv(minerdream.path.."/ores.txt",ore_cols)

if miner_definition["default"] ~= nil then
	default_ore = miner_definition["default"]
	local test_values = {}
	-- check, which numeric columns exist in default entry
	for i,d in pairs(ore_cols.col_num) do
		if default_ore[d] ~= nil then
			table.insert(test_values,1,d)
		end
	end

	-- check for each ore, if value can be copied from default entry
	for i,tdef in pairs(miner_definition) do
		if tdef.name ~= default_ore.name then
			for j,colu in pairs(test_values) do
				if tdef[colu] == nil then
					miner_definition[tdef.name][colu] = default_ore[colu]
				end
			end
		end
	end
end

for i,tdef in pairs(miner_definition) do
	local is_enabled = true
	if tdef.disabled_by_mod ~= nil then
		if basic_functions.has_value(minetest.get_modnames(),tdef.disabled_by_mod) then
			is_enabled=false
		end
	end
	if (i ~= "default") and (is_enabled) then
		local starttime=os.clock()
		minerdream.register_ore(i,tdef)
		print("minerdream registering "..i.." in "..(math.floor(1000000*(os.clock()-starttime))/1000).." milliseconds")
	else
		print("minerdream: "..i.." not enabled")
	end
end


