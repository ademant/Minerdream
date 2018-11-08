
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
--	print(dump(adef))
	for _,arm in ipairs({"helmet","chestplate","leggings","boots","shield"}) do
--		print(arm.."_fleshy")
		if adef[arm.."_fleshy"] then
			local armdef={name=modname..":"..arm.."_"..adef.name,
			desc_name=adef.name.." "..arm,
			inventory_image=modname.."_inv_"..arm.."_"..adef.name..".png",
			groups={armor_heal=adef.heal,armor_use=adef.use,physics_jump=adef.jump,
				physics_speed=adef.speed,physics_gravity=adef.gravity},
			armor_groups = {fleshy = adef[arm.."_fleshy"]},
			damage_groups=damage_groups,
			}
			armdef.groups[arm_trans[arm]] = 1
--			print(dump(armdef))
			local hdesc=""..core.colorize(tdef.color,adef.name.." "..arm.."\n")..desc
--			print(hdesc)
			local_register_armor(hdesc,armdef)
		end
	end
end

local time_scaled={[1]=1,[2]=0.4,[3]=0.16,[4]=2.4,[5]=3.2,[6]=4.8}
local tool_punch_interval={
	pick = 1, sword = 0.75, shovel = 1, axe = 1}
local tool_damage_groups = {
	pick = 1, sword = 1.2, shovel = 0.7, axe = 1.1}
	
minerdream.register_tool = function(tdef,tier_definition)
	local trdef=tier_definition[tdef.tier]
	local modname=tdef.modname

	for _,tool in pairs({"pick","sword","shovel","axe"}) do
		if tdef.groups[tool] then
			print(dump(tdef))
			local lpi=tdef.full_punch_intervall * tool_punch_interval[tool]
			local ldg = tdef.tool_fleshy * tool_damage_groups[tool]
			tool_def={name=modname..":"..tool.."_"..tdef.name,
			desc_name=tdef.name.." "..tool,
			description = "".. core.colorize("#00FF00", tdef.name.." "..tool.."\n")
				..core.colorize("#A0A0A0", "tier: "..tdef.tier.." ("..trdef.desc..")\n")
				..core.colorize("#A0A0A0", "mele damage: "..ldg.."\n")
				..core.colorize("#A0A0A0", "range: "..tdef.tool_range.."\n")
				..core.colorize("#A0A0A0", "attack interval: "..lpi),

			inventory_image=modname.."_"..tool.."_"..tdef.name..".png",
			wield_scale = {x=tdef.wield_scale,y=tdef.wield_scale,z=tdef.wield_scale},
			range = tdef.tool_range,
			tool_capabilities = {
				full_punch_interval = lpi,
				max_drop_level = 1,
				groupcaps = {
				},
				damage_goups = {fleshy = ldg},
			}
			}
			for tg in pairs({"cracky","crumbly","choppy","snappy"}) do
				if tdef[tool.."_"..tg.."_times"] then
					tool_def.tool_capabilities.groupcaps[tg]={}
					for ind=1,tdef.groups[tool] do
						tool_def.tool_capabilities.groupcaps[tg][ind]=tdef[tool.."_"..tg.."_times"] * time_scaled[ind]
					end
				end
			end
--			print(dump(tool_def))
			minetest.register_tool(tool_def.name,tool_def)
		end
	end
end


local function dust_register(element)
minetest.register_node("minerdream:"..element.."_dust", {
	description = element.." dust",
	tiles = {"minerdream_dust.png"},
	inventory_image = {"minerdream_dust.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end
local function block_register(element,crack)
minetest.register_node("minerdream:"..element.."_block", {
	description = element.." block",
	tiles = {"minerdream_"..element.."_block.png"},
	groups = {cracky = crack},
	sounds = default.node_sound_stone_defaults(),
})
end

function minerdream.ore_register(element,crack,bdust,bblock,desert)
local stonename = "stone"
local stone_name = "stone"
if desert then
  stonename = "desertstone"
  stone_name = "desert_stone"
end
minetest.register_node("minerdream:"..stonename.."_with_"..element, {
	description = element.." ore",
	tiles = {"default_"..stone_name..".png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
if bdust then
  dust_register(element)
end
if bblock then
  block_register(element,crack)
end
end
function minerdream.stone_register(element,crack)
minetest.register_node("minerdream:stone_with_"..element, {
	description = element.." ore",
	tiles = {"default_stone.png^minerdream_"..element.."_ore.png"},
	groups = {cracky = crack},
	drop = 'minerdream:'..element..'_lump',
	sounds = default.node_sound_stone_defaults(),
})
end

minerdream.register_barblock(element)
	minetest.register_node("minerdream:"..element.."_bar_block", {
		description = element.." bar stack",
		drawtype = "mesh",
		mesh = "bars.obj",
		tiles = {"minerdream_"..element.."_bar_block.png"},
		paramtype = "light",
		is_ground_content = true,
		groups = {snappy=3,dig_immediate=3},
	})
end
