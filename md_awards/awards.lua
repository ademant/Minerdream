if minetest.get_modpath("awards") then

		awards.register_achievement("minerdream_caveman", {
			title = ("Caveman"),
			description = ("You crafted yourself a flint spear, but what if I told you... in 21th century, there's way better weapons than that!"),
			icon = "minerdream_achievement_caveman.png",
			trigger = {
				type = "craft",
				item = "minerdream:spear_flint",
				target = 1
			}
		})

		awards.register_achievement("minerdream_armed", {
			title = ("Armed!"),
			description = ("Craft a handgun"),
			icon = "minerdream_achievement_armed.png",
			trigger = {
				type = "craft",
				item = "minerdream:handgun",
				target = 1
			}
		})

	awards.register_achievement("minerdream_secondminer", {
		title = ("Second place miner"),
		description = ("You've found some silver! Head for the gold now."),
		icon = "minerdream_achievement_secondminer.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "minerdream:stone_with_silver",
			target = 1
		}
	})


	awards.register_achievement("minerdream_neatjunk", {
		title = ("Neat junk!"),
		description = ("Break the most common loot box. I wonder what's inside?"),
		icon = "minerdream_achievement_neatjunk.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "minerdream:treasure1",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall1", {
		title = ("Mined common metals"),
		description = ("You mined quite common metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level1.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall1",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall2", {
		title = ("Mined quite uncommon metals"),
		description = ("You mined quite uncommon metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level2.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall2",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall3", {
		title = ("Mined almost rare metals"),
		description = ("You mined almost rare metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level3.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall3",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall4", {
		title = ("Mined rare metals"),
		description = ("You mined rare metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level4.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall4",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall5", {
		title = ("Mined extra rare metals"),
		description = ("You mined extra rare metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level5.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall5",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall6", {
		title = ("Mined epic metals"),
		description = ("You mined epic metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level6.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall6",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall7", {
		title = ("Mined royal metals"),
		description = ("You mined royal metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level7.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall7",
			target = 1
		}
	})
	awards.register_achievement("minerdream_metall8", {
		title = ("Mined heroic metals"),
		description = ("You mined heroic metals. Keep going."),
		icon = "minerdream_achievement_secondminer.png^awards_level8.png",
		background = "awards_bg_mining.png",
		trigger = {
			type = "dig",
			node = "group:metall8",
			target = 1
		}
	})

	awards.register_achievement("minerdream_health", {
		title = ("Maintaining good health"),
		description = ("Consume a vitamin pill for the first time"),
		icon = "minerdream_achievement_health.png",
		trigger = {
			type = "eat",
			item = "minerdream:vitamin",
			target = 1
		}
	})

end
