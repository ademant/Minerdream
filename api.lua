
minerdream.register_lump = function(ldef)
	local tier=1
	if ldef.tier then
		tier = ldef.tier
	end
	tdef=tier_definition[tier]
	local stack_max=minerdream.max_stack
	if ldef.max_stack then
		stack_max=ldef.max_stack
	end
	lump_def={
		name=minetest.get_current_modname()..":"..ldef.name.."_lump",
		description=""..core.colorize(tdef.color,ldef.name.." lump\n")..core.colorize("#A0A0A0","tier: "..tier.." ("..tdef.desc..")")
		inventory_image=minetest.get_current_modname().."_"..ldef.name.."_lump.png",
		stack_max=stack_max,
		}
	minetest.register_craftitem(lump_def.name,lump_def)
	
end
