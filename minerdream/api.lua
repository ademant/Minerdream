local S=minerdream.intllib

local agroup={helmet="armor_head",chestplate="armor_torso",leggings="armor_legs",boots="armor_feet",shield="armor_shield"}
local orelump={ore="lump",poorore="nugget"}

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
	if minerdream.items[i] == nil then
		local ore_name=tdef.name or i
		tdef.ore_name=ore_name
		tdef.ore_modname=minerdream.modname
		tdef.tier_string=""
		tdef.tierd={}
		if tdef.tier then
			tdef.tierd=tier_definition[tostring(tdef.tier)]
			tdef.tier_string=core.colorize("#A0A0A0", "tier: "..tdef.tier.." ("..tdef.tierd.desc..")")
			tdef.tierdef=table.copy(tier_definition[tostring(tdef.tier)])
		end
		minerdream.items[ore_name]=tdef

		for o,l in pairs(orelump) do
			-- register only ore
			if tdef[o] ~= nil and tdef[l] == nil then
				tdef[o].ore_name=ore_name
				tdef[o].lump_name=ore_name
				minerdream.register_node_ore(tdef,tdef[o],l)
				minerdream.register_node_mapgen(tdef,tdef[o])
			end
			-- register if ore and lump is defined
			if tdef[o] ~= nil and tdef[l] ~= nil then
				-- register ore
				if tdef[o] ~= nil then
					tdef[o].ore_name=ore_name.."_"..o
					tdef[o].lump_name=tdef[o].ore_name
					if tdef[l] ~= nil then
						tdef[o].lump_name=tdef[l].lump_name or ore.."_"..l
						tdef[l].lump_name=tdef[o].lump_name
					end
					minerdream.register_node_ore(tdef,tdef[o],l)
					minerdream.register_node_mapgen(tdef,tdef[o])
				end
				--register lump, if needed
				if (tdef[o].lump_name ~= tdef[o].ore_name) and (tdef[l] ~= nil) then
					if tdef[l].lump_name == nil then
						tdef[l].lump_name=tdef[o].lump_name
					else
						if tdef[l].lump_name ~= tdef[o].lump_name then
							tdef[l].lump_name = tdef[o].lump_name
						end
					end
					if tdef[l].lump_node_name == nil then
						tdef[l].lump_node_name=tdef[o].lump_node_name
					end
					tdef[l].ore_name=tdef[o].ore_name
					minerdream.register_node_lump(tdef,tdef[l])
				end
			end
		end
		if tdef.nugget ~= nil and tdef.lump ~= nil then
			local_craft_stack(tdef.nugget.lump_node_name,tdef.lump.lump_node_name)
		end
		
		if tdef.ingot ~= nil then
			minerdream.register_ingot(tdef,tdef.ingot)
		end
		
		if tdef.block ~= nil then
			minerdream.register_block(tdef)
		end
	-- define ore dust
	-- only makes sense if it can be grinded
		if tdef.dust~= nil and minetest.get_modpath("technic") and technic ~=nil then
			minerdream.register_dust(tdef,tdef.dust)
		end
		
		if tdef.tools ~= nil then
			minerdream.register_tools(tdef,tdef.tools)
		end
		
		if tdef["3d_armor"] ~= nil  then
			minerdream.register_3d_armor(tdef,tdef["3d_armor"])
		end
		
		if tdef.fuel ~= nil then
			if tdef.fuel.burntime ~= nil then
				
			end
		end
--		print(dump(tdef))
	end
end

minerdream.register_node_lump=function(tdef,ldef)
	if ldef.lump_name ~= nil then
		local node_name=ldef.node_name or tdef.ore_modname..":"..ldef.lump_name
		ldef.node_name=node_name
		
		local lump_def={description=S(ldef.lump_name:gsub("^%l", string.upper):gsub("_"," ")),
			name=node_name,
			inventory_image=ldef.inventory_image or node_name:gsub(":","_")..".png"
			}
		minetest.register_craftitem(lump_def.name,lump_def)
		if ldef.burntime ~= nil then
			minetest.register_craft({
				type = "fuel",
				recipe = lump_def.name,
				burntime = ldef.burntime})
		end
	end
end

minerdream.register_node_ore=function(tdef,odef,ltype)
-- register node for ore/poorore
	-- check, which node should be dropped: node itself or specific lump
	if odef.lump_name == nil then
		odef.lump_name=tdef.ore_name.."_"..ltype
	end
	if odef.lump_node_name == nil then
		odef.lump_node_name=tdef.ore_modname..":"..odef.lump_name
	end
	-- check, if some kind of stone is defined, where the ore can appear
	if odef.wherein == nil then
		odef.wherein="stone"
	end
	-- check, if inventory image is given
	if odef.inventory_image == nil then
		odef.inventory_image=minerdream.modname.."_"..odef.ore_name..".png"
	end
	-- check, if name of node is defined
	if odef.node_name == nil then
		odef.node_name=tdef.ore_modname..":"..odef.ore_name
	end
	local ore_def={description=S(odef.ore_name:gsub("^%l", string.upper):gsub("_"," ")),
		groups={cracky=odef.crack},
		sound=default.node_sound_stone_defaults()
		}
	if odef.lump_name ~= odef.ore_name then
		ore_def.drop=odef.lump_node_name
	end
	if tdef.groups.is_metall then
		ore_def.groups["metall"]=tdef.groups.is_metall
	end
	if tdef.groups.is_mineral then
		ore_def.groups["mineral"]=tdef.groups.is_mineral
	end
	if odef.stackmax then
		ore_def.stack_max=odef.stackmax
	end
	if tdef.tier then
		ore_def.description=core.colorize("#00FF00", ore_def.description.."\n")..tdef.tier_string
	end
	
	if tdef.groups.is_gemstone ~= nil then
		ore_def.description=ore_name:gsub("^%l", string.upper)
		ore_def.paramtype="light"
		ore_def.drawtype = "mesh"
		ore_def.mesh = "gemstone_cubic_pillars.obj"
		ore_def.walkable = "true"
		ore_def.tiles = {"minerdream_"..tdef.ore_name.."_rock.png"}
		ore_def.selection_box = {type = "fixed",
			fixed = {{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},},}
		ore_def.node_box = {type = "fixed",
			fixed = {{-0.4, -0.5, -0.4, 0.4, 0.0, 0.4},},}
	end
	
	-- for each stone, where the node can appear, add the name
	odef.node_name={}
	if odef.wherein==nil then
		odef.wherein={"stone"}
	end
	-- for each stone create definition table and register node
	for _,wi in ipairs(odef.wherein) do
		local oredef=table.copy(ore_def)
		oredef.name=minerdream.modname..":"..wi.."_with_"..odef.ore_name
		oredef.tiles={"default_"..wi..".png^"..odef.inventory_image}
		odef.node_name[wi]=oredef.name
		minetest.register_node(oredef.name,oredef)
	end
end

minerdream.register_ore_lump=function(ore_name,tdef)
	-- base config of ore found in normal stone
	local tore=tdef.ore
	local tlump=tdef.lump
	local lump_name=tlump.name or tdef.ore_modname..":"..ore_name
	if tdef.groups.drop_as_lump ~= nil then
		lump_name=lump_name.."_lump"
	end
	local torename=tore.inventory_image or minerdream.modname.."_"..ore_name.."_ore.png"
	local ore_def={description=S(ore_name:gsub("^%l", string.upper)).." "..S("ore"),
		name=minerdream.modname..":stone_with_"..ore_name,
		groups={cracky=tore.crack},
		tiles={"default_stone.png^"..torename},
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
	if tore.stackmax then
		ore_def.stack_max = tore.stackmax
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
		inventory_image=tdef.lump.inventory_image or lump_name:gsub(":","_")..".png"
		}
	if tlump.stackmax ~= nil then
		tlump_def.stack_max=tlump.stackmax
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
		desertore_def.tiles={"default_desert_stone.png^"..torename}
		local_item_insert(ore_name,"desertore_def",desertore_def)
		minetest.register_node(desertore_def.name,desertore_def)
	end
	if tdef.nugget ~= nil then
		local poor_def=table.copy(ore_def)
		local nugget_def=table.copy(lump_def)
		local poorimg=tdef.nugget.inventory_image or minerdream.modname.."_"..ore_name.."_poorore.png"
		poor_def.description=S("Poor").." "..S(ore_name:gsub("^%l", string.upper))
--				poor_def.name=poor_def.name.."_poor"
		poor_def.name=minerdream.modname..":stone_with_"..ore_name.."_poor"
		poor_def.tiles={"default_stone.png^"..poorimg}
		poor_def.groups.cracky= tdef.nugget.cracky or math.max(1,math.floor(tdef.crack/2)) -- poor ore should be easier to dig
		nugget_def.description=ore_name:gsub("^%l", string.upper).." Nugget"
		nugget_def.name=minerdream.modname..":"..ore_name.."_nugget"
		nugget_def.inventory_image=tdef.nugget.inventory_image or nugget_def.name:gsub(":","_")..".png"
		poor_def.drop=nugget_def.name
		minetest.register_node(poor_def.name,poor_def)
		minetest.register_craftitem(nugget_def.name,nugget_def)
		local_craft_stack(nugget_def.name,lump_def.name)
	end
end

minerdream.register_node_mapgen=function(tdef,odef)
-- register map generation of ore based on config
	local wherein={"default:stone"}
	if odef.wherein ~= nil then
		wherein={}
		for _,wi in pairs(odef.wherein) do
			local tscar=odef.scarcity or 13
			local map_def={ore_type    = "scatter",
				ore            = odef.node_name[wi],
				wherein        = wi,
				clust_scarcity = tscar * tscar * tscar,
				clust_num_ores = odef.num_ores or 1,
				clust_size     = odef.clust_size or 1,
				y_min          = odef.y_min or (-31000),
				y_max          = odef.y_max or 0,
			}
			minetest.register_ore(map_def)
		end
	end
end

minerdream.register_ingot=function(tdef,idef)
	if idef ~= nil then
		if idef.node_name == nil then
			idef.node_name=minerdream.modname..":"..tdef.name.."_ingot"
		end
		local ingot_def=local_create_def(tdef.name,"ingot",idef.crack or (tdef.ore.crack+1),tdef)
		ingot_def.groups["metal"]=tdef.tier or 1 -- setting metal group
		ingot_def.inventory_image=idef.inventory_image or idef.node_name:gsub(":","_") or minerdream.modname.."_"..tdef.name.."_ingot.png"
		ingot_def.stack_max = idef.maxstack or minerdream.ingot_max_stack
		minetest.register_craftitem(idef.node_name,ingot_def)
		-- if lump is defined and cooking time is given then register cooking recipe
		if tdef.lump then
			if tdef.lump.cooking_time == nil then
				tdef.lump.cooking_time = 2^tdef.tier
			end
			-- check, if cooking recipe already registered
			local output, decremented_input = minetest.get_craft_result({ method = "cooking", width = 1, items = { ItemStack(tdef.lump.node_name) }})
			if output.item:get_name() ~= idef.node_name then
				minetest.register_craft({type="cooking",
					cooktime=tdef.lump.cooking_time,
					output=idef.node_name,
					recipe=tdef.lump.node_name,
				})
			end
		end
	end
end

minerdream.register_block=function(tdef)
	local block_def=local_create_def(tdef.ore.ore_name,"block",1,tdef)
	if tdef.block.node_name == nil then
		tdef.block.node_name = minerdream.modname..":"..tdef.name.."_block"
		block_def.name=tdef.block.node_name
	end
	if tdef.block.inventory_image then
		block_def.tiles={tdef.block.inventory_image}
		block_def.inventory_image=tdef.block.inventory_image
	end
	print(dump(block_def))
	minetest.register_craftitem(tdef.block.node_name,block_def)
	local_craft_block(tdef.ingot.node_name,tdef.block.node_name)
end

minerdream.register_weapons=function(ore_name,tdef)
	local ingot_name=minerdream.items[ore_name].ingot_def.name
	for _,tool in ipairs(minerdream.tools_to_register) do
		if tdef[tool] ~= nil then
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
				if tdef[tool].tool_stick ~= nil then
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

minerdream.register_dust=function(tdef,ddef)
	if ddef~=nil and minetest.get_modpath("technic") and technic ~= nil then
		if ddef.node_name == nil then
			ddef.node_name = minerdream.modname..":"..tdef.name.."_dust"
		end
		local dust_def=local_create_def(tdef.name,"dust",ddef.crack or (tdef.ore.crack-1),tdef)
		dust_def.name=ddef.node_name
		local dustimg=ddef.inventory_image or ddef.node_name:gsub(":","_") or minerdream.modname.."_"..ore_name.."_dust.png"
		dust_def.tiles={dustimg}
		dust_def.inventory_image=dustimg
		
		minetest.register_node(ddef.node_name,dust_def)
		
		if tdef.lump.grind_time == nil then
			tdef.lump.grind_time=(tdef.lump.cooking_time or 64)/minerdream.dust_cooking_time_reduce
		end
		if ddef.cooking_time == nil then
			ddef.cooking_time = tdef.lump.grind_time
		end
		-- grind lump into dust
		technic.register_grinder_recipe({input = {tdef.lump.node_name}, output = ddef.node_name.." 2",time=tdef.lump.grind_time})

		-- grind ingot into dust
		if tdef.ingot ~= nil then
			if tdef.ingot.grind_time == nil then
				tdef.ingot.grind_time = tdef.lump.grind_time
				technic.register_grinder_recipe({input = {tdef.ingot.node_name}, output = ddef.node_name.." 2",time=tdef.ingot.grind_time})
			end
		end
		
		if tdef.ingot ~= nil then
			minetest.register_craft({type="cooking",
				cooktime=tdef.dust.cooking_time,
				output=tdef.ingot.node_name,
				recipe=tdef.dust.node_name,
			})
		end
	end
end

minerdream.register_tools=function(tdef,adef)
	if adef ~= nil then
		for _,tool in pairs({"pick","axe","sword","shovel","spear"}) do
			if adef[tool] ~= nil then
				local ttv=tdef.tools[tool]
				ttv.item_name=minerdream.modname..":"..tdef.name.."_"..tool
				for _,it in pairs({"range","maxlevel","tool_stick","fleshy","level","cracky","crumbly","choppy","snappy","use"}) do
					if ttv[it] == nil and adef[it] ~= nil then
						ttv[it] = adef[it]
					end
				end
				
				local fleshy=ttv.fleshy or tdef.tools.fleshy or 4
				local uses=ttv.use or tdef.tools.use
				local tdesc=core.colorize("#"..tdef.tierd.color, S(tdef.name:gsub("^%l", string.upper)).." "..S(tool:gsub("^%l", string.upper)).."\n")..
						core.colorize("#A0A0A0", "tier: "..tdef.tierd.name.." ("..tdef.tierd.desc..")")
				-- check special attributes of tool definition and use fallback definitions
				if uses then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Uses")..": "..uses)
				end
				if ttv.maxlevel then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Max. Level")..": "..ttv.maxlevel)
				end
				if ttv.fleshy then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Damage")..": "..fleshy)
				end
				local tt_def={description=tdesc,uses=uses,
					inventory_image=ttv.inventory_image or minerdream.modname.."_"..tool.."_"..tdef.name..".png",
					range=ttv.range or tdef.tools.range or 2,
					groups={weapon=1},
					tool_capabilities={max_drop_level = 1,groupcaps={},
						damage_groups = {fleshy = fleshy},},
					}
				-- check if values for capabitlites exist
				for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
					if ttv[gc] ~= nil then
						local ml = ttv.maxlevel or tdef.tools.maxlevel or 1
						tt_def.tool_capabilities.groupcaps[gc]={times=table.copy(ttv[gc]),
							uses=tdef.uses,maxlevel=ml}
					end
				end
				minetest.register_tool(ttv.item_name,tt_def)
				
				local stick = ttv.tool_stick or "group:stick"
				minetest.register_craft({
					output=ttv.item_name,
					recipe=local_get_recipe(tool,tdef.ingot.node_name,stick)
				})

			end
		end
	end
end

minerdream.register_3d_armor=function(tdef,adef)
	if adef ~= nil then
		for _,tool in pairs({"helmet","chestplate","boots","leggings","shield"}) do
			if adef[tool] ~= nil then
				local ttv=adef[tool]
				ttv.item_name=minerdream.modname..":"..tdef.name.."_"..tool
				for _,it in pairs({"fleshy","heal","speed","gravity","jump","level","cracky","crumbly","choppy","snappy","use"}) do
					if ttv[it] == nil and adef[it] ~= nil then
						ttv[it] = adef[it]
					end
				end
				local tdesc=core.colorize("#"..tdef.tierd.color, S(tdef.name:gsub("^%l", string.upper)).." "..S(tool:gsub("^%l", string.upper)).."\n")..
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
				local tt_def={description=tdesc,
					inventory_image=ttv.inventory_image or minerdream.modname.."_inv_"..tool.."_"..tdef.name..".png",
					damage_groups = {level = ttv.level or 2},
					armor_groups={fleshy=ttv.fleshy or 10},
					groups={armor_heal=ttv.heal,armor_use=ttv.use,
						physics_jump=ttv.jump,physics_speed=ttv.speed,physics_gravity=ttv.gravity}
					}
				for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
					tt_def.damage_groups[gc]=ttv[gc]
				end
				print(tool)
				print(agroup[tool])
				tt_def.groups[agroup[tool]]=1
					
				armor:register_armor(ttv.item_name,tt_def)

				local stick = ttv.tool_stick or "group:stick"
				minetest.register_craft({
					output=ttv.item_name,
					recipe=local_get_recipe(tool,tdef.ingot.node_name,stick)
				})

			end
		end
	end
end
