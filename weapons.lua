
-----------------------guns---------------

minetest.register_tool("minerdream:handgun", {
		description = "".. core.colorize("#00FFFF", "handgun\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 20\n")..core.colorize("#A0A0A0", "ranged damage: 4\n")..core.colorize("#A0A0A0", "ammo: bullets"),
	inventory_image = "minerdream_handgun.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "minerdream:bullet 1") then
			minetest.sound_play("minerdream_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "minerdream:bullet")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "minerdream:handgunshot")
			if obj then
				minetest.sound_play("minerdream_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "minerdream:gunsmoke")
				minetest.sound_play("minerdream_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.3
			local obj = minetest.add_entity(pos, "minerdream:pellet")
				minetest.sound_play("minerdream_handgun", {object=obj})
				obj:setvelocity({x=dir.x * -25, y=dir.y * 0, z=dir.z * -25})
				obj:setacceleration({x=dir.x * 10, y=-25, z=dir.z * 10})
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

local minerdream_handgunshot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'minerdream:shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_handgunshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:handgunshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 4
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:handgunshot", minerdream_handgunshot)


minetest.register_craftitem("minerdream:bullet", {
		description = "".. core.colorize("#FFFFFF", "bullet\n")..core.colorize("#A0A0A0", "ammunition for guns"),
	stack_max= 2000,
	inventory_image = "minerdream_bullet_inv.png",
})

minetest.register_craftitem("minerdream:casing", {
		description = "".. core.colorize("#FFFFFF", "bullet casing\n")..core.colorize("#A0A0A0", "this buleet is empty, and mostly useless, but if you collect 9 of those, you can recicle them into a brass nugget"),
	stack_max= 2000,
	inventory_image = "minerdream_casing.png",
})


minetest.register_craftitem("minerdream:shot", {
	inventory_image = "minerdream_shot.png",
})

local minerdream_gunsmoke = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5,},
	textures = {'tnt_smoke.png'},
	lastpos= { },
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_gunsmoke.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 1 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 100)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:gunsmoke" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 0
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)

					self.object:remove()
				end
			else
				local damage = 0
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)

				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end

			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end
minetest.register_entity("minerdream:gunsmoke", minerdream_gunsmoke)


local minerdream_pellet = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:pellet'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_pellet.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.0 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:pellet" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 0
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
			end
			else
				local damage = 0
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "minerdream:casing")
			end
			minetest.sound_play("minerdream_pelletfall", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:pellet", minerdream_pellet)


minetest.register_tool("minerdream:revolver", {
		description = "".. core.colorize("#0040FF", "Revolver\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "projectile speed: 40\n")..core.colorize("#A0A0A0", "ranged damage: 6\n")..core.colorize("#A0A0A0", "ammo: bullets"),
	inventory_image = "minerdream_revolver.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "minerdream:bullet 1") then
			minetest.sound_play("minerdream_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "minerdream:bullet")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "minerdream:revolvershot")
			if obj then
				minetest.sound_play("minerdream_revolver", {object=obj})
				obj:setvelocity({x=dir.x * 40, y=dir.y * 40, z=dir.z * 40})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "minerdream:gunsmoke")
				minetest.sound_play("minerdream_handgun", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.3
			local obj = minetest.add_entity(pos, "minerdream:pellet")
				minetest.sound_play("minerdream_handgun", {object=obj})
				obj:setvelocity({x=dir.x * -25, y=dir.y * 0, z=dir.z * -25})
				obj:setacceleration({x=dir.x * 10, y=-25, z=dir.z * 10})
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

local minerdream_revolvershot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'minerdream:shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_revolvershot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.10 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:revolvershot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 6
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 6
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:revolvershot", minerdream_revolvershot)

minetest.register_tool("minerdream:shotgun", {
		description = "".. core.colorize("#00FF00", "Shotgun\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "projectile speed: 20\n")..core.colorize("#A0A0A0", "Projectile ammount: 5\n")..core.colorize("#A0A0A0", "ranged damage: 6\n")..core.colorize("#A0A0A0", "ammo: bullets x2"),
	inventory_image = "minerdream_shotgun.png",
	wield_scale = {x=2.0,y=2.0,z=1.0},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if not inv:contains_item("main", "minerdream:bullet 2") then
			minetest.sound_play("minerdream_empty", {object=user})
			return itemstack
		end
		if not minetest.setting_getbool("creative_mode") then
			inv:remove_item("main", "minerdream:bullet 2")
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "minerdream:shotgunshot")
			if obj then
				minetest.sound_play("minerdream_shotgun", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.0
			local obj = minetest.add_entity(pos, "minerdream:shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 23, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.0
			local obj = minetest.add_entity(pos, "minerdream:shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 26, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.0
			local obj = minetest.add_entity(pos, "minerdream:shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 17, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.0
			local obj = minetest.add_entity(pos, "minerdream:shotgunshot")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 14, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * 0, y=0, z=dir.z * 0})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y - 0.2
			local obj = minetest.add_entity(pos, "minerdream:gunsmoke")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 3, y=dir.y * 3, z=dir.z * 3})
				obj:setacceleration({x=dir.x * -4, y=2, z=dir.z * -4})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.3
			local obj = minetest.add_entity(pos, "minerdream:pellet")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * -25, y=dir.y * 0, z=dir.z * -25})
				obj:setacceleration({x=dir.x * 10, y=-25, z=dir.z * 10})
				obj:setyaw(yaw + math.pi)
			pos.y = pos.y + 0.3
			local obj = minetest.add_entity(pos, "minerdream:pellet")
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * -26, y=dir.y * 0, z=dir.z * -26})
				obj:setacceleration({x=dir.x * 10, y=-25, z=dir.z * 10})
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

local minerdream_shotgunshot = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.25, y=0.4,},
	textures = {'minerdream:shot'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_shotgunshot.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:shotgunshot" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 6
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 6
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:shotgunshot", minerdream_shotgunshot)


minetest.register_craftitem("minerdream:pellet", {
	wield_scale = {x=6.0,y=2.0,z=0.5},
	inventory_image = "minerdream_pellet.png",
})
----------------specthrowables-------
minetest.register_craftitem("minerdream:grenade", {
		description = "".. core.colorize("#00FFFF", "Grenade\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "throwable speed: 15\n")..core.colorize("#A0A0A0", "throwable gravity: 7\n")..core.colorize("#A0A0A0", "explosion range : 3\n")..core.colorize("#A0A0A0", "explosive damage: 15"),
	range = 0,
	stack_max= 25,
	inventory_image = "minerdream_grenade.png",
	on_use = function(itemstack, user, pointed_thing)
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item()
		end
		if pointed_thing.type ~= "nothing" then
			local pointed = minetest.get_pointed_thing_position(pointed_thing)
			if vector.distance(user:getpos(), pointed) < 8 then
				return itemstack
			end
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir then
			pos.y = pos.y + 1.5
			local obj = minetest.add_entity(pos, "minerdream:grenade")
			if obj then
				obj:setvelocity({x=dir.x * 15, y=dir.y * 15, z=dir.z * 15})
				obj:setacceleration({x=dir.x * -7, y=-7, z=dir.z * -7})
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
local minerdream_grenade = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.30, y=0.30,},
	textures = {'minerdream_grenade_nopin.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_grenade.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.2 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:grenade" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 0
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)

				end
			else
				local damage = 0
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)

			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_entity(self.lastpos, "minerdream:grenade_explosion")
				minetest.add_entity(self.lastpos, "minerdream:grenadedmg")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:grenade", minerdream_grenade )



local minerdream_grenade_explosion = {
	physical = false,
	timer = 0,
	visual = "mesh",
	mesh = "boom.obj",
	visual_size = {x=45.0, y=45.0,},
	textures = {'minerdream_boom.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_grenade_explosion.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)


		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 3)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:grenade_explosion" and obj:get_luaentity().name ~= "__builtin:item" then

					local damage = 0
					obj:punch(self.object, 0.1, {
						full_punch_interval = 0.1,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("minerdream_explosion", {pos = self.lastpos, gain = 0.8})


				end
			else
				local damage = 0
				obj:punch(self.object, 0.1, {
					full_punch_interval = 0.1,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("minerdream_explosion", {pos = self.lastpos, gain = 0.8})


			end

	if self.timer > 0.1 then
					self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:grenade_explosion", minerdream_grenade_explosion )


local minerdream_grenadedmg = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.30, y=0.30,},
	textures = {'minerdream_grenade_nopin.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_grenadedmg.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)


		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 3)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:grenadedmg" and obj:get_luaentity().name ~= 
"minerdream:grenade_explosion" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 15
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					self.object:remove()
				end
			else
				local damage = 15
				obj:punch(self.object, 0.1, {
					full_punch_interval = 0.1,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

			end

	if self.timer > 0.075 then
					self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:grenadedmg", minerdream_grenadedmg )

--------------magic-------------------
minetest.register_tool("minerdream:amethyst_staff", {
		description = "".. core.colorize("#0040FF", "Amethyst staff\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "projectile speed: 15\n")..core.colorize("#A0A0A0", "magic damage: 7\n")..core.colorize("#A0A0A0", "mana usage: 10"),
	inventory_image = "minerdream_amethyst_staff.png",
	wield_scale = {x=1.25,y=1.25,z=1.25},
	on_use = function(itemstack, placer, pointed_thing)
		if mana.subtract(placer:get_player_name(), 10) then
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:amethyst_ray")
			local vec = {x=dir.x*15,y=dir.y*15,z=dir.z*15}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
		end
		return itemstack
	end,
})

local minerdream_amethyst_ray = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:amethyst_ray'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_amethyst_ray.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:amethyst_ray" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 7
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

				end
			else
				local damage = 7
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
				self.object:remove()
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end


minetest.register_entity("minerdream:amethyst_ray", minerdream_amethyst_ray )

minetest.register_craftitem("minerdream:amethyst_ray", {
	inventory_image = "minerdream_amethyst_ray.png",
})

minetest.register_tool("minerdream:ocean_staff", {
		description = "".. core.colorize("#00FF00", "Staff of ocean\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "projectile speed: 10-15\n")..core.colorize("#A0A0A0", "magic damage: 4\n")..core.colorize("#A0A0A0", "mana usage: 25\n")..core.colorize("#A0A0A0", "Sprays a beam of water, that can hit 6 times, and extiguish flames"),
	inventory_image = "minerdream_oceanstaff.png",
	wield_scale = {x=1.25,y=1.25,z=1.25},
	on_use = function(itemstack, placer, user, pointed_thing)
		if mana.subtract(placer:get_player_name(), 25) then 
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*10,y=dir.y*10,z=dir.z*10}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
				minetest.sound_play("minerdream_waterspray", {object=obj})
---------------------------------------------------
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*11,y=dir.y*11,z=dir.z*11}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
---------------------------------------------------
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*12,y=dir.y*12,z=dir.z*12}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
---------------------------------------------------
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*13,y=dir.y*13,z=dir.z*13}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
---------------------------------------------------
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*14,y=dir.y*14,z=dir.z*14}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
---------------------------------------------------
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:water_ray")
			local vec = {x=dir.x*15,y=dir.y*15,z=dir.z*15}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)

		end
		return itemstack
	end,
})

local minerdream_water_ray = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=1.25, y=1.25,},
	textures = {'minerdream:water_ray'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_water_ray.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:water_ray" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

				end
			else
				local damage = 4
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})

			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
		if math.floor(self.lastpos.x+0.5) ~= math.floor(pos.x+0.5) or math.floor(self.lastpos.y+0.5) ~= math.floor(pos.y+0.5) or math.floor(self.lastpos.z+0.5) ~= math.floor(pos.z+0.5) then
			if minetest.env:get_node(self.lastpos).name == "fire:basic_flame" then
				minetest.env:remove_node(self.lastpos)
			minetest.sound_play("minerdream_extinguish", {pos = self.lastpos, gain = 0.8})
			end
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("minerdream:water_ray", minerdream_water_ray )


minetest.register_craftitem("minerdream:water_ray", {
	inventory_image = "minerdream_water_ray.png",
})

minetest.register_tool("minerdream:pink_blaster", {
		description = "".. core.colorize("#00FF00", "Pink blaster\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "projectile speed: 35\n")..core.colorize("#A0A0A0", "magic damage: 7\n")..core.colorize("#A0A0A0", "mana usage: 20\n")..core.colorize("#A0A0A0", "Shoots out a pink ray, that penetrates enemies"),
	inventory_image = "minerdream_pink_blaster.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
	on_use = function(itemstack, placer, user, pointed_thing)
		if mana.subtract(placer:get_player_name(), 20) then
			local dir = placer:get_look_dir();
			local yaw = placer:get_look_yaw()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.5+dir.y,z=playerpos.z+0+dir.z}, "minerdream:pink_ray")
			local vec = {x=dir.x*35,y=dir.y*35,z=dir.z*35}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			obj:setyaw(yaw + math.pi)
				minetest.sound_play("minerdream_laser", {object=obj})
		end
		return itemstack
	end,
})

local minerdream_pink_ray = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:pink_ray'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_pink_ray.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.12 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:pink_ray" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 7
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})

				end
			else
				local damage = 7
				obj:punch(self.object, 1.0, {
					full_punch_interval = 1.0,
					damage_groups= {fleshy = damage},
				}, nil)
				minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			end
		end
	end

	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
			if not minetest.setting_getbool("creative_mode") then
				minetest.add_item(self.lastpos, "")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end


minetest.register_entity("minerdream:pink_ray", minerdream_pink_ray )

minetest.register_craftitem("minerdream:pink_ray", {
	inventory_image = "minerdream_pink_ray.png",
})


minetest.register_tool('minerdream:golden_crystal_trisword', {
		description = "".. core.colorize("#00FF00", "Golden crystal tri-sword\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 18\n")..core.colorize("#A0A0A0", "range: 4.8 \n")..core.colorize("#A0A0A0", "attack interval: 0.725 "),
	wield_scale = {x=1.45,y=1.45,z=1.45},
	inventory_image = "minerdream_golden_crystal_trisword.png",
	range = 4.8,
	tool_capabilities = {
		full_punch_interval = 0.725,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.7, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	},
})

---------------artefact--------

minetest.register_tool('minerdream:dagger', {
		description = "".. core.colorize("#BFFFFF", "Dagger\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 4\n")..core.colorize("#A0A0A0", "range: 2.5 \n")..core.colorize("#A0A0A0", "attack interval: 0.3 "),
	wield_scale = {x=0.8,y=0.8,z=0.8},
	inventory_image = "minerdream_dagger.png",
	range = 2.5,
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool('minerdream:shortsword', {
		description = "".. core.colorize("#00FFFF", "Shortsword\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 5\n")..core.colorize("#A0A0A0", "range: 3 \n")..core.colorize("#A0A0A0", "attack interval: 0.35 "),
	wield_scale = {x=0.9,y=0.9,z=0.9},
	inventory_image = "minerdream_shortsword.png",
	range = 3.0,
	tool_capabilities = {
		full_punch_interval = 0.35,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool('minerdream:club', {
		description = "".. core.colorize("#00FFFF", "Heavy club\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.1 \n")..core.colorize("#A0A0A0", "attack interval: 1.5 "),
	wield_scale = {x=1.1,y=1.1,z=1.5},
	inventory_image = "minerdream_club.png",
	range = 4.1,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:mace', {
		description = "".. core.colorize("#40FF80", "Mace\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 4.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.15 "),
	wield_scale = {x=1.2,y=1.2,z=1.5},
	inventory_image = "minerdream_mace.png",
	range = 4.25,
	tool_capabilities = {
		full_punch_interval = 1.15,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:claymore', {
		description = "".. core.colorize("#0040FF", "Shortsword\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 11\n")..core.colorize("#A0A0A0", "range:4.8 \n")..core.colorize("#A0A0A0", "attack interval: 0.575 "),
	wield_scale = {x=1.45,y=1.45,z=0.9},
	inventory_image = "minerdream_claymore.png",
	range = 4.8,
	tool_capabilities = {
		full_punch_interval = 0.575,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.3, [2]=0.15, [3]=0.075}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool('minerdream:katana', {
		description = "".. core.colorize("#00FF00", "Shortsword\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range:5.25 \n")..core.colorize("#A0A0A0", "attack interval: 0.5 "),
	wield_scale = {x=1.6,y=1.6,z=0.8},
	inventory_image = "minerdream_katana.png",
	range = 5.25,
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.2, [2]=0.1, [3]=0.05}, uses=200, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

