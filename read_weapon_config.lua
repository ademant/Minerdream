
local has_value = minerdream.has_value 
local tier_cols={
	col_num={"name"},}
local tier_definition = minerdream.import_csv(minerdream.path.."/tiers.txt",tier_cols)
local tool_cols={
	col_num={"bow_wield_scale","tier","bow_velocity","bow_acceleration","arrow_damage"},
	groups_num={"is_bowarrow"},
--	as_numeric=1,
}
local tool_definition = minerdream.import_csv(minerdream.path.."/arrows.txt",tool_cols)
--print(dump2(tool_definition))

local minerdream_arrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}

for i,tdef in pairs(tool_definition) do
	if (i ~= "default") then
		if tdef.groups.is_bowarrow then
			-- register bow
			minetest.register_tool("minerdream:bow_"..i, {
					description = "".. core.colorize("#BFFFFF", i.." bow\n")..core.colorize("#A0A0A0", "projectile speed: "..tdef.bow_velocity.."\n")..core.colorize("#A0A0A0", "projectile gravity: "..tdef.bow_acceleration.."\n")..core.colorize("#A0A0A0", "ranged damage: "..tdef.arrow_damage.."\n")..core.colorize("#A0A0A0", "ammo: arrows"),
				inventory_image = "minerdream_bow_"..i..".png",
				wield_scale = {x=tdef.bow_wield_scale,y=tdef.bow_wield_scale,z=tdef.bow_wield_scale},
				on_use = function(itemstack, user, pointed_thing)
					local inv = user:get_inventory()
					if not inv:contains_item("main", "minerdream:arrow 1") then
						minetest.sound_play("", {object=user})
						return itemstack
					end
					if not minetest.setting_getbool("creative_mode") then
						inv:remove_item("main", "minerdream:arrow")
					end
					local pos = user:getpos()
					local dir = user:get_look_dir()
					local yaw = user:get_look_yaw()
					if pos and dir and yaw then
						pos.y = pos.y + 1.6
						local obj = minetest.add_entity(pos, "minerdream:copperarrow")
						if obj then
							minetest.sound_play("", {object=obj})
							obj:setvelocity({x=dir.x * tdef.bow_velocity, y=dir.y * tdef.bow_velocity, z=dir.z * tdef.bow_velocity})
							obj:setacceleration({x=dir.x * tdef.bow_acceleration, y=tdef.bow_acceleration, z=dir.z * tdef.bow_acceleration})
							obj:setyaw(yaw + math.pi)
							local ent = obj:get_luaentity()
							if ent then
								ent.player = ent.player or user
							end
						end
					end
					return itemstack
				end,
			})
			-- end register bow
			
			local tarrow=table.copy(minerdream_arrow)
			tarrow.on_step = function(self, dtime)
				self.timer = self.timer + dtime
				local pos = self.object:getpos()
				local node = minetest.get_node(pos)

				if self.timer > (3.5/tdef.bow_velocity) then
					local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
					for k, obj in pairs(objs) do
						if obj:get_luaentity() ~= nil then
							if obj:get_luaentity().name ~= "minerdream:"..i.."arrow" and obj:get_luaentity().name ~= "__builtin:item" then
								obj:punch(self.object, 1.0, {
									full_punch_interval = 1.0,
									damage_groups= {fleshy = tdef.arrow_damage},
								}, nil)
								minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
								self.object:remove()

							end
						else
							obj:punch(self.object, 1.0, {
								full_punch_interval = 1.0,
								damage_groups= {fleshy = tdef.arrow_damage},
							}, nil)
							minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
							self.object:remove()
						end
					end
				end

				if self.lastpos.x ~= nil then
					if minetest.registered_nodes[node.name].walkable then
						if not minetest.setting_getbool("creative_mode") then
							minetest.add_item(self.lastpos, "minerdream:arrow")
						end
						minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
						self.object:remove()
					end
				end
				self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
			end
			minetest.register_entity("minerdream:"..i.."arrow", tarrow )
		else
			minetest.register_craftitem("minerdream:"..i:gsub(" ","_"), {
					description = "".. core.colorize("#BFFFFF", i.."\n")..core.colorize("#A0A0A0", "throwable speed: "..tdef.bow_velocity.."\n")..core.colorize("#A0A0A0", "throwable gravity: "..tdef.bow_acceleration.."\n")..core.colorize("#A0A0A0", "throwing damage: "..tdef.arrow_damage),
				range = 0,
				stack_max= 500,
				inventory_image = "minerdream_"..i:gsub(" ","_")..".png",
				on_use = function(itemstack, user, pointed_thing)
						if not minetest.setting_getbool("creative_mode") then itemstack:take_item()
					end
					if pointed_thing.type ~= "nothing" then
						local pointed = minetest.get_pointed_thing_position(pointed_thing)
						if vector.distance(user:getpos(), pointed) < tdef.distance then
							return itemstack
						end
					end
					local pos = user:getpos()
					local dir = user:get_look_dir()
					local yaw = user:get_look_yaw()
					if pos and dir then
						pos.y = pos.y + 1.5
						local obj = minetest.add_entity(pos, "minerdream:shuriken")
						if obj then
							obj:setvelocity({x=dir.x * tdef.bow_velocity, y=dir.y * tdef.bow_velocity, z=dir.z * tdef.bow_velocity})
							obj:setacceleration({x=dir.x * tdef.bow_acceleration, y=tdef.bow_acceleration, z=dir.z * tdef.bow_acceleration})
							obj:setyaw(yaw + math.pi)
							local ent = obj:get_luaentity()
							if ent then
								ent.player = ent.player or user
							end
						end
					end
					return itemstack
				end,
			})
			local tthrow=table.copy(minerdream_arrow)
			tthrow.visual="cube"
			tthrow.visual_size={x=0.5,y=0.0,}
			tthrow.textures = {'minerdream_'..i:gsub(" ","_")..'.png','minerdream_'..i:gsub(" ","_")..'.png','minerdream_'..i:gsub(" ","_")..'.png','minerdream_'..i:gsub(" ","_")..'.png','minerdream_'..i:gsub(" ","_")..'.png','minerdream_'..i:gsub(" ","_")..'.png'}
			tthrow.on_step = function(self, dtime)
				self.timer = self.timer + dtime
				local pos = self.object:getpos()
				local node = minetest.get_node(pos)

				if self.timer > (3.5/tdef.bow_velocity) then
					local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
					for k, obj in pairs(objs) do
						if obj:get_luaentity() ~= nil then
							if obj:get_luaentity().name ~= "minerdream:"..i:gsub(" ","_") and obj:get_luaentity().name ~= "__builtin:item" then
								obj:punch(self.object, 1.0, {
									full_punch_interval = 1.0,
									damage_groups= {fleshy = tdef.arrow_damage},
								}, nil)
								minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
								self.object:remove()
							end
						else
							obj:punch(self.object, 1.0, {
								full_punch_interval = 1.0,
								damage_groups= {fleshy = tdef.arrow_damage},
							}, nil)
							minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
							self.object:remove()
						end
					end
				end

				if self.lastpos.x ~= nil then
					if minetest.registered_nodes[node.name].walkable then
						if not minetest.setting_getbool("creative_mode") then
							minetest.add_item(self.lastpos, "minerdream:"..i:gsub(" ","_"))
						end
						minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
						self.object:remove()
					end
				end
				self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
			end
			print(i)
			print(dump2(tthrow))
			minetest.register_entity("minerdream:"..i:gsub(" ","_"), tthrow)
		end
	end
end

minetest.register_craftitem("minerdream:arrow", {
		description = "".. core.colorize("#FFFFFF", "arrow\n")..core.colorize("#A0A0A0", "ammunition for bows"),
	stack_max= 1000,
	inventory_image = "minerdream_arrow_inv.png",
})

minetest.register_craftitem("minerdream:shotarrow", {
	inventory_image = "minerdream_arrow.png",
})
