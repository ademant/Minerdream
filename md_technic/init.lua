md_technic  = {}
md_technic.path = minetest.get_modpath("md_technic")
md_technic.modname = minetest.get_current_modname()

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- start loading from "..minetest.get_modpath(minetest.get_current_modname()))
-- Load files

-- import settingtypes.txt
basic_functions.import_settingtype(md_technic.path .. "/settingtypes.txt")

dofile(md_technic.path .. "/config.lua")
dofile(md_technic.path .. "/furnace.lua")
dofile(md_technic.path .. "/smelter.lua")
if technic ~= nil then
	dofile(md_technic.path .. "/batteries.lua")
end

minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded ")
