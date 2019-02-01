
local viscosity=1

minerdream.ingot_stack_max =  tonumber(minetest.settings:get("minerdream.ingot_stack_max")) or 250
minerdream.lump_stack_max =  tonumber(minetest.settings:get("minerdream.lump_stack_max")) or 999
minerdream.dust_cooking_time_reduce =  tonumber(minetest.settings:get("minerdream.dust_cooking_time_reduce")) or 2
minerdream.smelter_refractory_duration =  tonumber(minetest.settings:get("minerdream.smelter_refractory_duration")) or 5000
minerdream.smelter_min_burntime=  tonumber(minetest.settings:get("minerdream.smelter_min_burntime")) or 30
minerdream.smelter_speedup =  tonumber(minetest.settings:get("minerdream.smelter_speedup")) or 1.5

minerdream.steel_wire="minerdream:steel_wire"
if minetest.get_modpath("basic_materials") == nil then
	dofile(minerdream.path .. "/steel_wire.lua")
else
	minerdream.steel_wire="basic_materials:steel_wire"
end
