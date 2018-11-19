


---------------------bows--------------------

minetest.register_tool("minerdream:bow_copper", {
		description = "".. core.colorize("#BFFFFF", "Copper bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 15\n")..core.colorize("#A0A0A0", "projectile gravity: 10\n")..core.colorize("#A0A0A0", "ranged damage: 2\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_copper.png",
	wield_scale = {x=0.9,y=0.9,z=0.9},
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
				obj:setvelocity({x=dir.x * 15, y=dir.y * 15, z=dir.z * 15})
				obj:setacceleration({x=dir.x * -10, y=-10, z=dir.z * -10})
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

local minerdream_copperarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_copperarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.2 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:copperarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 2
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()

				end
			else
				local damage = 2
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:copperarrow", minerdream_copperarrow )

minetest.register_tool("minerdream:bow_tin", {
		description = "".. core.colorize("#BFFFFF", "Tin bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 15\n")..core.colorize("#A0A0A0", "projectile gravity: 10\n")..core.colorize("#A0A0A0", "ranged damage: 2\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_tin.png",
	wield_scale = {x=0.9,y=0.9,z=0.9},
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
			local obj = minetest.add_entity(pos, "minerdream:tinarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 15, y=dir.y * 15, z=dir.z * 15})
				obj:setacceleration({x=dir.x * -10, y=-10, z=dir.z * -10})
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

local minerdream_tinarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_tinarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.2 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:tinarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 2
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 2
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:tinarrow", minerdream_tinarrow )

minetest.register_tool("minerdream:bow_bronze", {
		description = "".. core.colorize("#BFFFFF", "Bronze bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 16\n")..core.colorize("#A0A0A0", "projectile gravity: 9.75\n")..core.colorize("#A0A0A0", "ranged damage: 2.5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_bronze.png",
	wield_scale = {x=0.95,y=0.95,z=0.95},
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
			local obj = minetest.add_entity(pos, "minerdream:bronzearrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 16, y=dir.y * 16, z=dir.z * 16})
				obj:setacceleration({x=dir.x * -9.75, y=-9.75, z=dir.z * -9.75})
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

local minerdream_bronzearrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_bronzearrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.195 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:bronzearrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 2.5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 2.5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:bronzearrow", minerdream_bronzearrow )

minetest.register_tool("minerdream:bow_steel", {
		description = "".. core.colorize("#BFFFFF", "Steel bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 17\n")..core.colorize("#A0A0A0", "projectile gravity: 9.5\n")..core.colorize("#A0A0A0", "ranged damage: 3\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_steel.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
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
			local obj = minetest.add_entity(pos, "minerdream:steelarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 17, y=dir.y * 17, z=dir.z * 17})
				obj:setacceleration({x=dir.x * -9.5, y=-9.5, z=dir.z * -9.5})
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

local minerdream_steelarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_steelarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.190 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:steelarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 3
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 3
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:steelarrow", minerdream_steelarrow )

minetest.register_tool("minerdream:bow_stainlesssteel", {
		description = "".. core.colorize("#BFFFFF", "stainlesssteel bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 19\n")..core.colorize("#A0A0A0", "projectile gravity: 9.0\n")..core.colorize("#A0A0A0", "ranged damage: 3\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_stainlesssteel.png",
	wield_scale = {x=1.0,y=1.0,z=1.0},
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
			local obj = minetest.add_entity(pos, "minerdream:stainlesssteelarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 19, y=dir.y * 19, z=dir.z * 19})
				obj:setacceleration({x=dir.x * -9.0, y=-9.0, z=dir.z * -9.0})
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

local minerdream_stainlesssteelarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_stainlesssteelarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.185 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:stainlesssteelarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 3
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 3
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:stainlesssteelarrow", minerdream_stainlesssteelarrow )

minetest.register_tool("minerdream:bow_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel bow\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 18\n")..core.colorize("#A0A0A0", "projectile gravity: 9.25\n")..core.colorize("#A0A0A0", "ranged damage: 3.5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_nickel.png",
	wield_scale = {x=1.05,y=1.05,z=1.05},
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
			local obj = minetest.add_entity(pos, "minerdream:nickelarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 18, y=dir.y * 18, z=dir.z * 18})
				obj:setacceleration({x=dir.x * -9.25, y=-9.25, z=dir.z * -9.25})
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

local minerdream_nickelarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_nickelarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.185 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:nickelarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 3.5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 3.5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:nickelarrow", minerdream_nickelarrow )


minetest.register_tool("minerdream:bow_silver", {
		description = "".. core.colorize("#00FFFF", "Silver bow\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 19\n")..core.colorize("#A0A0A0", "projectile gravity: 9.0\n")..core.colorize("#A0A0A0", "ranged damage: 4\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_silver.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
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
			local obj = minetest.add_entity(pos, "minerdream:silverarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 19, y=dir.y * 19, z=dir.z * 19})
				obj:setacceleration({x=dir.x * -9.0, y=-9.0, z=dir.z * -9.0})
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

local minerdream_silverarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_silverarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1825 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:silverarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4.0
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 4.0
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:silverarrow", minerdream_silverarrow )


minetest.register_tool("minerdream:bow_gold", {
		description = "".. core.colorize("#00FFFF", "Golden bow\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 20\n")..core.colorize("#A0A0A0", "projectile gravity: 8.75\n")..core.colorize("#A0A0A0", "ranged damage: 4.5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_gold.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
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
			local obj = minetest.add_entity(pos, "minerdream:goldarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -8.75, y=-8.75, z=dir.z * -8.75})
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

local minerdream_goldarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_goldarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1825 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:goldarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4.5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 4.5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:goldarrow", minerdream_goldarrow )


minetest.register_tool("minerdream:bow_mese", {
		description = "".. core.colorize("#00FFFF", "MESE bow\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 20\n")..core.colorize("#A0A0A0", "projectile gravity: 8.75\n")..core.colorize("#A0A0A0", "ranged damage: 4.5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_mese.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
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
			local obj = minetest.add_entity(pos, "minerdream:mesearrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -8.75, y=-8.75, z=dir.z * -8.75})
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

local minerdream_mesearrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_mesearrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1825 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:mesearrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 4.5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 4.5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:mesearrow", minerdream_mesearrow )

minetest.register_tool("minerdream:bow_diamond", {
		description = "".. core.colorize("#00FFFF", "diamond bow\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 21\n")..core.colorize("#A0A0A0", "projectile gravity: 8.5\n")..core.colorize("#A0A0A0", "ranged damage: 5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_diamond.png",
	wield_scale = {x=1.15,y=1.15,z=1.15},
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
			local obj = minetest.add_entity(pos, "minerdream:diamondarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 21, y=dir.y * 21, z=dir.z * 21})
				obj:setacceleration({x=dir.x * -8.5, y=-8.5, z=dir.z * -8.5})
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

local minerdream_diamondarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_diamondarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.18 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:diamondarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:diamondarrow", minerdream_diamondarrow )

minetest.register_tool("minerdream:bow_aluminum", {
		description = "".. core.colorize("#40FF80", "Aluminum bow\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "projectile speed: 20\n")..core.colorize("#A0A0A0", "projectile gravity: 8.75\n")..core.colorize("#A0A0A0", "ranged damage: 6\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_aluminum.png",
	wield_scale = {x=1.3,y=1.3,z=1.3},
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
			local obj = minetest.add_entity(pos, "minerdream:aluminumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -8.75, y=-8.75, z=dir.z * -8.75})
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

local minerdream_aluminumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_aluminumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.18 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:aluminumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:aluminumarrow", minerdream_aluminumarrow )


minetest.register_tool("minerdream:bow_lead", {
		description = "".. core.colorize("#00FFFF", "Lead bow\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "projectile speed: 22\n")..core.colorize("#A0A0A0", "projectile gravity: 8.5\n")..core.colorize("#A0A0A0", "ranged damage: 5\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_lead.png",
	wield_scale = {x=1.1,y=1.1,z=1.1},
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
			local obj = minetest.add_entity(pos, "minerdream:leadarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 22, y=dir.y * 22, z=dir.z * 22})
				obj:setacceleration({x=dir.x * -8.5, y=-8.5, z=dir.z * -8.5})
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

local minerdream_leadarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_leadarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.18 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:leadarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 5
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 5
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:leadarrow", minerdream_leadarrow )


minetest.register_craftitem("minerdream:arrow", {
		description = "".. core.colorize("#FFFFFF", "arrow\n")..core.colorize("#A0A0A0", "ammunition for bows"),
	stack_max= 1000,
	inventory_image = "minerdream_arrow_inv.png",
})


minetest.register_craftitem("minerdream:shotarrow", {
	inventory_image = "minerdream_arrow.png",
})


minetest.register_tool("minerdream:bow_platinum", {
		description = "".. core.colorize("#40FF80", "Platinum bow\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "projectile speed: 24\n")..core.colorize("#A0A0A0", "projectile gravity: 8.0\n")..core.colorize("#A0A0A0", "ranged damage: 6\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_platinum.png",
	wield_scale = {x=1.3,y=1.3,z=1.3},
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
			local obj = minetest.add_entity(pos, "minerdream:platinumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 24, y=dir.y * 24, z=dir.z * 24})
				obj:setacceleration({x=dir.x * -8.0, y=-8.0, z=dir.z * -8.0})
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

local minerdream_platinumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_platinumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:platinumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:platinumarrow", minerdream_platinumarrow )

minetest.register_tool("minerdream:bow_cobalt", {
		description = "".. core.colorize("#0040FF", "Cobalt bow\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "projectile speed: 27\n")..core.colorize("#A0A0A0", "projectile gravity: 7.5\n")..core.colorize("#A0A0A0", "ranged damage: 7\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_cobalt.png",
	wield_scale = {x=1.4,y=1.4,z=1.4},
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
			local obj = minetest.add_entity(pos, "minerdream:cobaltarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 27, y=dir.y * 27, z=dir.z * 27})
				obj:setacceleration({x=dir.x * -7.5, y=-7.5, z=dir.z * -7.5})
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

local minerdream_cobaltarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_cobaltarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.145 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:cobaltarrow" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:cobaltarrow", minerdream_cobaltarrow )

minetest.register_tool("minerdream:bow_ruthenium", {
		description = "".. core.colorize("#0040FF", "ruthenium bow\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "projectile speed: 28\n")..core.colorize("#A0A0A0", "projectile gravity: 7.25\n")..core.colorize("#A0A0A0", "ranged damage: 7\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_ruthenium.png",
	wield_scale = {x=1.4,y=1.4,z=1.4},
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
			local obj = minetest.add_entity(pos, "minerdream:rutheniumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 28, y=dir.y * 28, z=dir.z * 28})
				obj:setacceleration({x=dir.x * -7.25, y=-7.25, z=dir.z * -7.25})
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

local minerdream_rutheniumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_rutheniumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.1425 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:rutheniumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:rutheniumarrow", minerdream_rutheniumarrow )

minetest.register_tool("minerdream:bow_tantalum", {
		description = "".. core.colorize("#00FF00", "tantalum bow\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "projectile speed: 32.5\n")..core.colorize("#A0A0A0", "projectile gravity: 6.5\n")..core.colorize("#A0A0A0", "ranged damage: 9\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_tantalum.png",
	wield_scale = {x=1.55,y=1.55,z=1.2},
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
			local obj = minetest.add_entity(pos, "minerdream:tantalumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 32.5, y=dir.y * 32.5, z=dir.z * 32.5})
				obj:setacceleration({x=dir.x * -6.5, y=-6.5, z=dir.z * -6.5})
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

local minerdream_tantalumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_tantalumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.140 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:tantalumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 9
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 9
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:tantalumarrow", minerdream_tantalumarrow )

minetest.register_tool("minerdream:bow_rhodium", {
		description = "".. core.colorize("#00FF00", "rhodium bow\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "projectile speed: 33.0\n")..core.colorize("#A0A0A0", "projectile gravity: 6.5\n")..core.colorize("#A0A0A0", "ranged damage: 9\n")..core.colorize("#A0A0A0", "ammo: arrows"),
	inventory_image = "minerdream_bow_rhodium.png",
	wield_scale = {x=1.55,y=1.55,z=1.2},
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
			local obj = minetest.add_entity(pos, "minerdream:rhodiumarrow")
			if obj then
				minetest.sound_play("", {object=obj})
				obj:setvelocity({x=dir.x * 33.0, y=dir.y * 33.0, z=dir.z * 33.0})
				obj:setacceleration({x=dir.x * -6.5, y=-6.5, z=dir.z * -6.5})
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

local minerdream_rhodiumarrow = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:shotarrow'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_rhodiumarrow.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.140 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:rhodiumarrow" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 9
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 9
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
				minetest.add_item(self.lastpos, "minerdream:arrow")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:rhodiumarrow", minerdream_rhodiumarrow )


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
---------------throwable----------------
minetest.register_craftitem("minerdream:shuriken", {
		description = "".. core.colorize("#BFFFFF", "Shuriken\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "throwable speed: 20\n")..core.colorize("#A0A0A0", "throwable gravity: 8\n")..core.colorize("#A0A0A0", "throwing damage: 4"),
	range = 0,
	stack_max= 500,
	inventory_image = "minerdream_shuriken.png",
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
			local obj = minetest.add_entity(pos, "minerdream:shuriken")
			if obj then
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -8, y=-8, z=dir.z * -8})
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

local minerdream_shuriken = {
	physical = false,
	timer = 0,
	visual = "cube",
	visual_size = {x=0.5, y=0.0,},
	textures = {'minerdream_shuriken.png','minerdream_shuriken.png','minerdream_shuriken.png','minerdream_shuriken.png','minerdream_shuriken.png','minerdream_shuriken.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_shuriken.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.16 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:shuriken" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:shuriken")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:shuriken", minerdream_shuriken)

minetest.register_craftitem("minerdream:throwing_knife", {
		description = "".. core.colorize("#40FF80", "throwing_knife\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "throwable speed: 25\n")..core.colorize("#A0A0A0", "throwable gravity: 6\n")..core.colorize("#A0A0A0", "throwing damage: 6"),
	range = 0,
	stack_max= 500,
	inventory_image = "minerdream_throwing_knife.png",
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
			local obj = minetest.add_entity(pos, "minerdream:throwing_knife")
			if obj then
				obj:setvelocity({x=dir.x * 25, y=dir.y * 25, z=dir.z * 25})
				obj:setacceleration({x=dir.x * -6, y=-6, z=dir.z * -6})
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

local minerdream_throwing_knife = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.5, y=0.5,},
	textures = {'minerdream:thrownknife'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_throwing_knife.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.145 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:throwing_knife" and obj:get_luaentity().name ~= "__builtin:item" then
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
				minetest.add_item(self.lastpos, "minerdream:throwing_knife")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:throwing_knife", minerdream_throwing_knife)

minetest.register_craftitem("minerdream:thrownknife", {
	inventory_image = "minerdream_thrownknife.png",
})

minetest.register_craftitem("minerdream:dark_shuriken", {
		description = "".. core.colorize("#00FF00", "dark shuriken\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "throwable speed: 50\n")..core.colorize("#A0A0A0", "throwable gravity: 5\n")..core.colorize("#A0A0A0", "throwing damage: 8"),
	range = 0,
	stack_max= 500,
	inventory_image = "minerdream_dark_shuriken.png",
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
			local obj = minetest.add_entity(pos, "minerdream:dark_shuriken")
			if obj then
				obj:setvelocity({x=dir.x * 50, y=dir.y * 50, z=dir.z * 50})
				obj:setacceleration({x=dir.x * -5, y=-5, z=dir.z * -5})
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

local minerdream_dark_shuriken = {
	physical = false,
	timer = 0,
	visual = "cube",
	visual_size = {x=0.5, y=0.0,},
	textures = {'minerdream_dark_shuriken.png','minerdream_dark_shuriken.png','minerdream_dark_shuriken.png','minerdream_dark_shuriken.png','minerdream_dark_shuriken.png','minerdream_dark_shuriken.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_dark_shuriken.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.065 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:dark_shuriken" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 8
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					self.object:remove()
				end
			else
				local damage = 8
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
				minetest.add_item(self.lastpos, "minerdream:dark_shuriken")
			end
			minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			self.object:remove()
		end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end

minetest.register_entity("minerdream:dark_shuriken", minerdream_dark_shuriken)

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

----------------spears---------------
--[[
minetest.register_tool("minerdream:spear_bronze", {
		description = "".. core.colorize("#BFFFFF", "Bronze spear\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 6.0 \n")..core.colorize("#A0A0A0", "attack interval: 1.50 "),
	inventory_image = "minerdream_spear_bronze.png",
	wield_scale = {x=2.0,y=2.0,z=1.0},
	range = 6.00,
	tool_capabilities = {
		full_punch_interval = 1.50,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:spear_flint", {
		description = "".. core.colorize("#FFFFFF", "Flint spear\n")..core.colorize("#A0A0A0", "tier: 1 (common)\n")..core.colorize("#A0A0A0", "mele damage: 7\n")..core.colorize("#A0A0A0", "range: 5.9 \n")..core.colorize("#A0A0A0", "attack interval: 1.60 "),
	inventory_image = "minerdream_spear_flint.png",
	wield_scale = {x=1.975,y=1.975,z=0.985},
	range = 5.90,
	tool_capabilities = {
		full_punch_interval = 1.60,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:spear_steel", {
		description = "".. core.colorize("#BFFFFF", "Steel spear\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 7.25\n")..core.colorize("#A0A0A0", "range: 6.1 \n")..core.colorize("#A0A0A0", "attack interval: 1.475 "),
	inventory_image = "minerdream_spear_steel.png",
	wield_scale = {x=2.1,y=2.1,z=1.05},
	range = 6.1,
	tool_capabilities = {
		full_punch_interval = 1.475,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=7.25},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:spear_stainlesssteel", {
		description = "".. core.colorize("#BFFFFF", "Stainless steel spear\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 7.25\n")..core.colorize("#A0A0A0", "range: 6.1 \n")..core.colorize("#A0A0A0", "attack interval: 1.475 "),
	inventory_image = "minerdream_spear_stainlesssteel.png",
	wield_scale = {x=2.1,y=2.1,z=1.05},
	range = 6.1,
	tool_capabilities = {
		full_punch_interval = 1.475,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=7.25},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("minerdream:spear_nickel", {
		description = "".. core.colorize("#BFFFFF", "Nickel spear\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "mele damage: 7.75\n")..core.colorize("#A0A0A0", "range: 6.2 \n")..core.colorize("#A0A0A0", "attack interval: 1.45 "),
	inventory_image = "minerdream_spear_nickel.png",
	wield_scale = {x=2.2,y=2.2,z=1.1},
	range = 6.2,
	tool_capabilities = {
		full_punch_interval = 1.45,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=7.75},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool('minerdream:spear_gold', {
		description = "".. core.colorize("#00FFFF", "Golden spear\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 6.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.675 "),
	wield_scale = {x=2.3,y=2.3,z=1.15},
	inventory_image = "minerdream_spear_gold.png",
	range = 6.25,
	tool_capabilities = {
		full_punch_interval = 1.675,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=8},
	},
})
minetest.register_tool('minerdream:spear_lead', {
		description = "".. core.colorize("#00FFFF", "Golden spear\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 11\n")..core.colorize("#A0A0A0", "range: 6.25 \n")..core.colorize("#A0A0A0", "attack interval: 2.2 "),
	wield_scale = {x=2.3,y=2.3,z=1.15},
	inventory_image = "minerdream_spear_lead.png",
	range = 6.25,
	tool_capabilities = {
		full_punch_interval = 2.2,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool('minerdream:spear_silver', {
		description = "".. core.colorize("#00FFFF", "Silver spear\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 6.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.475 "),
	wield_scale = {x=2.3,y=2.3,z=1.15},
	inventory_image = "minerdream_spear_silver.png",
	range = 6.25,
	tool_capabilities = {
		full_punch_interval = 1.475,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool('minerdream:spear_mese', {
		description = "".. core.colorize("#00FFFF", "MESE spear\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 8\n")..core.colorize("#A0A0A0", "range: 6.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.475 "),
	wield_scale = {x=2.3,y=2.3,z=1.15},
	inventory_image = "minerdream_spear_mese.png",
	range = 6.25,
	tool_capabilities = {
		full_punch_interval = 1.475,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_tool('minerdream:spear_diamond', {
		description = "".. core.colorize("#00FFFF", "Soft diamond spear\n")..core.colorize("#A0A0A0", "tier: 3 (almost rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 6.3 \n")..core.colorize("#A0A0A0", "attack interval: 1.45 "),
	wield_scale = {x=2.4,y=2.4,z=1.2},
	inventory_image = "minerdream_spear_diamond.png",
	range = 6.3,
	tool_capabilities = {
		full_punch_interval = 1.45,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:spear_aluminum', {
		description = "".. core.colorize("#40FF80", "Aluminum spear\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 9\n")..core.colorize("#A0A0A0", "range: 6.7 \n")..core.colorize("#A0A0A0", "attack interval: 1.1 "),
	wield_scale = {x=2.6,y=2.6,z=1.3},
	inventory_image = "minerdream_spear_aluminum.png",
	range = 6.7,
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool('minerdream:spear_platinum', {
		description = "".. core.colorize("#40FF80", "Platinum spear\n")..core.colorize("#A0A0A0", "tier: 4 (rare)\n")..core.colorize("#A0A0A0", "mele damage: 10\n")..core.colorize("#A0A0A0", "range: 6.7 \n")..core.colorize("#A0A0A0", "attack interval: 1.3 "),
	wield_scale = {x=2.6,y=2.6,z=1.3},
	inventory_image = "minerdream_spear_platinum.png",
	range = 6.7,
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool('minerdream:spear_cobalt', {
		description = "".. core.colorize("#0040FF", "Cobalt spear\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 11\n")..core.colorize("#A0A0A0", "range: 6.9 \n")..core.colorize("#A0A0A0", "attack interval: 1.2 "),
	wield_scale = {x=2.8,y=2.8,z=1.4},
	inventory_image = "minerdream_spear_cobalt.png",
	range = 6.9,
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool('minerdream:spear_ruthenium', {
		description = "".. core.colorize("#0040FF", "Ruthenium spear\n")..core.colorize("#A0A0A0", "tier: 5 (extra rare)\n")..core.colorize("#A0A0A0", "mele damage: 12\n")..core.colorize("#A0A0A0", "range: 6.9 \n")..core.colorize("#A0A0A0", "attack interval: 1.35 "),
	wield_scale = {x=2.8,y=2.8,z=1.4},
	inventory_image = "minerdream_spear_ruthenium.png",
	range = 6.9,
	tool_capabilities = {
		full_punch_interval = 1.35,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_tool('minerdream:spear_tantalum', {
		description = "".. core.colorize("#00FF00", "Tantalum spear\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 15\n")..core.colorize("#A0A0A0", "range: 7.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.30 "),
	wield_scale = {x=3.1,y=3.1,z=1.5},
	inventory_image = "minerdream_spear_tantalum.png",
	range = 7.25,
	tool_capabilities = {
		full_punch_interval = 1.30,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=15},
	},
})

minetest.register_tool('minerdream:spear_rhodium', {
		description = "".. core.colorize("#00FF00", "rhodium spear\n")..core.colorize("#A0A0A0", "tier: 6 (epic)\n")..core.colorize("#A0A0A0", "mele damage: 15\n")..core.colorize("#A0A0A0", "range: 7.25 \n")..core.colorize("#A0A0A0", "attack interval: 1.30 "),
	wield_scale = {x=3.1,y=3.1,z=1.5},
	inventory_image = "minerdream_spear_rhodium.png",
	range = 7.25,
	tool_capabilities = {
		full_punch_interval = 1.30,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=15},
	},
})
]]
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

