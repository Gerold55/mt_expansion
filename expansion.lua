local S = minetest.get_translator("default")

local brick_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:150'},
{'Blue', 'blue', 'blue:100'},
{'Brown', 'brown', '#964B00:100'},
{'Cyan', 'cyan', 'cyan:100'},
{'Dark Green', 'dark_green', 'green:100'},
{'Dark Grey', 'dark_grey', 'black:110'},
{'Green', 'green', '#32cd32:160'},
{'Grey', 'grey', 'black:75'},
{'Magenta', 'magenta', '#ff00ff:130'},
{'Orange', 'orange', '#FF6A00:130'},
{'Pink', 'pink', 'pink:170'},
{'Red', 'red', '#FF0000:100'},
{'Violet', 'violet', '#9B26B6:130'},
{'White', 'white', 'white:1'},
{'Yellow', 'yellow', 'yellow:100'},
}

for i in ipairs (brick_table) do
	local name = brick_table[i][1]
	local color = brick_table[i][2]
	local hex = brick_table[i][3]

minetest.register_node("mt_expansion:brick_"..color, {
	description = S(name.." Brick Block"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {
		"expansion_brick.png^[transformFX^[colorize:"..hex.."^expansion_brick_overlay.png",
		"expansion_brick.png^[colorize:"..hex.."^expansion_brick_overlay.png",
	},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
end

minetest.register_node("mt_expansion:brick_white", {
	description = S("White Brick"),
	tiles = {"expansion_brick_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

-- bookshelf

local book_table = { --name, material, invimg
{'Bookshelf', 'wood'},
{'Acacia Bookshelf', 'acacia_wood'},
{'Pine Bookshelf', 'pine_wood'},
{'Aspen Bookshelf', 'aspen_wood'},
{'Aspen Bookshelf', 'aspen_wood'},
{'Jungle Bookshelf', 'junglewood'},
}

for i in ipairs (book_table) do
	local name = book_table[i][1]
	local material = book_table[i][2]
	local invimg = book_table[i][3]
	
minetest.register_node('mt_expansion:bookshelf_'..material, {
	description = name,
	drawtype = 'nodebox',
	tiles = {"default_"..material..".png", "default_"..material..".png", "default_"..material..".png",
		"default_"..material..".png","default_"..material..".png^expansion_bookshelf_overlay.png"},
	align_style="world",
	groups = {snappy = 2, oddly_breakable_by_hand = 2, flammable = 1},
	drop = 'default:book',
	paramtype = 'light',
	paramtype2 = 'facedir',
	sounds = default.node_sound_wood_defaults(),
})
end

-- Turf

local grass_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Black', 'black', 'black:150'},
{'Blue', 'blue', 'blue:100'},
{'Brown', 'brown', '#964B00:100'},
{'Cyan', 'cyan', 'cyan:100'},
{'Dark Green', 'dark_green', 'green:100'},
{'Dark Grey', 'dark_grey', 'black:110'},
{'Green', 'green', '#32cd32:160'},
{'Grey', 'grey', 'black:75'},
{'Magenta', 'magenta', '#ff00ff:130'},
{'Orange', 'orange', '#FF6A00:130'},
{'Pink', 'pink', 'pink:170'},
{'Red', 'red', '#FF0000:100'},
{'Violet', 'violet', '#9B26B6:130'},
{'Yellow', 'yellow', 'yellow:100'},
}

for i in ipairs (grass_table) do
	local name = grass_table[i][1]
	local color = grass_table[i][2]
	local hex = grass_table[i][3]

minetest.register_node("mt_expansion:fake_grass_"..color, {
	description = S(name.." Turf Block"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {
		"expansion_fake_grass.png^[transformFX^[colorize:"..hex,
		"expansion_fake_grass.png^[colorize:"..hex,
	},
	is_ground_content = false,
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})
end

minetest.register_node("mt_expansion:fake_grass_white", {
	description = S("White Turf Block"),
	tiles = {"expansion_fake_grass_white.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- Colored Wood

local wood_table = { --name, color, colorize(hex or color name:intensity(1-255))
{'Blue', 'blue', 'blue:100'},
{'Brown', 'brown', '#964B00:100'},
{'Cyan', 'cyan', 'cyan:100'},
{'Dark Green', 'dark_green', 'green:100'},
{'Green', 'green', '#32cd32:160'},
{'Magenta', 'magenta', '#ff00ff:130'},
{'Orange', 'orange', '#FF6A00:130'},
{'Pink', 'pink', 'pink:170'},
{'White', 'white', 'white:1'},
{'Red', 'red', '#FF0000:100'},
{'Violet', 'violet', '#9B26B6:130'},
{'Yellow', 'yellow', 'yellow:100'},
}

for i in ipairs (wood_table) do
	local name = wood_table[i][1]
	local color = wood_table[i][2]
	local hex = wood_table[i][3]

minetest.register_node("mt_expansion:wood_"..color, {
	description = S(name.." Wood"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {
		"default_wood.png^[colorize:"..hex,
		"default_wood.png^[colorize:"..hex,
	},
	is_ground_content = false,
	groups = {cracky = 3},
	sounds = default.node_sound_wood_defaults(),
})
end

minetest.register_node("mt_expansion:wood_white", {
	description = S("White Wood"),
	tiles = {"expansion_wood_white.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("mt_expansion:wood_brown", {
	description = S("Brown Wood"),
	tiles = {"expansion_wood_brown.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_wood_defaults(),
})

--minerals

minetest.register_node("mt_expansion:stone_with_sapphire", {
	description = S("Sapphire Ore"),
	tiles = {"default_stone.png^expansion_sapphire_ore_overlay.png"},
	groups = {cracky = 3},
	drop = "mt_expansion:sapphire_gem",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:sapphire_block", {
	description = S("Sapphire Block"),
	tiles = {"expansion_sapphire_block.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("mt_expansion:sapphire_gem", {
	description = S("Sapphire Gem"),
	inventory_image = "expansion_sapphire_item.png",
})

minetest.register_node("mt_expansion:marble", {
	description = S("Marble"),
	tiles = {"expansion_marble.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:marble_cobble", {
	description = S("Marble Cobble"),
	tiles = {"expansion_marble_cobble.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:limestone", {
	description = S("Limestone"),
	tiles = {"expansion_limestone.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:limestone_cobble", {
	description = S("Limestone Cobble"),
	tiles = {"expansion_lime_cobble.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:limestone_bricks_med", {
	description = S("Limestone Medium Bricks"),
	tiles = {"expansion_lime_bricks_med.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:limestone_bricks_small", {
	description = S("Limestone Small Bricks"),
	tiles = {"expansion_lime_smallbricks.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:limestone_polished", {
	description = S("Limestone Polished"),
	tiles = {"expansion_lime_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:slate", {
	description = S("Slate"),
	tiles = {"expansion_slate.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:slate_cobble", {
	description = S("Slate Cobble"),
	tiles = {"expansion_slate_cobble.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:slate_bricks", {
	description = S("Slate Bricks"),
	tiles = {"expansion_slate_bricks.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mt_expansion:slate_polished", {
	description = S("Slate Polished"),
	tiles = {"expansion_slate_polished.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})