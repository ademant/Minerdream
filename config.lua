
minerdream.max_stack = 999

local has_value = minerdream.has_value 
local tier_cols={
	col_num={"tier"},
}
local temp_tier_definition = minerdream.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local tier_definition={}
for _,line in pairs(temp_tier_definition) do
--	print(dump(line))
	tier_definition[tonumber(line.name)]=line
end

local ores_cols={
	col_num={"clust_num_ores","clust_size","ymin","ymax","clust_scarcity",
		"cooktime","tier","heal","use","jump","speed","gravity",
		"helmet_fleshy","chest_fleshy","legging_fleshy","boot_fleshy","shield_fleshy"},
	groups_num={"crack","dust","block","desert"}
}
local ores_definition = minerdream.import_csv(minerdream.path.."/config.txt",ores_cols)


for _,line in pairs(ores_definition) do
	if line.lump then
		minerdream.register_item(line,tier_definition,"lump")
	end
	if line.bar then
		minerdream.register_item(line,tier_definition,"bar")
	end
	if minetest.global_exists("armor") and armor.elements then
		if line.heal then
			minerdream.register_armor(line,tier_definition)
		end
	end
end
