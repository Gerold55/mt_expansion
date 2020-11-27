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

my_register_stair_and_slab(
	"wool_red",
	"wool:red",
	{cracky = 2},
	{"wool_red.png"},
	"Red Wool Stair",
	"Red Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_yellow",
	"wool:yellow",
	{cracky = 2},
	{"wool_yellow.png"},
	"Yellow Wool Stair",
	"Yellow Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_black",
	"wool:black",
	{cracky = 2},
	{"wool_black.png"},
	"Black Wool Stair",
	"Black Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_white",
	"wool:white",
	{cracky = 2},
	{"wool_white.png"},
	"White Wool Stair",
	"White Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_violet",
	"wool:violet",
	{cracky = 2},
	{"wool_violet.png"},
	"Violet Wool Stair",
	"Violet Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_orange",
	"wool:orange",
	{cracky = 2},
	{"wool_orange.png"},
	"Orange Wool Stair",
	"Orange Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_brown",
	"wool:brown",
	{cracky = 2},
	{"wool_brown.png"},
	"Brown Wool Stair",
	"Brown Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_cyan",
	"wool:cyan",
	{cracky = 2},
	{"wool_cyan.png"},
	"Cyan Wool Stair",
	"Cyan Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_dark_grey",
	"wool:dark_grey",
	{cracky = 2},
	{"wool_dark_grey.png"},
	"Dark Grey Wool Stair",
	"Dark Grey Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_violet",
	"wool:violet",
	{cracky = 2},
	{"wool_violet.png"},
	"Violet Wool Stair",
	"Violet Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_dark_green",
	"wool:dark_green",
	{cracky = 2},
	{"wool_dark_green.png"},
	"Dark Green Wool Stair",
	"Dark Green Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_green",
	"wool:green",
	{cracky = 2},
	{"wool_green.png"},
	"Green Wool Stair",
	"Green Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_pink",
	"wool:pink",
	{cracky = 2},
	{"wool_pink.png"},
	"Pink Wool Stair",
	"Pink Wool Slab",
	default.node_sound_defaults(),
	false
)

my_register_stair_and_slab(
	"wool_magenta",
	"wool:magenta",
	{cracky = 2},
	{"wool_magenta.png"},
	"Magenta Wool Stair",
	"Magenta Wool Slab",
	default.node_sound_defaults(),
	false
)