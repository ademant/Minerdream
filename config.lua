
minerdream.max_stack = 999

local has_value = minerdream.has_value 
local tier_cols={
	col_num={"tier"},
}
local tier_definition = minerdream.import_csv(minerdream.path.."/tiers.txt",tier_cols)

local ores_cols={
	col_num={"clust_num_ores","clust_size","ymin","ymax","clust_scarcity",
		"cooktime","tier","heal","use","jump","speed","gravity",
		"helmet_fleshy","chest_fleshy","legging_fleshy","boot_fleshy","shield_fleshy"},
	groups_num={"crack","dust","block","desert"}
}
local ores_definition = minerdream.import_csv(minerdream.path.."/config.txt",ores_cols)
