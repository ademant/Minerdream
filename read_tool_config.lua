
local has_value = minerdream.has_value 
local tool_cols={
	col_num={"range","uses"},
	as_numeric=1,
}
local tool_definition = minerdream.import_csv(minerdream.path.."/tools.txt",tool_cols)
--print(dump2(tool_definition))


minerdream.parse_tree=function(mat,ind,val)
	if string.find(ind,"_") == nil then
		mat[ind] = {}
		mat[ind] = tonumber(val)
	else
		local ind_split=string.split(ind,"_")
		local first=ind_split[1]
		local second=string.split(ind,"_")[2]
		if #ind_split > 2 then
			for n=3,#ind_split do
				second = second.."_"..ind_split[n]
			end
		end
		if mat[first] == nil then
			mat[first]={}
		end
		mat[first]=minerdream.parse_tree(mat[first],second,val)
	end
	return(mat)
end

for i,tdef in pairs(tool_definition) do
	if i ~= "default" then
		local tooldef={}
		for col in pairs(tdef) do
			tooldef=minerdream.parse_tree(tooldef,col,tdef[col])
		end
		for _,tool in pairs({"pick","axe","sword","shovel","spear"}) do
			if tooldef[tool] ~= nil then
				local ttv=tooldef[tool]
				tt_def={description=i.." "..tool,
					inventory_image=minerdream.modname.."_"..tool.."_"..i..".png",
					range=tooldef.range or 2,
					tool_capabilities={max_drop_level = 1},
					damage_groups = {fleshy = ttv.fleshy or 4},
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
						tt_def.tool_capabilities[gc]={times=table.copy(ttv[gc]),
							uses=tooldef.uses,max_level=ml}
					end
				end
				print(dump2(tt_def))
				toolname=minerdream.modname..":"..tool.."_"..i
				minetest.register_tool(toolname,tt_def)
			end
		end
	end
end

