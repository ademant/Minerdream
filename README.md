[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
#Minerdream modpack
The minerdream modpack of davieddoesminetest is a great work, I wanted to extend.
After a big deal of redesign I created a modpack to integrete minerdream better with other mods. The loot nodes is a nice idea, which I out sourced into an own mod, making it easier to use it in other mods.

##Minerdream
The main work is in mod minerdream.

The definition of ores are redesigned using a spreadsheet file. This configuration is loaded and all needed items and dependencies are registered by special functions.

##md_awards
In original mod Minerdream defined awards are separated into an own mod, reducing minerdream to base functions.
Also the loot nodes, which are out sourced into mod treasure, is extended by items of minerdream.

##md_technic
Extend the idea of special ores: The standard furnace burns only items with a low burn time. Special ores can only be smelted in a new smelter. The smelter needs clay bricks as refractory.


# Minerdream_mod
[davieddoesminetest] A mod, that makes minig way more fun, and is a replacement for Xtraores, which I abandoned.

[ademant]
In the first step my work was mostly invisible to provide a kind of api to configure the new cool ores by a simple text file and to make the coexistence with other mods a little bit more smooth.

Beside the ores the default furnace is modified to cook only items with a cooking time less (say) 30 seconds.
Ores with a higher cooking time are smelted in a new smelter, which use clay bricks refractories to achieve higher temperatures.
This clay bricks wear out and have to renewed.
