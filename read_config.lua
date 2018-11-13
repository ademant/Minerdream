
local has_value = minerdream.has_value 
local ore_cols={
	col_num={"crack"},
	groups_num={"has_dust","has_block","in_desert"}}
local miner_definition = minerdream.import_csv(minerdream.path.."/ores.txt",ore_cols)

if miner_definition["default"] ~= nil then
	default_ore = miner_definition["default"]
	local test_values = {}
	-- check, which numeric columns exist in default entry
	for i,d in pairs(ore_cols.col_num) do
		if default_ore[d] ~= nil then
			table.insert(test_values,1,d)
		end
	end

	-- check for each crop, if value can be copied from default entry
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
	if i ~= "default" then
		if tdef.crack ~= nil then
			minerdream.ore_register(tdef)
		end
	end
end

