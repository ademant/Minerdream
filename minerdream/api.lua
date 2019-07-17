local S=minerdream.intllib

local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",{col_num={"name"},})
local local_item_insert=function(name,ttype,def)
	if minerdream.items[name] == nil then
		minerdream.items[name] = {}
	end
	minerdream.items[name][ttype]=def
end

local local_create_def=function(name,type,cracky,tdef)
	local temp_def={description=S(name:gsub("^%l", string.upper)).." "..S(type:gsub("^%l", string.upper)),
				tiles={minerdream.modname.."_"..name.."_"..type..".png"},
				groups={cracky=cracky},
				sounds = default.node_sound_stone_defaults(),
				}
	if tdef.tier then
		temp_def.description=core.colorize("#00FF00", temp_def.description.."\n")..tdef.tier_string
	end
	return temp_def
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

-- register craft recipes for creating stacks
local local_craft_stack=function(input,output)
minetest.register_craft({
	output = output,
	recipe = {
		{input, input },
		{input, input },
	} })
minetest.register_craft({
	output = input.." 4",
	recipe = {{output}} })
end

-- register craft recipes for creating bricks
local local_craft_brick = function(input,output)
	minetest.register_craft( {type = "shapeless",
		output = output,
		recipe = {input, "default:cobble"},})
end

-- return recipes for different tools
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
	elseif tool == "bow" then
		out_recipe = {
		{'', material, material},
		{material, '', stick},
		{material, stick, ''},}
	elseif tool == "pick" then
		out_recipe = {
		{material, material, material},
		{'', stick, ''},
		{'', stick, ''},}
	elseif tool == "axe" then
		out_recipe = {
		{material, material, ''},
		{material, stick, ''},
		{'', stick, ''},}
	elseif tool == "shovel" then
		out_recipe = {
		{'', material, ''},
		{'', stick, ''},
		{'', stick, ''},}
	elseif tool == "sword" then
		out_recipe = {
		{'', material, ''},
		{'', material, ''},
		{'', stick, ''},}
	elseif tool == "helmet" then
		out_recipe = {
		{material, material, material},
		{material, '', material},}
	elseif tool == "chestplate" then
		out_recipe = {
		{material, '', material},
		{material, material, material},
		{material, material, material},}
	elseif tool == "leggings" then
	out_recipe = {
		{material, material, material},
		{material, '', material},
		{material, '', material},}
	elseif tool == "boots" then
	out_recipe = {
		{material, '', material},
		{material, '', material},}
	elseif tool == "shield" then
	out_recipe = {
		{material, material, material},
		{material, material, material},
		{'', material, ''},}
	else
		out_recipe={}
	end
	return out_recipe
end


minerdream.register_ore=function(i,tdef)
	minerdream.items[i]={}
	minerdream.itemdef[i]=tdef
	print(i)
	tdef.ore_modname=minerdream.modname
	if tdef.orig_modname then
		tdef.ore_modname=tdef.orig_modname
	end
	local needs_mapgen=false
	local mapgen_name=""
	tdef.tier_string=""
	tdef.tierd={}
	if tdef.tier then
		tdef.tierd=tier_definition[tostring(tdef.tier)]
		tdef.tier_string=core.colorize("#A0A0A0", "tier: "..tdef.tier.." ("..tdef.tierd.desc..")")
		minerdream.items[i].tierdef=table.copy(tier_definition[tostring(tdef.tier)])
	end
--		local tierd=tier_definition[tostring(tdef.tier)]
	-- register ores within stone
	if tdef.crack ~= nil then
		minerdream.register_ore_lump(i,tdef)
	else
		-- if not already defined, then add mapgen parameter
		if tdef.scarcity ~= nil then
			needs_mapgen = true
			mapgen_name=minerdream.modname..":"..i
		end
	end
	
	-- define mapgeneration for ores
	if needs_mapgen then
		minerdream.register_mapgen(i,tdef,mapgen_name)
	end
	
	if tdef.groups then
	-- define ore dust
	-- only makes sense if it can be grinded
		if tdef.groups.has_dust and minetest.get_modpath("technic") then
			minerdream.register_dust(i,tdef)
		end

		-- define ingot
		if tdef.groups.has_bar then
			minerdream.register_ingot(i,tdef)
		end
		
		-- define ore bricks (ore + cobble)
		if tdef.groups.has_brick then
			minerdream.register_brick(i,tdef)
		end
		
		-- define ore blocks (9 ores)
		if tdef.groups.has_block then
			minerdream.register_block(i,tdef)
		end
		
		-- define bar stack
		if tdef.groups.has_bar_block then
			minerdream.register_bar_block(i,tdef)
		end
	end
	
	-- define armor and weapons
	if minerdream.items[i].ingot_def ~= nil then
		minerdream.register_weapons(i,tdef)
	end
	
	for _,tool in pairs({"pick","axe","sword","shovel","spear"}) do
		if tdef[tool] ~= nil then
			local ttv=tdef[tool]
			local tdesc=core.colorize("#"..tdef.tierd.color, S(i:gsub("^%l", string.upper)).." "..S(tool:gsub("^%l", string.upper)).."\n")..
					core.colorize("#A0A0A0", "tier: "..tdef.tierd.name.." ("..tdef.tierd.desc..")")
			-- check special attributes of tool definition and use fallback definitions
			if tdef.uses then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Uses")..": "..tdef.uses)
			end
			if ttv.maxlevel then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Max. Level")..": "..ttv.maxlevel)
			end
			if ttv.fleshy then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Damage")..": "..ttv.fleshy)
			end
			tt_def={description=tdesc,
				inventory_image=minerdream.modname.."_"..tool.."_"..i..".png",
				range=tdef.range or 2,
				groups={weapon=1},
				tool_capabilities={max_drop_level = 1,groupcaps={},
					damage_groups = {fleshy = ttv.fleshy or 4},},
				}
			-- check if values for capabitlites exist
			for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
				if ttv[gc] ~= nil then
					local ml = 1
					if tdef.maxlevel ~=nil then
						ml=tdef.maxlevel
					end
					if ttv.maxlevel ~= nil then
						ml = ttv.maxlevel
					end
					tt_def.tool_capabilities.groupcaps[gc]={times=table.copy(ttv[gc]),
						uses=tdef.uses,maxlevel=ml}
				end
			end
			toolname=minerdream.modname..":"..tool.."_"..i
			minetest.register_tool(toolname,tt_def)
		end
	end
	for _,tool in pairs({"helmet","chestplate","boots","leggings","shields"}) do
		if tdef[tool] ~= nil then
			local ttv=tdef[tool]
			tdesc=core.colorize("#"..tdef.tierd.color, S(i:gsub("^%l", string.upper)).." "..S(tool:gsub("^%l", string.upper)).."\n")..
					core.colorize("#A0A0A0", "tier: "..tdef.tierd.name.." ("..tdef.tierd.desc..")")
			if ttv.fleshy then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Defense")..": "..ttv.fleshy)
			end
			if ttv.heal then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Heal")..": "..ttv.heal)
			end
			if ttv.speed then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Walking speed")..": "..(ttv.speed*100).."%")
			end
			if ttv.gravity then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Gravity")..": "..(ttv.gravity*100).."%")
			end
			if ttv.jump then
				tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Jump force")..": "..(ttv.jump*100).."%")
			end
			tt_def={description=tdesc,
				inventory_image=minerdream.modname.."_inv_"..tool.."_"..i..".png",
				damage_groups = {level = ttv.level or 2},
				armor_groups={fleshy=ttv.fleshy or 10},
				groups={armor_heal=ttv.heal,armor_use=ttv.use,
					physics_jump=ttv.jump,physics_speed=ttv.speed,physics_gravity=ttv.gravity}
				}
			for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
				tt_def.damage_groups[gc]=ttv[gc]
			end
			if tool == "helmet" then
				tt_def.groups.armor_head=1
			elseif tool == "chestplate" then
				tt_def.groups.armor_torso=1
			elseif tool == "leggings" then
				tt_def.groups.armor_legs=1
			elseif tool == "boots" then
				tt_def.groups.armor_feet=1
			elseif tool == "shields" then
				tt_def.groups.armor_shield=1
			end
				
			toolname=minerdream.modname..":"..tool.."_"..i
			armor:register_armor(toolname,tt_def)
		end
	end
end

minerdream.register_ore_lump=function(ore_name,tdef)
	-- base config of ore found in normal stone
	local lump_name=tdef.ore_modname..":"..ore_name
	if tdef.lump ~= nil then
		lump_name=tdef.lump.name or lump_name
	end
	if tdef.groups.drop_as_lump ~= nil then
		lump_name=lump_name.."_lump"
	end
	local ore_def={description=S(ore_name:gsub("^%l", string.upper)).." "..S("ore"),
		name=minerdream.modname..":stone_with_"..ore_name,
		groups={cracky=tdef.crack},
		tiles={"default_stone.png^"..minerdream.modname.."_"..ore_name.."_ore.png"},
		sound=default.node_sound_stone_defaults(),
		}
	-- group definitions for awards
	if tdef.groups.is_metall then
		ore_def.groups["metall"..tdef.groups.is_metall]=tdef.groups.is_metall
	end
	if tdef.groups.is_mineral then
		ore_def.groups["mineral"..tdef.groups.is_mineral]=tdef.groups.is_mineral
	end
	-- drops item
	if tdef.groups.has_no_drop == nil then
		ore_def.drop=lump_name
	end
	if tdef.stackmax then
		ore_def.stack_max = tdef.stackmax
	end
	if tdef.groups.is_gemstone ~= nil then
		ore_def.description=ore_name:gsub("^%l", string.upper)
		ore_def.paramtype="light"
		ore_def.drawtype = "mesh"
		ore_def.mesh = "gemstone_cubic_pillars.obj"
		ore_def.walkable = "true"
		ore_def.inventory_image = "minerdream_"..ore_name.."_gem.png"
		ore_def.tiles = {"minerdream_"..ore_name.."_rock.png"}
		ore_def.selection_box = {type = "fixed",
			fixed = {{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},},}
		ore_def.node_box = {type = "fixed",
			fixed = {{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},},}
	end
	local lump_def={description=S(ore_name:gsub("^%l", string.upper)).." "..S("lump"),
		name=lump_name,
		inventory_image=lump_name:gsub(":","_")..".png",
		stack_max=minerdream.lump_max_stack,
		}
	if tdef.lump ~= nil then
		lump_def.inventory_image=tdef.lump.inventory_image or lump_def.inventory_image
		lump_def.stack_max=tdef.lump.stack_max or lump_def.stack_max
	end
	if tdef.groups.is_lump_gemstone ~= nil then
		lump_def.drawtype="mesh"
		lump_def.mesh = ore_name..".obj"
		lump_def.walkable = "true"
		lump_def.inventory_image = "minerdream_"..ore_name.."_gem.png"
		lump_def.tiles = {"minerdream_"..ore_name..".png"}
		lump_def.paramtype = "light"
		lump_def.is_ground_content = true
		lump_def.groups={snappy=3,dig_immidiate=3}
		lump_def.selection_box = {type = "fixed",
			fixed = {{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},},}
		lump_def.node_box = {type = "fixed",
			fixed = {{-0.2, -0.5, -0.2, 0.2, -0.25, 0.2},},}
	end
	-- override existing ore?
	local to_override = false
	if tdef.overrides ~= nil then
		if minetest.registered_nodes[tdef.overrides] ~= nil then
			-- get drop item of defined ore
			local temp_def=minetest.registered_nodes[tdef.overrides]
			ore_def.name=tdef.overrides
			ore_def.drop=temp_def.drop
			lump_def.name=temp_def.drop
			local override_mod=tdef.overrides:split(":")[1]
			if override_mod ~=nil then
				ore_def.override_mod=override_mod
				lump_def.override_mod=override_mod
			end
			to_override = true
		end
	end
	if tdef.tier then
		ore_def.description=core.colorize("#00FF00", ore_def.description.."\n")..tdef.tier_string
		lump_def.description=core.colorize("#00FF00", lump_def.description.."\n")..tdef.tier_string
	end
	local orename=ore_def.name
	local lump_name=lump_def.name
	local needs_mapgen=false
	local mapgen_name=""
	if to_override then
		ore_def.name=nil
		lump_def.name=nil
		-- get cooking output of already defined lump
		local output, decremented_input = minetest.get_craft_result({ method = "cooking", width = 1, items = { ItemStack(lump_name) }})
		local override_ingot=output.item:get_name()
		if override_ingot ~= nil then
			lump_def.ingot_name=output.item:get_name()
			tdef.ingot_name=output.item:get_name()
			minerdream.items[ore_name].ingot_name=output.item:get_name()
		end
		minetest.override_item(orename,ore_def)
		if tdef.groups.has_no_lump == nil then
			minetest.override_item(lump_name,lump_def)
		end
		lump_def.name=lump_name
		ore_def.name=orename
	else
		minetest.register_node(ore_def.name,ore_def)
--				if tdef.groups.has_no_lump == nil then
		minetest.register_craftitem(lump_def.name,lump_def)
--				end
		-- if not already defined, then add mapgen parameter
		if tdef.scarcity ~= nil then
			needs_mapgen = true
			mapgen_name=ore_def.name
		end
	end
	local_item_insert(ore_name,"ore_def",ore_def)
--			if tdef.groups.has_no_lump == nil then
	local_item_insert(ore_name,"lump_def",lump_def)
--			end
	-- define desert ores
	if tdef.groups.in_desert then
		local desertore_def=table.copy(ore_def)
		desertore_def.name=minerdream.modname..":desertstone_with_"..ore_name
		desertore_def.tiles={"default_desert_stone.png^"..minerdream.modname.."_"..ore_name.."_ore.png"}
		local_item_insert(ore_name,"desertore_def",desertore_def)
		minetest.register_node(desertore_def.name,desertore_def)
	end
	if tdef.groups.has_nugget and tdef.groups.has_nugget>0 then
		local poor_def=table.copy(ore_def)
		local nugget_def=table.copy(lump_def)
		poor_def.description=S("Poor").." "..S(ore_name:gsub("^%l", string.upper))
--				poor_def.name=poor_def.name.."_poor"
		poor_def.name=minerdream.modname..":stone_with_"..ore_name.."_poor"
		poor_def.tiles={"default_stone.png^"..minerdream.modname.."_"..ore_name.."_poorore.png"}
		poor_def.groups.cracky=math.max(1,math.floor(tdef.crack/2)) -- poor ore should be easier to dig
		nugget_def.description=ore_name:gsub("^%l", string.upper).." Nugget"
		nugget_def.name=minerdream.modname..":"..ore_name.."_nugget"
		nugget_def.inventory_image=nugget_def.name:gsub(":","_")..".png"
		poor_def.drop=nugget_def.name
		minetest.register_node(poor_def.name,poor_def)
		minetest.register_craftitem(nugget_def.name,nugget_def)
		local_craft_stack(nugget_def.name,lump_def.name)
	end
end

minerdream.register_mapgen=function(ore_name,tdef,mapgen_name)
	local wherein={"default:stone"}
	if tdef.groups.in_desert ~= nil then -- check, if ore can be found in desert stone
		if minetest.registered_items["default:desert_stone"] ~= nil then
			wherein={"default:stone","default:desert_stone"}
		end
	end
	local map_def={ore_type    = "scatter",
				ore            = mapgen_name,
				wherein        = wherein,
				clust_scarcity = tdef.scarcity * tdef.scarcity * tdef.scarcity,
				clust_num_ores = tdef.num_ores or 1,
				clust_size     = tdef.clust_size or 1,
				y_min          = tdef.y_min or (-31000),
				y_max          = tdef.y_max or 0,
			}
	if tdef.groups.has_nugget and tdef.groups.has_nugget>0 then
		local poor_map_def=table.copy(map_def)
		poor_map_def.ore=mapgen_name.."_poor"
		minetest.register_ore(poor_map_def)
		map_def.clust_scarcity=map_def.clust_scarcity*tdef.groups.has_nugget
		map_def.clust_size=map_def.clust_size*tdef.groups.has_nugget
	end
	local_item_insert(ore_name,"map_def",map_def)
	minetest.register_ore(map_def)
end

minerdream.register_ingot=function(ore_name,tdef)
	local ingot_def=local_create_def(ore_name,"ingot",tdef.groups.has_bar,tdef)
	ingot_def.groups["metal"]=tdef.tier or 1 -- setting metal group
	ingot_def.inventory_image=minerdream.modname.."_"..ore_name.."_ingot.png"
	ingot_def.stack_max = minerdream.ingot_max_stack
	if tdef.ingot_name then --already defined and overridden with new image
		if tdef.ingot_name == "" then
			ingot_def.name=minerdream.modname..":"..ore_name.."_ingot"
			minetest.register_craftitem(ingot_def.name,ingot_def)
		else
			ingot_def.name=nil
			minetest.override_item(tdef.ingot_name,ingot_def)
			minetest.register_alias(tdef.ingot_name,minerdream.modname..":"..ore_name.."_bar")
			ingot_def.name=tdef.ingot_name
		end
	else -- not yet defined
		ingot_def.name=minerdream.modname..":"..ore_name.."_ingot"
		minetest.register_craftitem(ingot_def.name,ingot_def)
	end
	-- if lump is defined and cooking time is given then register cooking recipe
	if minerdream.items[ore_name].lump_def and tdef.lump_cooking_time then
		local lump_def=table.copy(minerdream.items[ore_name].lump_def)
		lump_def.ingot_name=ingot_def.name
		ingot_def.lump_name=lump_def.name
		lump_def.cooking_time=tdef.lump_cooking_time
		-- check, if cooking recipe already registered
		local output, decremented_input = minetest.get_craft_result({ method = "cooking", width = 1, items = { ItemStack(lump_def.name) }})
		if output.item:get_name() ~= ingot_def.name then
			print(ingot_def.name)
			print(lump_def.name)
			minetest.register_craft({type="cooking",
				cooktime=tdef.lump_cooking_time,
				output=ingot_def.name,
				recipe=lump_def.name,
			})
			minerdream.items[ore_name].lump_def=lump_def
		end
	end
	-- if technic loaded and dust registered than add recipes for dust
	if tdef.groups.has_dust and minetest.get_modpath("technic") then
		if minerdream.items[ore_name].dust_def then
			local dust_def=table.copy(minerdream.items[ore_name].dust_def)
			local cooking_time=tdef.cooking_time or 64
			cooking_time=math.ceil(cooking_time/minerdream.dust_cooking_time_reduce)
			dust_def.cooking_time=cooking_time
			print(ingot_def.name)
			print(dust_def.name)
			  minetest.register_craft({type="cooking",
				cooktime=cooking_time,
				output=ingot_def.name,
				recipe=dust_def.name,
			  })
			technic.register_grinder_recipe({input = {ingot_def.name}, output = dust_def.name,time=cooking_time})
			local_item_insert(ore_name,"dust_def",dust_def)
		end
	end
	local_item_insert(ore_name,"ingot_def",ingot_def)
end

minerdream.register_brick=function(ore_name,tdef)
	local brick_def=local_create_def(ore_name,"brick",tdef.groups.has_brick,tdef)
	minetest.register_node(minerdream.modname..":"..ore_name.."_brick",brick_def)
	brick_def.name=minerdream.modname..":"..ore_name.."_brick"
	local_item_insert(ore_name,"brick_def",brick_def)
	if minerdream.items[ore_name].lump_def ~= nil then
		local lump_def=table.copy(minerdream.items[ore_name].lump_def)
		local_craft_brick(lump_def.name,brick_def.name)
	end
end

minerdream.register_block=function(ore_name,tdef)
	local block_def=local_create_def(ore_name,"block",tdef.groups.has_block,tdef)
	local_item_insert(ore_name,"block_def",block_def)
	minetest.register_node(minerdream.modname..":"..ore_name.."_block",block_def)
	local in_def=minerdream.items[ore_name].ingot_def
	if in_def == nil and minerdream.items[ore_name].lump_def ~= nil then
		local in_def=minerdream.items[ore_name].lump_def
	end
	if in_def ~= nil then
		local_craft_block(in_def.name,minerdream.modname..":"..ore_name.."_block")
	end
end

minerdream.register_bar_block=function(ore_name,tdef)
	local bar_def=local_create_def(ore_name,"bar_block",tdef.groups.has_bar_block,tdef)
	bar_def.paramtype="light"
	bar_def.is_ground_content=true
	bar_def.groups={snappy=tdef.groups.has_bar,dig_immediate=3}
	local_item_insert(ore_name,"bar_block_def",bar_def)
	minetest.register_node(minerdream.modname..":"..ore_name.."_bar_block",bar_def)
	local ingot_def=minerdream.items[ore_name].ingot_def
	if ingot_def ~= nil then
		local_craft_stack(ingot_def.name,minerdream.modname..":"..ore_name.."_bar_block")
	end
end

minerdream.register_weapons=function(ore_name,tdef)
	local ingot_name=minerdream.items[ore_name].ingot_def.name
	for _,tool in ipairs(minerdream.tools_to_register) do
		if tdef.groups["has_"..tool] ~= nil then
			local stick = "group:stick"
			if tool == "bow" then -- for bows use stick for cotton or steel-wire
				stick = "farming:cotton"
				if tdef.tool_cotton ~= nil then
					if tdef.tool_cotton == "steel_wire" then
						stick = minerdream.steel_wire
					else
						stick=tdef.tool_cotton
					end
				end
			else
				if tdef.tool_stick ~= nil then
					stick=tdef.tool_stick
				end
			end
			minetest.register_craft({
				output=minerdream.modname..":"..tool.."_"..ore_name,
				recipe=local_get_recipe(tool,ingot_name,stick)
			})
		end
	end
end

minerdream.register_dust=function(ore_name,tdef)
	local dust_def=local_create_def(ore_name,"dust",tdef.groups.has_dust,tdef)
	dust_def.tiles={minerdream.modname.."_"..ore_name.."_dust.png"}
	dust_def.inventory_image=minerdream.modname.."_"..ore_name.."_dust.png"
	local overridden = false
	
	-- check, if dust is already defined
	if minerdream.items[ore_name].lump_def then
		local lumpdef=minerdream.items[ore_name].lump_def
		if lumpdef.override_mod ~= nil then
			local override_dust=lumpdef.override_mod..":"..ore_name.."_dust"
			if minetest.registered_items[override_dust] ~= nil then
				-- override existing dust items
				overridden = true
				minetest.register_node(":"..override_dust,dust_def)
			end
		end
	end
	-- if not defined, register node and grinding recipe
	if not overridden then
		minetest.register_node(minerdream.modname..":"..ore_name.."_dust",dust_def)
		if minerdream.items[ore_name].lump_def then
			local lump_def=table.copy(minerdream.items[ore_name].lump_def)
			local grind_time=math.ceil((tdef.lump_cooking_time or 64)/minerdream.dust_cooking_time_reduce)
			lump_def.grind_time=grind_time
			local_item_insert(ore_name,"lump_def",lump_def)
			technic.register_grinder_recipe({input = {lump_def.name}, output = dust_def.name.." 2",time=grind_time})
			dust_def.grind_source=lump_def.name
		end
		local_item_insert(ore_name,"dust_def",dust_def)
	end
end
