
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
			ore_def={description=tdef.name.." ore",
				name=minerdream.modname..":stone_with_"..tdef.name,
				groups={cracky=tdef.crack},
				tiles={"default_stone.png^"..minerdream.modname.."_"..tdef.name.."_ore.png"},
				drop=minerdream.modname..":"..tdef.name.."_lump",
				sound=default.node_sound_stone_defaults(),
				}
			local to_override = false
			if tdef.overrides ~= nil then
				if minetest.registered_nodes[tdef.overrides] ~= nil then
					temp_def=minetest.registered_nodes[tdef.overrides]
					ore_def.name=tdef.overrides
					ore_def.drop=temp_def.drop
					to_override = true
				end
			end
			if minerdream.items[i] == nil then
				minerdream.items[i] = {ore_def = ore_def}
			else
				minerdream.items[i].ore_def=ore_def
			end
			if to_override then
				local ore_name=ore_def.name
				ore_def.name=nil
				minetest.override_item(ore_name,ore_def)
			else
				minetest.register_node(ore_def.name,ore_def)
			end
			if tdef.in_desert then
				desertore_def=table.copy(ore_def)
				desertore_def.name=minerdream.modname..":desertstone_with_"..tdef.name
				desertore_def.tiles={"default_desert_stone.png^"..minerdream.modname.."_"..tdef.name.."_ore.png"}
				if minerdream.items[i] == nil then
					minerdream.items[i] = {desertore_def = desertore_def}
				else
					minerdream.items[i].desertore_def=desertore_def
				end
				minetest.register_node(desertore_def.name,desertore_def)
			end
		end
	end
end

--[[
minetest.register_node(itemname, {
--	description = S(element.." ore"),
	description = element.." ore",
	tiles = {"default_"..stonename:gsub("desert","desert_")..".png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = modname:gsub(":","")..':'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
]]
