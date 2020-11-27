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
