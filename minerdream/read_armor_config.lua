local S=minerdream.intllib

local has_value = basic_functions.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = basic_functions.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local tool_cols={
	col_num={"range","uses"},
	as_numeric=1,
}
local tool_definition = basic_functions.import_csv(minerdream.path.."/armor.txt",tool_cols)
--print(dump2(tool_definition))

for i,tdef in pairs(tool_definition) do
	if (i ~= "default") then
		local tooldef={}
		for col in pairs(tdef) do
			tooldef=basic_functions.parse_tree(tooldef,col,tdef[col])
		end
		local tierd=tier_definition[tostring(tdef.tier)]
		for _,tool in pairs({"helmet","chestplate","boots","leggings","shields"}) do
			if tooldef[tool] ~= nil then
				local ttv=tooldef[tool]
				tdesc=core.colorize("#"..tierd.color, S(i:gsub("^%l", string.upper)).." "..S(tool:gsub("^%l", string.upper)).."\n")..
						core.colorize("#A0A0A0", "tier: "..tierd.name.." ("..tierd.desc..")")
				if ttv.fleshy then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Defense")..": "..ttv.fleshy)
				end
				if ttv.heal then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Heal")..": "..ttv.heal)
				end
				if ttv.speed then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Walking speed")..": "..(ttv.speed*100).."%")
				end
				if ttv.gravity then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Gravity")..": "..(ttv.gravity*100).."%")
				end
				if ttv.jump then
					tdesc=tdesc.."\n"..core.colorize("#A0A0A0",S("Jump force")..": "..(ttv.jump*100).."%")
				end
				tt_def={description=tdesc,
--				tt_def={description=i.." "..tool,
					inventory_image=minerdream.modname.."_inv_"..tool.."_"..i..".png",
					damage_groups = {level = ttv.level or 2},
					armor_groups={fleshy=ttv.fleshy or 10},
					groups={armor_heal=ttv.heal,armor_use=ttv.use,
						physics_jump=ttv.jump,physics_speed=ttv.speed,physics_gravity=ttv.gravity}
					}
				for _,gc in pairs({"cracky","crumbly","choppy","snappy"}) do
					tt_def.damage_groups[gc]=ttv[gc]
				end
				if tool == "helmet" then
					tt_def.groups.armor_head=1
				elseif tool == "chestplate" then
					tt_def.groups.armor_torso=1
				elseif tool == "leggings" then
					tt_def.groups.armor_legs=1
				elseif tool == "boots" then
					tt_def.groups.armor_feet=1
				elseif tool == "shields" then
					tt_def.groups.armor_shield=1
				end
					
				toolname=minerdream.modname..":"..tool.."_"..i
				armor:register_armor(toolname,tt_def)
			end
		end
	end
end

