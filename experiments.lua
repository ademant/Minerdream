


--------projectile ring wand------

minetest.register_tool("minerdream:magic_wand2", {
		description = "".. core.colorize("#BFFFFF", "magic wand2 (testing)\n")..core.colorize("#A0A0A0", "tier: 2 (uncommon)\n")..core.colorize("#A0A0A0", "projectile speed: 15\n")..core.colorize("#A0A0A0", "projectile gravity: 10\n")..core.colorize("#A0A0A0", "ranged damage: 2\n")..core.colorize("#A0A0A0", "mana usage: 5"),
	inventory_image = "minerdream_magic_test.png",
	wield_scale = {x=0.9,y=0.9,z=0.9},
	on_use = function(itemstack, placer, pointed_thing)
		if mana.subtract(placer:get_player_name(), 5) then
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=20,y=0,z=0}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-20,y=0,z=0}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=0,y=0,z=20}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=0,y=0,z=-20}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=14,y=0,z=14}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-14,y=0,z=14}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=14,y=0,z=-14}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-14,y=0,z=-14}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=18,y=0,z=6}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=6,y=0,z=18}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-18,y=0,z=6}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-6,y=0,z=18}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=18,y=0,z=-6}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=6,y=0,z=-18}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-18,y=0,z=-6}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
			-----------------------
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+1.4+dir.y,z=playerpos.z+0+dir.z}, "minerdream:magicring")
			local vec = {x=-6,y=0,z=-18}
			obj:setvelocity(vec)
			local acc = {x=dir.x*0,y=dir.y*0,z=dir.z*0}
			obj:setacceleration(acc)
		end
		return itemstack
	end,
})

local minerdream_magicring = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=1.5, y=1.5,},
	textures = {'minerdream_magic_ring.png'},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minerdream_magicring.on_step = function(self, dtime)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)

	if self.timer > 0.15 then
		local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, 1.5)
		for k, obj in pairs(objs) do
			if obj:get_luaentity() ~= nil then
				if obj:get_luaentity().name ~= "minerdream:magicring" and obj:get_luaentity().name ~= "__builtin:item" then
					local damage = 2
					obj:punch(self.object, 1.0, {
						full_punch_interval = 1.0,
						damage_groups= {fleshy = damage},
					}, nil)
					minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})

				end
			else
				local damage = 2
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


minetest.register_entity("minerdream:magicring", minerdream_magicring )



