
local has_value = basic_functions.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local tool_cols={
	col_num={"range","uses"},
	as_numeric=1,
}
local tool_definition = basic_functions.import_csv(minerdream.path.."/tools.txt",tool_cols)
--print(dump2(tool_definition))


for i,tdef in pairs(tool_definition) do
	if (i ~= "default") and (minerdream.items[i] ~= nil) then
		idef=table.copy(minerdream.items[i])
		local tooldef={}
		for col in pairs(tdef) do
			tooldef=basic_functions.parse_tree(tooldef,col,tdef[col])
		end
		for _,tool in pairs({"pick","axe","sword","shovel","spear"}) do
			if tooldef[tool] ~= nil then
				local ttv=tooldef[tool]
				tdesc=core.colorize("#"..idef.tierdef.color, i.." "..tool.."\n")..
						core.colorize("#A0A0A0", "tier: "..idef.tierdef.name.." ("..idef.tierdef.desc..")")
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
--				tt_def={description=i.." "..tool,
					inventory_image=minerdream.modname.."_"..tool.."_"..i..".png",
					range=tooldef.range or 2,
					tool_capabilities={max_drop_level = 1,groupcaps={},
						damage_groups = {fleshy = ttv.fleshy or 4},},
--		damage_groups = {fleshy=6.25},
					}
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

