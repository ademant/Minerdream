
local has_value = basic_functions.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local tool_cols={
	col_num={"range","uses"},
	as_numeric=1,
}

-- reading config table
local tool_definition = basic_functions.import_csv(minerdream.path.."/tools.txt",tool_cols)


for i,tdef in pairs(tool_definition) do
	if (i ~= "default") and (minerdream.items[i] ~= nil) then
		idef=table.copy(minerdream.items[i])
		local tooldef={}
		for col in pairs(tdef) do
			tooldef=basic_functions.parse_tree(tooldef,col,tdef[col])
		end
		-- check specific tools/weapons
		for _,tool in pairs({"pick","axe","sword","shovel","spear"}) do
			if tooldef[tool] ~= nil then
				local ttv=tooldef[tool]
				tdesc=core.colorize("#"..idef.tierdef.color, i.." "..tool.."\n")..
						core.colorize("#A0A0A0", "tier: "..idef.tierdef.name.." ("..idef.tierdef.desc..")")
				-- check special attributes of tool definition and use fallback definitions
				if tooldef.uses then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0","Uses: "..tooldef.uses)
				end
				if ttv.maxlevel then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0","Max. Level: "..ttv.maxlevel)
				end
				if ttv.fleshy then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0","Damage: "..ttv.fleshy)
				end
				tt_def={description=tdesc,
					inventory_image=minerdream.modname.."_"..tool.."_"..i..".png",
					range=tooldef.range or 2,
					groups={weapon=1},
					tool_capabilities={max_drop_level = 1,groupcaps={},
						damage_groups = {fleshy = ttv.fleshy or 4},},
					}
				-- check if values for capabitlites exist
				for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
					if ttv[gc] ~= nil then
						local ml = 1
						if tooldef.maxlevel ~=nil then
							ml=tooldef.maxlevel
						end
						if ttv.maxlevel ~= nil then
							ml = ttv.maxlevel
						end
						tt_def.tool_capabilities.groupcaps[gc]={times=table.copy(ttv[gc]),
							uses=tooldef.uses,maxlevel=ml}
					end
				end
				toolname=minerdream.modname..":"..tool.."_"..i
				minetest.register_tool(toolname,tt_def)

			end
		end
	end
end

