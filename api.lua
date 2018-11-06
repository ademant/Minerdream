
minerdream.register_item = function(ldef,tier_definition,ltype)
	local tier=1
	if ldef.tier then
		tier = ldef.tier
	end
	local tdef=tier_definition[tier]
	local stack_max=minerdream.max_stack
	if ldef.max_stack then
		stack_max=ldef.max_stack
	end
	local lump_def={
		name=minetest.get_current_modname()..":"..ldef.name.."_"..ltype,
		description=""..core.colorize(tdef.color,ldef.name.." "..ltype.."\n")..core.colorize("#A0A0A0","tier: "..tier.." ("..tdef.desc..")"),
		inventory_image=minetest.get_current_modname().."_"..ldef.name.."_"..ltype..".png",
		stack_max=stack_max,
		}
--	print(dump(lump_def))
	minetest.register_craftitem(lump_def.name,lump_def)
	
end

local local_register_armor = function(aname,adef)
	adef.description=aname..core.colorize("#A0A0A0", "Defence: "..adef.armor_groups.fleshy.."\n")..
		core.colorize("#A0A0A0", "heal: "..(adef.groups.armor_heal or 0).." \n")..
		core.colorize("#A0A0A0", "walking speed "..(100*(adef.groups.physics_speed or 0)).."%\n")..
		core.colorize("#A0A0A0", "gravity "..(100*(adef.groups.physics_gravity or 0)).."%\n")..
		core.colorize("#A0A0A0", "jump force "..(100*(adef.groups.physics_jump or 0)).."%\n")
--	print(dump(adef))
	armor:register_armor(adef.name,adef)
end
minerdream.register_armor = function(adef,tier_definition)
	local tdef=tier_definition[adef.tier]
	local agroups={armor_heal=adef.heal,armor_use=adef.use,
		physics_jump=adef.jump,physics_speed=adef.speed,physics_gravity=adef.gravity}
	local desc=""..core.colorize("#A0A0A0","tier "..tdef.name.." ("..tdef.desc..")\n")
	local damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2}
	local modname=minetest.get_current_modname()
	local arm_trans={helmet="armor_head",chestplate="armor_torso",leggings="armor_legs",
		boots="armor_feet",shield="armor_shield"}
	print(dump(adef))
	for _,arm in ipairs({"helmet","chestplate","leggings","boots","shield"}) do
		print(arm.."_fleshy")
		if adef[arm.."_fleshy"] then
			local armdef={name=modname..":"..arm.."_"..adef.name,
			desc_name=adef.name.." "..arm,
			inventory_image=modname.."_inv_"..arm.."_"..adef.name..".png",
			groups={armor_heal=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity},
			armor_groups = {fleshy = adef[arm.."fleshy"]},
			damage_groups=damage_groups,
			}
			armdef.groups[arm_trans[arm]] = 1
			print(dump(armdef))
		end
	end
	if adef.helmet_fleshy then
		local helmet={
			name=modname..":helmet_"..adef.name,
			desc_name=adef.name.." helmet",
			inventory_image=modname.."_inv_helmet_"..adef.name..".png",
			groups={armor_heal=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity,
				armor_head=1},
			armor_groups = {fleshy = adef.helmet_fleshy},
			damage_groups=damage_groups,
			}
		local hdesc=""..core.colorize(tdef.color,adef.name.." helmet\n")..desc
		local_register_armor(hdesc,helmet)
	end
	if adef.chest_fleshy then
		local chestplate={
			name=modname..":chestplate_"..adef.name,
			desc_name=adef.name.." chestplate",
			inventory_image=modname.."_inv_chestplate_"..adef.name..".png",
			groups={armor_heal=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity,
				armor_torso=1},
			armor_groups = {fleshy = adef.chest_fleshy},
			damage_groups=damage_groups,
			}
		local hdesc=""..core.colorize(tdef.color,adef.name.." chestplate\n")..desc
		local_register_armor(hdesc,chestplate)
	end
	if adef.leggings_fleshy then
		local leggings={
			name=modname..":leggings_"..adef.name,
			desc_name=adef.name.." leggings",
			inventory_image=modname.."_inv_leggings_"..adef.name..".png",
			groups={armor_legs=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity,
				armor_torso=1},
			armor_groups = {fleshy = adef.leggings_fleshy},
			damage_groups=damage_groups,
			}
		local hdesc=""..core.colorize(tdef.color,adef.name.." leggings\n")..desc
		local_register_armor(hdesc,leggings)
	end
	if adef.boots_fleshy then
		local boots={
			name=modname..":boots_"..adef.name,
			desc_name=adef.name.." boots",
			inventory_image=modname.."_inv_boots_"..adef.name..".png",
			groups={armor_feet=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity,
				armor_torso=1},
			armor_groups = {fleshy = adef.boots_fleshy},
			damage_groups=damage_groups,
			}
		local hdesc=""..core.colorize(tdef.color,adef.name.." boots\n")..desc
		local_register_armor(hdesc,boots)
	end
	if adef.shield_fleshy then
		local shield={
			name=modname..":shield_"..adef.name,
			desc_name=adef.name.." shield",
			inventory_image=modname.."_inv_shield_"..adef.name..".png",
			groups={armor_shield=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity,
				armor_torso=1},
			armor_groups = {fleshy = adef.shield_fleshy},
			damage_groups=damage_groups,
			}
		local hdesc=""..core.colorize(tdef.color,adef.name.." shield\n")..desc
		local_register_armor(hdesc,shield)
	end
end
