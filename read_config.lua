
local has_value = minerdream.has_value 
local ore_cols={
	col_num={"crack"},
	groups_num={"has_dust","has_block","in_desert","has_block","has_brick","has_bar","has_bar_block"}}
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
--	print(i)
--	print(dump(tdef))
	if i ~= "default" then
		-- register ores within stone
		if tdef.crack ~= nil then
			-- base config
			ore_def={description=i.." ore",
				name=minerdream.modname..":stone_with_"..i,
				groups={cracky=tdef.crack},
				tiles={"default_stone.png^"..minerdream.modname.."_"..i.."_ore.png"},
				drop=minerdream.modname..":"..i.."_lump",
				sound=default.node_sound_stone_defaults(),
				}
				
			-- override existing ore?
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
			-- define desert ores
			if tdef.in_desert then
				desertore_def=table.copy(ore_def)
				desertore_def.name=minerdream.modname..":desertstone_with_"..i
				desertore_def.tiles={"default_desert_stone.png^"..minerdream.modname.."_"..i.."_ore.png"}
				if minerdream.items[i] == nil then
					minerdream.items[i] = {desertore_def = desertore_def}
				else
					minerdream.items[i].desertore_def=desertore_def
				end
				minetest.register_node(desertore_def.name,desertore_def)
			end
		end
		
		if tdef.groups.has_brick then
			local brick_def={description=i.." brick",
				tiles={minerdream.modname.."_"..i.."_brick.png"},
				groups = {cracky = tdef.groups.has_brick},
				sounds = default.node_sound_stone_defaults(),
				}
			if minerdream.items[i] == nil then
				minerdream.items[i] = {brick_def = brick_def}
			else
				minerdream.items[i].brick_def=brick_def
			end
			minetest.register_node(minerdream.modname..":"..i.."_block",brick_def)
		end
		
		if tdef.groups.has_block then
			local block_def={description=i.." block",
				tiles={minerdream.modname.."_"..i.."_block.png"},
				groups = {cracky = tdef.groups.has_block},
				sounds = default.node_sound_stone_defaults(),
				}
			if minerdream.items[i] == nil then
				minerdream.items[i] = {block_def = block_def}
			else
				minerdream.items[i].block_def=block_def
			end
			minetest.register_node(minerdream.modname..":"..i.."_block",block_def)
		end
		
		if tdef.groups.has_bar_block then
			local bar_def={description=i.." bar stack",
				drawtype="mesh",mesh="bars.obj",
				tiles={minerdream.modname.."_"..i.."_bar_block.png"},
				paramtype="light",
				is_ground_content = true,
				groups = {snappy=tdef.groups.has_bar,dig_immediate=3},
				}
			if minerdream.items[i] == nil then
				minerdream.items[i] = {bar_block_def = bar_def}
			else
				minerdream.items[i].bar_block_def=bar_def
			end
			minetest.register_node(minerdream.modname..":"..i.."_bar_block",bar_def)
			print(dump2(bar_def))
		end

	end
end

