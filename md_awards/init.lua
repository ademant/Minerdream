md_awards  = {}
md_awards.path = minetest.get_modpath("md_awards")
md_awards.modname = minetest.get_current_modname()

dofile(md_awards.path .. "/awards.lua")
if treasures ~= nil then
	dofile(md_awards.path .. "/treasures.lua")
end

