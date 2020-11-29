local S = minetest.get_translator("mt_expansion")

-- Stairs/slabs

-- Add custom stairs and slabs

function stairs.register_stair_and_slab(subname, recipeitem, groups, images,
		desc_stair, desc_slab, sounds, worldaligntex,
		desc_stair_inner, desc_stair_outer)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair,
		sounds, worldaligntex)
	stairs.register_stair_inner(subname, recipeitem, groups, images,
		desc_stair, sounds, worldaligntex, desc_stair_inner)
	stairs.register_stair_outer(subname, recipeitem, groups, images,
		desc_stair, sounds, worldaligntex, desc_stair_outer)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab,
		sounds, worldaligntex)
end

-- Local function so we can apply translations
local function my_register_stair_and_slab(subname, recipeitem, groups, images,
		desc_stair, desc_slab, sounds, worldaligntex)
	stairs.register_stair(subname, recipeitem, groups, images, S(desc_stair),
		sounds, worldaligntex)
	stairs.register_stair_inner(subname, recipeitem, groups, images, "",
		sounds, worldaligntex, S("Inner " .. desc_stair))
	stairs.register_stair_outer(subname, recipeitem, groups, images, "",
		sounds, worldaligntex, S("Outer " .. desc_stair))
	stairs.register_slab(subname, recipeitem, groups, images, S(desc_slab),
		sounds, worldaligntex)
end

local stairs_table = { --name, color, colorize(hex or color name:intensity(1-255))
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
{'White', 'white', 'white:1'},
{'Red', 'red', '#FF0000:100'},
{'Violet', 'violet', '#9B26B6:130'},
{'Yellow', 'yellow', 'yellow:100'},
}

for i in ipairs (stairs_table) do
	local name = stairs_table[i][1]
	local color = stairs_table[i][2]
	local hex = stairs_table[i][3]

my_register_stair_and_slab(
	"wool_"..color,
	"wool:"..color,
	{cracky = 2},
	{"wool_"..color..".png"},
	name.." Wool Stair",
	name.." Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"brick_"..color,
	"mt_expansion:brick_"..color,
	{cracky = 2},
	{"expansion_brick.png^[transformFX^[colorize:"..hex.."^expansion_brick_overlay.png",
		"expansion_brick.png^[colorize:"..hex.."^expansion_brick_overlay.png",},
	name.." Brick Stair",
	name.." Brick Slab",
	default.node_sound_stone_defaults(),
	false
)

my_register_stair_and_slab(
	"wood_"..color,
	"wood:"..color,
	{cracky = 2},
	{"default_wood.png^[colorize:"..hex},
	name.." Wood Stair",
	name.." Wood Slab",
	default.node_sound_wood_defaults(),
	false
)
end