local S=minerdream.intllib

local has_value = basic_functions.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",tier_cols)

local ore_configs=minetest.get_dir_list(minerdream.path..'/config')
for i,oc in pairs(ore_configs) do
	ore=string.split(oc,'.')[1]
	local inconfig=basic_functions.read_file(minerdream.path..'/config/'..oc)
	local json_conf=minetest.parse_json(inconfig)
	minerdream.register_ore(ore,json_conf)
end
