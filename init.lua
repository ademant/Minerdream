minerdream  = {}
minerdream.path = minetest.get_modpath("minerdream")
minerdream.modname = minetest.get_current_modname()
minerdream.items={}

dofile(minerdream.path .. "/functions.lua")
dofile(minerdream.path .. "/config.lua")
dofile(minerdream.path .. "/api.lua")
dofile(minerdream.path .. "/read_config.lua")
dofile(minerdream.path .. "/items.lua")
dofile(minerdream.path .. "/tools.lua")
dofile(minerdream.path .. "/overrides.lua")
dofile(minerdream.path .. "/blocks.lua")
dofile(minerdream.path .. "/generation.lua")
dofile(minerdream.path .. "/crafting.lua")
dofile(minerdream.path .. "/weapons.lua")
dofile(minerdream.path .. "/armor.lua")
dofile(minerdream.path .. "/treasure.lua")
dofile(minerdream.path .. "/experiments.lua")
--dofile(minerdream.path .. "/mobs.lua")
dofile(minerdream.path .. "/awards.lua")

--print(dump(minerdream.items))
