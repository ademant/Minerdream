md_technic  = {}
md_technic.path = minetest.get_modpath("md_technic")
md_technic.modname = minetest.get_current_modname()

dofile(md_technic.path .. "/furnace.lua")
dofile(md_technic.path .. "/smelter.lua")
