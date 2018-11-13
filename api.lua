
local local_ore_register = function(modname,stonename,element,crack,itemname)
if itemname == nil then
	itemname = modname..":"..stonename.."_with_"..element
end
print(itemname)
minetest.register_node(itemname, {
--	description = S(element.." ore"),
	description = element.." ore",
	tiles = {"default_"..stonename:gsub("desert","desert_")..".png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = modname:gsub(":","")..':'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
end

function minerdream.ore_register(tdef)
	if tdef.overrides == nil then
		local_ore_register(minetest.get_current_modname(),"stone",tdef.name,tdef.crack)
		if tdef.groups.in_desert ~= nil then
			local_ore_register(minetest.get_current_modname(),"desertstone",tdef.name,tdef.crack)
		end
	else
		local modname = ":"..string.split(tdef.overrides,":")[1]
		print(modname)
		local_ore_register(modname,"stone",tdef.name,tdef.crack,":"..tdef.overrides)
	end
end
