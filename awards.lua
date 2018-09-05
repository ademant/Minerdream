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