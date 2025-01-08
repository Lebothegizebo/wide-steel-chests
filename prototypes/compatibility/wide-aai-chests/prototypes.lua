local meld = require("meld")

--Loads all req
require("scripts.compatibility.wide-aai-chests.sprites")

-- New graphics
local wide_steel_icon = {
	{icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"}
}
local wide_steel_graphics = {
	layers = meld.overwrite{
		{
			filename = "__wide-aai-chests__/graphics/entity/wide-steel-chest.png",
			width = 128,
			height = 74,
			scale = 0.5,
			shift = util.by_pixel(0, -2),
		},
		{
			filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
			width = 102,
			height = 50,
			scale = 0.5,
			shift = util.by_pixel(26, 3),
			draw_as_shadow = true
		}
	}
}
local tall_steel_graphics = {
	layers = meld.overwrite{
		{
			filename = "__wide-aai-chests__/graphics/entity/tall-steel-chest.png",
			width=64,
			height=148,
			scale = 0.5,
			shift = util.by_pixel(0, 0),
		},
		{
			filename = "__wide-aai-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
			width=102,
			height=148,
			scale = 0.5,
			shift = util.by_pixel(9, 3),
			draw_as_shadow = true
		}
	}
}

-- Wide steel chest
data.raw["item"]["wide-steel-chest"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
meld(data.raw["container"]["wide-steel-chest"], {
	icons = wide_steel_icon,
	picture = wide_steel_graphics
})
-- Tall steel chest
meld(data.raw["container"]["tall-steel-chest"], {
	icons = wide_steel_icon,
	picture = tall_steel_graphics
})
-- Rotatable steel chest
meld(data.raw["assembling-machine"]["rotatable-steel-chest"], {
	icons = wide_steel_icon,
	graphics_set = {
		animation = {
			north = wide_steel_graphics,
			east = tall_steel_graphics,
			west = tall_steel_graphics,
		}
	}
})

-- Wide steel chest corpse
meld(data.raw["corpse"]["wide-steel-chest-remnants"], {
	icons = wide_steel_icon,
	animation = {
		layers = meld.overwrite{
			{
				filename = "__wide-aai-chests__/graphics/remnants/wide-steel-chest-remnants.png",
				width = 128,
				height = 74,
				scale = 0.5,
				shift = util.by_pixel(0, -2),
				direction_count = 1,
			},
			{
				filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
				width = 102,
				height = 50,
				scale = 0.5,
				shift = util.by_pixel(26, 3),
				direction_count = 1,
				draw_as_shadow = true,
			}
		}
	}
})

-- Tall steel chest corpse
meld(data.raw["corpse"]["tall-steel-chest-remnants"], {
	icons = wide_steel_icon,
	animation = {
		layers = meld.overwrite{
			{
				filename = "__wide-aai-chests__/graphics/remnants/tall-steel-chest-remnants.png",
				width = 128,
				height = 74,
				scale = 0.5,
				shift = util.by_pixel(0, -2),
				direction_count = 1,
			},
			{
				filename = "__wide-aai-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
				width = 102,
				height = 50,
				scale = 0.5,
				shift = util.by_pixel(26, 3),
				direction_count = 1,
				draw_as_shadow = true,
			}
		}
	}
})

--technology--
data.raw["technology"]["wide-steel-containers"].icons[1].icon="__wide-aai-chests__/graphics/technology/wide-steel-containers.png"

--circuit connector sprites
data.raw["container"]["wide-steel-chest"].circuit_connector.sprites = nil
data.raw["container"]["wide-steel-chest"].circuit_connector.points = wide_aai_chest_circuit_connector_definitions.points
data.raw["container"]["tall-steel-chest"].circuit_connector.sprites = nil
data.raw["container"]["tall-steel-chest"].circuit_connector.points = tall_aai_chest_circuit_connector_definitions.points