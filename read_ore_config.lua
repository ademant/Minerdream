
local has_value = minerdream.has_value 
local ore_cols={
	col_num={"crack","scarcity","num_ores","clust_size","y_min","y_max","tier","lump_cooking_time"},
	groups_num={"has_dust","has_block","in_desert","has_block","has_brick",
		"has_bar","has_lump","has_bar_block","has_dust","has_spear","has_bow","has_arrow","has_pick",
		"has_axe","has_shovel","has_sword","has_helmet","has_chestplate","has_shield","has_leggings",
		"has_boots","drop_as_lump"}}
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
local local_craft_stack=function(input,output)

minetest.register_craft({
	output = output,
	recipe = {
		{input, input, },
		{input, input, },
	} })

minetest.register_craft({
	output = input.." 4",
	recipe = {{output}} })
end

local local_craft_brick = function(input,output)
	minetest.register_craft( {type = "shapeless",
		output = output,
		recipe = {input, "default:cobble"},})
end

local local_get_recipe=function(tool,material,stick)
	if stick == nil then
		stick="group:stick"
	end
	local out_recipe={}
	if tool == "spear" then
	out_recipe={
		{'', material, material},
		{'', stick, material},
		{stick, '', ''},}
	end
	if tool == "bow" then
		out_recipe = {
		{'', material, material},
		{material, '', stick},
		{material, stick, ''},}
	end
	if tool == "pick" then
		out_recipe = {
		{material, material, material},
		{'', stick, ''},
		{'', stick, ''},}
	end
	if tool == "axe" then
		out_recipe = {
		{material, material, ''},
		{material, stick, ''},
		{'', stick, ''},}
	end
	if tool == "shovel" then
		out_recipe = {
		{'', material, ''},
		{'', stick, ''},
		{'', stick, ''},}
	end
	if tool == "sword" then
		out_recipe = {
		{'', material, ''},
		{'', material, ''},
		{'', stick, ''},}
	end
	if tool == "helmet" then
		out_recipe = {
		{material, material, material},
		{material, '', material},}
	end
	if tool == "chestplate" then
		out_recipe = {
		{material, '', material},
		{material, material, material},
		{material, material, material},}
	end
	if tool == "leggings" then
	out_recipe = {
		{material, material, material},
		{material, '', material},
		{material, '', material},}
	end
	if tool == "boots" then
	out_recipe = {
		{material, '', material},
		{material, '', material},}
	end
	if tool == "shield" then
	out_recipe = {
		{material, material, material},
		{material, material, material},
		{'', material, ''},}
	end
	return out_recipe
end

for i,tdef in pairs(miner_definition) do
	local is_enabled = true
	if tdef.disabled_by_mod ~= nil then
		print(tdef.disabled_by_mod)
		print(dump2(minetest.get_modnames()))
		if minetest.get_modpath(tdef.disabled_by_mod)~=nil then
			is_enabled=false
		end
	end
	if (i ~= "default") and (is_enabled) then
		minerdream.items[i]={}
		local ore_modname=minerdream.modname
		if tdef.orig_modname then
			ore_modname=tdef.orig_modname
		end
		local needs_mapgen=false
		local mapgen_name=""
		-- register ores within stone
		if tdef.crack ~= nil then
			-- base config of ore found in normal stone
			local lump_name=ore_modname..":"..i
			if tdef.groups.drop_as_lump ~= nil then
				lump_name=lump_name.."_lump"
			end
			ore_def={description=i.." ore",
				name=minerdream.modname..":stone_with_"..i,
				groups={cracky=tdef.crack},
				tiles={"default_stone.png^"..minerdream.modname.."_"..i.."_ore.png"},
				drop=lump_name,
				sound=default.node_sound_stone_defaults(),
				}
			lump_def={description=i.." lump",
				name=lump_name,
				inventory_image=lump_name:gsub(":","_")..".png",
				stack_max=minerdream.lump_max_stack,
				}
			-- override existing ore?
			local to_override = false
			if tdef.overrides ~= nil then
				if minetest.registered_nodes[tdef.overrides] ~= nil then
					-- get drop item of defined ore
					temp_def=minetest.registered_nodes[tdef.overrides]
					ore_def.name=tdef.overrides
					ore_def.drop=temp_def.drop
					lump_def.name=temp_def.drop
					to_override = true
				end
			end
			local ore_name=ore_def.name
			local lump_name=lump_def.name
			if to_override then
				ore_def.name=nil
				lump_def.name=nil
				-- get cooking output of already defined lump
				local output, decremented_input = minetest.get_craft_result({ method = "cooking", width = 1, items = { ItemStack(lump_name) }})
				lump_def.ingot_name=output.item:get_name()
				tdef.ingot_name=output.item:get_name()
				minetest.override_item(ore_name,ore_def)
				minetest.override_item(lump_name,lump_def)
				lump_def.name=lump_name
				ore_def.name=ore_name
			else
				minetest.register_node(ore_def.name,ore_def)
				minetest.register_craftitem(lump_def.name,lump_def)
				
				-- if not already defined, then add mapgen parameter
				if tdef.scarcity ~= nil then
					needs_mapgen = true
					mapgen_name=ore_def.name
				end
			end
			local_item_insert(i,"ore_def",ore_def)
			local_item_insert(i,"lump_def",lump_def)
			-- define desert ores
			if tdef.groups.in_desert then
				desertore_def=table.copy(ore_def)
				desertore_def.name=minerdream.modname..":desertstone_with_"..i
				desertore_def.tiles={"default_desert_stone.png^"..minerdream.modname.."_"..i.."_ore.png"}
				local_item_insert(i,"desertore_def",desertore_def)
				minetest.register_node(desertore_def.name,desertore_def)
			end
		else
			-- if not already defined, then add mapgen parameter
			if tdef.scarcity ~= nil then
				needs_mapgen = true
				mapgen_name=minerdream.modname..":"..i
			end
		end
		
		-- define mapgeneration for ores
		if needs_mapgen then
			local map_def={ore_type    = "scatter",
						ore            = mapgen_name,
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
		
		-- define ore dust
		-- only makes sense if it can be grinded
		if tdef.groups.has_dust and minetest.get_modpath("technic") then
			local dust_def=local_create_def(i,"dust",tdef.groups.has_dust)
			dust_def.tiles={minerdream.modname.."_dust.png"}
			dust_def.inventory_image=minerdream.modname.."_dust.png"
			minetest.register_node(minerdream.modname..":"..i.."_dust",dust_def)
			if minerdream.items[i].lump_def then
				local lump_def=table.copy(minerdream.items[i].lump_def)
				local grind_time=math.ceil((tdef.lump_cooking_time or 64)/minerdream.dust_cooking_time_reduce)
				lump_def.grind_time=grind_time
				local_item_insert(i,"lump_def",lump_def)
				technic.register_grinder_recipe({input = {lump_def.name}, output = dust_def.name.." 2",time=grind_time})
				dust_def.grind_source=lump_def.name
			end
			local_item_insert(i,"dust_def",dust_def)
		end
		
		-- define ingot
		if tdef.groups.has_bar then
			local ingot_def=local_create_def(i,"ingot",tdef.groups.has_bar)
			ingot_def.inventory_image=minerdream.modname.."_"..i.."_bar.png"
			ingot_def.stack_max = minerdream.ingot_max_stack
			if tdef.ingot_name then --already defined and overridden with new image
				ingot_def.name=nil
				minetest.override_item(tdef.ingot_name,ingot_def)
				ingot_def.name=tdef.ingot_name
			else
				ingot_def.name=minerdream.modname..":"..i.."_ingot"
				minetest.register_craftitem(ingot_def.name,ingot_def)
			end
			
			-- if lump is defined and cooking time is given then register cooking recipe
			if minerdream.items[i].lump_def and tdef.lump_cooking_time then
				local lump_def=table.copy(minerdream.items[i].lump_def)
				lump_def.ingot_name=ingot_def.name
				ingot_def.lump_name=lump_def.name
				lump_def.cooking_time=tdef.lump_cooking_time
				  minetest.register_craft({type="cooking",
					cooktime=tdef.lump_cooking_time,
					output=ingot_def.name,
					recipe=lump_def.name,
				  })
				minerdream.items[i].lump_def=lump_def
			end
			-- if technic loaded and dust registered than add recipes for dust
			if tdef.groups.has_dust and minetest.get_modpath("technic") then
				if minerdream.items[i].dust_def then
					local dust_def=table.copy(minerdream.items[i].dust_def)
					local cooking_time=tdef.cooking_time or 64
					cooking_time=math.ceil(cooking_time/minerdream.dust_cooking_time_reduce)
					dust_def.cooking_time=cooking_time
					  minetest.register_craft({type="cooking",
						cooktime=cooking_time,
						output=ingot_def.name,
						recipe=dust_def.name,
					  })
					technic.register_grinder_recipe({input = {ingot_def.name}, output = dust_def.name,time=cooking_time})
					local_item_insert(i,"dust_def",dust_def)
				end
			end
			local_item_insert(i,"ingot_def",ingot_def)
		end

		-- define ore bricks (ore + cobble)
		if tdef.groups.has_brick then
			local brick_def=local_create_def(i,"brick",tdef.groups.has_brick)
			minetest.register_node(minerdream.modname..":"..i.."_brick",brick_def)
			brick_def.name=minerdream.modname..":"..i.."_brick"
			local_item_insert(i,"brick_def",brick_def)
			if minerdream.items[i].lump_def ~= nil then
				local lump_def=table.copy(minerdream.items[i].lump_def)
				local_craft_brick(lump_def.name,brick_def.name)
			end
		end
		
		-- define ore blocks (9 ores)
		if tdef.groups.has_block then
			local block_def=local_create_def(i,"block",tdef.groups.has_block)
			local_item_insert(i,"block_def",block_def)
			minetest.register_node(minerdream.modname..":"..i.."_block",block_def)
			local in_def=minerdream.items[i].ingot_def
			if in_def == nil and minerdream.items[i].lump_def ~= nil then
				local in_def=minerdream.items[i].lump_def
			end
			if in_def ~= nil then
				local_craft_block(in_def.name,minerdream.modname..":"..i.."_block")
			end
		end
		
		-- define bar stack
		if tdef.groups.has_bar_block then
			local bar_def=local_create_def(i,"bar_block",tdef.groups.has_bar_block)
			bar_def.paramtype="light"
			bar_def.is_ground_content=true
			bar_def.groups={snappy=tdef.groups.has_bar,dig_immediate=3}
			local_item_insert(i,"bar_block_def",bar_def)
			minetest.register_node(minerdream.modname..":"..i.."_bar_block",bar_def)
			local ingot_def=minerdream.items[i].ingot_def
			if ingot_def ~= nil then
				local_craft_stack(ingot_def.name,minerdream.modname..":"..i.."_bar_block")
			end
		end
		
		if minerdream.items[i].ingot_def ~= nil then
			local ingot_name=minerdream.items[i].ingot_def.name
			for _,tool in ipairs({"spear","pick","axe","sword","shovel","helmet","chestplate","leggings","boots","shield"}) do
				if tdef.groups["has_"..tool] ~= nil then
					local stick = "group:stick"
					if tdef.tool_stick ~= nil then
						stick=tdef.tool_stick
					end
					minetest.register_craft({
						output=minerdream.modname..":"..tool.."_"..i,
						recipe=local_get_recipe(tool,ingot_name,stick)
					})
				end
			end
			for _,tool in ipairs({"bow"}) do
				if tdef.groups["has_"..tool] ~= nil then
					local stick = "farming:cotton"
					if tdef.tool_cotton ~= nil then
						if tdef.tool_cotton == "steel_wire" then
							stick = minerdream.steel_wire
						else
							stick=tdef.tool_cotton
						end
					end
					minetest.register_craft({
						output=minerdream.modname..":"..tool.."_"..i,
						recipe=local_get_recipe(tool,ingot_name,stick)
					})
				end
			end
		end
		
	end
end

