local meld = require("meld")

--- Single Chest
meld(data.raw["item"]["wooden-chest"], {
	icon = meld.delete(),
	icons = {
		{
			icon = "__wide-containers-assets__/graphics/easter-egg/icons/minecraft-chest.png",
			icon_size = 128,
		}
	}
})
meld(data.raw.container["wooden-chest"], {
	inventory_size = 27,
	icon = meld.delete(),
	icons = {{
			icon = "__wide-containers-assets__/graphics/easter-egg/icons/minecraft-chest.png",
			icon_size = 128,
	}},
	picture = {
		layers = {
			meld.overwrite{
				filename = "__wide-containers-assets__/graphics/easter-egg/minecraft-chest.png",
				height = 64,
				width = 64,
				scale = 0.5,
				shift = util.by_pixel(0, 0),
			}
		}
	},
	open_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestopen.ogg"},
	close_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestclosed.ogg"},
})

-- Double chest graphics
local wide_wooden_icon = {
	{icon = "__wide-containers-assets__/graphics/easter-egg/icons/minecraft-wide-chest.png"}
}
local wide_wooden_graphics = {
	layers = {
		meld.overwrite{
			filename = "__wide-containers-assets__/graphics/easter-egg/minecraft-wide-chest.png",
			width=128,
			height=64,
			scale = 0.5,
			shift = util.by_pixel(0, 0),
		}
	}
}
local tall_wooden_graphics = {
	-- TODO: add tall wooden chest graphics
}

-- Wide wooden chest
data.raw["item"]["wide-wooden-chest"].icons[1].icon = "__wide-containers-assets__/graphics/easter-egg/icons/minecraft-wide-chest.png"
meld(data.raw.container["wide-wooden-chest"], {
	inventory_size = 54,
	icons = wide_wooden_icon,
	picture = wide_wooden_graphics,
	open_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestopen.ogg"},
	close_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestclosed.ogg"},
})
-- tall wooden chest
meld(data.raw.container["tall-wooden-chest"], {
	inventory_size = 54,
	icons = wide_wooden_icon,
	picture = tall_wooden_graphics,
	open_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestopen.ogg"},
	close_sound = {filename = "__wide-containers-assets__/sound/easter-egg/chestclosed.ogg"},
})
-- Rotatable wooden chest
meld(data.raw["assembling-machine"]["rotatable-wooden-chest"], {
	icons = wide_wooden_icon,
	graphics_set = {
		animation = {
			north = wide_wooden_graphics,
			east = tall_wooden_graphics,
			west = tall_wooden_graphics,
		}
	}
})