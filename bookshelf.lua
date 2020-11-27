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