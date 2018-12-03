minerdream  = {}
minerdream.path = minetest.get_modpath("minerdream")
minerdream.modname = minetest.get_current_modname()
minerdream.items={}

dofile(minerdream.path .. "/config.lua")
dofile(minerdream.path .. "/read_ore_config.lua")
dofile(minerdream.path .. "/read_tool_config.lua")
dofile(minerdream.path .. "/read_armor_config.lua")
dofile(minerdream.path .. "/items.lua")
dofile(minerdream.path .. "/overrides.lua")
dofile(minerdream.path .. "/blocks.lua")
dofile(minerdream.path .. "/generation.lua")
dofile(minerdream.path .. "/crafting.lua")
dofile(minerdream.path .. "/weapons.lua")
dofile(minerdream.path .. "/read_weapon_config.lua")
dofile(minerdream.path .. "/armor.lua")
dofile(minerdream.path .. "/treasure.lua")
dofile(minerdream.path .. "/experiments.lua")
--dofile(minerdream.path .. "/mobs.lua")
dofile(minerdream.path .. "/read_mobs_config.lua")

