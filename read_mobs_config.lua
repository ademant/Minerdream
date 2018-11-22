
local has_value = minerdream.has_value 
local mob_cols={
	col_num={"reach","damage","hp_min",
		"hp_max","armor","walk_velocity","run_velocity","walk_chance",
		"fall_speed","jump_chance","jump_height","stepheight","floats",
		"view_range","water_damage","lava_damage","light_damage","slimeball",
		"egg","slimering","maxlight","chance","max_height","collisionbox"},
--	as_numeric=1,
}
local mob_definition = minerdream.import_csv(minerdream.path.."/mobs.txt",mob_cols)

local mob_default = {
		type = "monster",
		passive = false,
		attack_type = "dogfight",
		reach = 2,
		damage = 1,
		hp_min = 5,
		hp_max = 5,
		armor = 100,
		collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
		visual = "wielditem",
		makes_footstep_sound = true,
		walk_velocity = 2,
		run_velocity = 2,
		walk_chance = 0,
		fall_speed = -50,
		jump_chance = 30,
		jump_height = 6,
		stepheight = 1.1,
		floats = 0,
		view_range = 16,
		water_damage = 0,
		lava_damage = 8,
		light_damage = 0,
		animation = {
			speed_normal = 15,
			speed_run = 15,
			stand_start = 0,
			stand_end = 14,
			walk_start = 15,
			walk_end = 38,
			run_start = 40,
			run_end = 63,
			punch_start = 40,
			punch_end = 63,
		},
	}

if mob_definition["default"] ~= nil then
	tmobd=table.copy(mob_definition["default"])
	for _,column in pairs({"attack_type","reach","damage","hp_min",
		"hp_max","armor","walk_velocity","run_velocity","walk_chance",
		"fall_speed","jump_chance","jump_height","stepheight","floats",
		"view_range","water_damage","lava_damage","light_damage","slimeball",
		"egg","slimering","maxlight","chance","max_height"}) do
		if tmobd[column] ~= nil then
			mob_default[column]=tmobd[column]
		end
	end
	if tmobd["collisionbox"] ~= nil then
		local cb=tmobd["collisionbox"]
		mob_default["collisionbox"] = {-1*cb, -1*cb, -1*cb, cb, cb, cb}
	end
end

for i,tdef in pairs(mob_definition) do
	if (i ~= "default") then
		local mdef=table.copy(mob_default)
		for _,column in pairs({"attack_type","reach","damage","hp_min",
			"hp_max","armor","walk_velocity","run_velocity","walk_chance",
			"fall_speed","jump_chance","jump_height","stepheight","floats",
			"view_range","water_damage","lava_damage","light_damage","slimeball",
			"egg","slimering","maxlight","chance","max_height"}) do
			if tdef[column] ~= nil then
				mdef[column]=tdef[column]
			end
		end
		if tdef["collisionbox"] ~= nil then
			local cb=tdef["collisionbox"]
			mdef["collisionbox"] = {-1*cb, -1*cb, -1*cb, cb, cb, cb}
		end
		mdef.textures = {
			{"minerdream:slime_"..i},
			}
		mdef.blood_texture = "minerdream_slimeball_"..i..".png"
		mdef.drops = {
			{name = "minerdream:slimeball_"..i, chance = mdef.slimeball, min = 1, max = 3},
			{name = "minerdream:slime_"..i.."_egg", chance = mdef.egg, min = 1, max = 1},
			{name = "minerdream:accessory_slimering", chance = mdef.slimering, min = 1, max = 1},
		}

		mobs:register_mob("minerdream:slime_"..i, mdef)
		mobs:spawn({
			name = "minerdream:slime_"..i,
			nodes = {"default:stone"},
			max_light = mdef.maxlight,
			chance = mdef.chance,
			max_height = mdef.max_height,
		})
		
		minetest.register_craftitem("minerdream:slime_"..i.."_egg", {
			description = i.." slime spawnegg",
			inventory_image = "minerdream_egg_"..i.."slime.png",
			on_place = function(itemstack, placer, pointed_thing)
				if pointed_thing.above then
					minetest.env:add_entity(pointed_thing.above, "minerdream:slime_"..i)
					itemstack:take_item()
				end
				return itemstack
			end,
		})
		minetest.register_node("minerdream:slime_"..i, {
			tiles = {
				"minerdream_slime_"..i.."_top.png",
				"minerdream_slime_"..i.."_top.png",
				"minerdream_slime_"..i.."_side.png",
				"minerdream_slime_"..i.."_side.png",
				"minerdream_slime_"..i.."_side.png",
				"minerdream_slime_"..i.."_side.png"
			},
			drawtype = "nodebox",
			wield_scale = {x=0.4,y=0.4,z=0.4},
			paramtype = "light",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125}, -- NodeBox1
					{-0.375, -0.5, -0.3125, 0.375, 0.25, 0.3125}, -- NodeBox2
					{-0.3125, -0.5, -0.375, 0.3125, 0.25, 0.375}, -- NodeBox3
					{-0.3125, -0.4375, -0.4375, 0.3125, 0.125, 0.4375}, -- NodeBox4
					{-0.375, -0.4375, -0.375, 0.375, 0.125, 0.375}, -- NodeBox5
					{-0.4375, -0.4375, -0.3125, 0.4375, 0.125, 0.3125}, -- NodeBox6
					{-0.25, -0.375, -0.5, 0.25, 0, 0.5}, -- NodeBox7
					{-0.5, -0.375, -0.25, 0.5, 0, 0.25}, -- NodeBox8
				}
			}
		})
	end
end

