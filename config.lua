
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
		"helmet_fleshy","chestplate_fleshy","leggings_fleshy","boots_fleshy","shield_fleshy","tool_range",
		"full_punch_intervall","wield_scale","pick_cracky_times","tool_uses","tool_maxlevel",
		"pick_crumbly_times","tool_fleshy","axe_choppy_times","axe_fleshy","sword_snappy",
		"sword_fleshy","shovel_crumbly_times","shovel_fleshy"},
	groups_num={"crack","dust","block","desert","pick","axe","sword","shovel"}
}
local ores_definition = minerdream.import_csv(minerdream.path.."/config.txt",ores_cols)


for _,line in pairs(ores_definition) do
	local modname=minetest.get_current_modname()
	line.modname=minetest.get_current_modname()
	if line.override then
		line.modname = ":"..line.override
	end
	if line.check_mods then
		if not minetest.get_modpath(line.check_mods) then
			if line.lump then
				minerdream.register_item(line,tier_definition,"lump")
			end
			if line.bar then
				minerdream.register_item(line,tier_definition,"bar")
			end
		else
			modname=line.check_mods
			line.modname=line.check_mods
		end
	end
	if minetest.global_exists("armor") and armor.elements then
		if line.heal then
			minerdream.register_armor(line,tier_definition)
		end
	end
	minerdream.register_tool(line,tier_definition)
end
