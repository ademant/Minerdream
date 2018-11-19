
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
		for tool in pairs({"pick"}) do
			if tooldef[tool] ~= nil then
				local ttv=tooldef[tool]
				tt_def={description=i.." "..tool,
					inventory_image=minderdream.modname.."_"..tool.."_"..i..".png",
					range=tooldef.range or 2,
					tool_capabilities={max_drop_level = 1},
					damage_groups = {fleshy = ttv.fleshy or 4},
					}
minetest.register_tool('minerdream:pick_rhodium', {
		description = "".. core.colorize("#00FF00", "rhodium pickaxe\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 5.0 \n")..core.colorize("#A0A0A0", "attack interval: 0.75 "),
	wield_scale = {x=1.55,y=1.55,z=1.2},
	inventory_image = "minerdream_pick_rhodium.png",
	range = 5.0,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[6]=6.00, [5]=4.00, [4]=3.00, [1]=1.25, [2]=0.5, [3]=0.20}, uses=105, maxlevel=3},
			crumbly={times={[1]=0.6, [2]=0.25, [3]=0.10}, uses=105, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})
			end
		end
	end
end

