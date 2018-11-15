
local has_value = minerdream.has_value 
local ore_cols={
	col_num={"crack","scarcity","num_ores","clust_size","y_min","y_max","tier"},
	groups_num={"has_dust","has_block","in_desert","has_block","has_brick","has_bar","has_lump","has_bar_block","has_dust"}}
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

local local_create_def=function(name,type,cracky)
	local temp_def={description=name.." "..type,
				tiles={minerdream.modname.."_"..name.."_"..type..".png"},
				groups={cracky=cracky},
				sounds = default.node_sound_stone_defaults(),
				}
	return temp_def
end
local local_item_insert=function(name,ttype,def)
	if minerdream.items[name] == nil then
		minerdream.items[name] = {}
	end
	minerdream.items[name][ttype]=def
end

for i,tdef in pairs(miner_definition) do
	if i ~= "default" then
		-- register ores within stone
		if tdef.crack ~= nil then
--		print(dump2(tdef))
			-- base config
			ore_def={description=i.." ore",
				name=minerdream.modname..":stone_with_"..i,
				groups={cracky=tdef.crack},
				tiles={"default_stone.png^"..minerdream.modname.."_"..i.."_ore.png"},
				drop=minerdream.modname..":"..i.."_lump",
				sound=default.node_sound_stone_defaults(),
				}
			lump_def={description=i.." lump",
				name=minerdream.modname..":"..i.."_lump",
				inventory_image=minerdream.modname.."_"..i.."_lump.png",
				stack_max=minerdream.lump_max_stack,
				}
			-- override existing ore?
			local to_override = false
			if tdef.overrides ~= nil then
				if minetest.registered_nodes[tdef.overrides] ~= nil then
					temp_def=minetest.registered_nodes[tdef.overrides]
					ore_def.name=tdef.overrides
					ore_def.drop=temp_def.drop
					lump_def.name=temp_def.drop
					to_override = true
				end
			end
			local_item_insert(i,"ore_def",ore_def)
			local_item_insert(i,"lump_def",lump_def)
			local ore_name=ore_def.name
			local lump_name=lump_def.name
			if to_override then
				ore_def.name=nil
				lump_def.name=nil
				local output, decremented_input = minetest.get_craft_result({ method = "cooking", width = 1, items = { ItemStack(lump_name) }})
				lump_def.ingot_name=output.item:get_name()
				tdef.ingot_name=output.item:get_name()
				minetest.override_item(ore_name,ore_def)
				minetest.override_item(lump_name,lump_def)
			else
				minetest.register_node(ore_def.name,ore_def)
				minetest.register_craftitem(lump_def.name,lump_def)
				
				-- if not already defined, then add mapgen parameter
				if tdef.scarcity ~= nil then
					local map_def={ore_type    = "scatter",
								ore            = ore_name,
								wherein        = "default:stone",
								clust_scarcity = tdef.scarcity * tdef.scarcity * tdef.scarcity,
								clust_num_ores = tdef.num_ores or 1,
								clust_size     = tdef.clust_size or 1,
								y_min          = tdef.y_min or (-31000),
								y_max          = tdef.y_max or 0,
							}
					
					local_item_insert(i,"map_def",map_def)
					minetest.register_ore(map_def)
				end
			end
			-- define desert ores
			if tdef.in_desert then
				desertore_def=table.copy(ore_def)
				desertore_def.name=minerdream.modname..":desertstone_with_"..i
				desertore_def.tiles={"default_desert_stone.png^"..minerdream.modname.."_"..i.."_ore.png"}
				local_item_insert(i,"desertore_def",desertore_def)
				minetest.register_node(desertore_def.name,desertore_def)
			end
		end
		
		-- define ore bricks (4 ores)
		if tdef.groups.has_brick then
			local brick_def=local_create_def(i,"brick",tdef.groups.has_brick)
			local_item_insert(i,"brick_def",brick_def)
			minetest.register_node(minerdream.modname..":"..i.."_brick",brick_def)
		end
		
		-- define ore blocks (9 ores)
		if tdef.groups.has_block then
			local block_def=local_create_def(i,"block",tdef.groups.has_block)
			local_item_insert(i,"block_def",block_def)
			minetest.register_node(minerdream.modname..":"..i.."_block",block_def)
		end
		
		-- define bar stack
		if tdef.groups.has_bar_block then
			local bar_def=local_create_def(i,"bar_stack",tdef.groups.has_bar_block)
			bar_def.paramtype="light"
			bar_def.is_ground_content=true
			bar_def.groups={snappy=tdef.groups.has_bar,dig_immediate=3}
			local_item_insert(i,"bar_stack_def",bar_def)
			minetest.register_node(minerdream.modname..":"..i.."_bar_stack",bar_def)
		end
		
		-- define ore dust
		if tdef.groups.has_dust then
			local dust_def=local_create_def(i,"dust",tdef.groups.has_dust)
			dust_def.tiles={minerdream.modname.."_dust.png"}
			dust_def.inventory_image={minerdream.modname.."_dust.png"}
			local_item_insert(i,"dust_def",dust_def)
			minetest.register_node(minerdream.modname..":"..i.."_dust",dust_def)
		end
		
		-- define ingot
		if tdef.groups.has_bar then
			local ingot_def={description=i.." ingot",
				name=minerdream.modname..":"..i.."_ingot",
				inventory_image=minerdream.modname.."_"..i.."_bar.png",
				stack_max = minerdream.ingot_max_stack,
			}
			if tdef.ingot_name then
				ingot_def.name=nil
				minetest.override_item(tdef.ingot_name,ingot_def)
				ingot_def.name=tdef.ingot_name
			else
				minetest.register_craftitem(ingot_def.name,ingot_def)
			end
			local_item_insert(i,"ingot_def",ingot_def)
		end
	end
end

