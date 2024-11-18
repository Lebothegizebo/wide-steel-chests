--Loads all req
require("scripts.compatibility.wide-aai-chests.sprites")

--MARK wide-steel-chest
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].width=128
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].height=74
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].width=102
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].height=50
data.raw["item"]["wide-steel-chest"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["recipe"]["wide-steel-chest"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png"
--shift--
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].shift = util.by_pixel(0, -2)
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].shift = util.by_pixel(26, 3)
--corpse--
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1] = {}
data.raw["corpse"]["wide-steel-chest-remnants"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].width = 128
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].height = 74
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].scale = 0.5
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].filename = "__wide-aai-chests__/graphics/remnants/wide-steel-chest-remnants.png"
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].shift = util.by_pixel(0, -2)
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[1].direction_count = 1
--corpse-shadow--
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2] = {}
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png"
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].width = 102
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].height = 50
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].scale = 0.5
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].shift = util.by_pixel(26, 3)
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].direction_count = 1
data.raw["corpse"]["wide-steel-chest-remnants"].animation.layers[2].draw_as_shadow = true

-- MARK tall-steel-chest
data.raw["container"]["tall-steel-chest"]["picture"].layers[1].width=64
data.raw["container"]["tall-steel-chest"]["picture"].layers[1].height=148
data.raw["container"]["tall-steel-chest"]["picture"].layers[2].width=102
data.raw["container"]["tall-steel-chest"]["picture"].layers[2].height=148
data.raw["container"]["tall-steel-chest"].icons[1].icon = "__wide-aai-chests__/graphics/icons/tall-steel-chest.png"
data.raw["container"]["tall-steel-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/tall-steel-chest.png"
data.raw["container"]["tall-steel-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png"
--shift--
data.raw["container"]["tall-steel-chest"]["picture"].layers[1].shift = util.by_pixel(0, 0)
data.raw["container"]["tall-steel-chest"]["picture"].layers[2].shift = util.by_pixel(9, 3)
--corpse--
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1] = {}
data.raw["corpse"]["tall-steel-chest-remnants"].icons[1].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].width = 128
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].height = 74
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].scale = 0.5
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].filename = "__wide-aai-chests__/graphics/remnants/tall-steel-chest-remnants.png"
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].shift = util.by_pixel(0, -2)
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[1].direction_count = 1
--corpse-shadow--
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2] = {}
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png"
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].width = 102
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].height = 50
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].scale = 0.5
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].shift = util.by_pixel(26, 3)
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].direction_count = 1
data.raw["corpse"]["tall-steel-chest-remnants"].animation.layers[2].draw_as_shadow = true

--technology--

data.raw["technology"]["wide-steel-containers"].icons[1].icon="__wide-aai-chests__/graphics/technology/wide-steel-containers.png"

--circuit connector sprites
data.raw["container"]["wide-steel-chest"].circuit_connector.sprites = nil
data.raw["container"]["wide-steel-chest"].circuit_connector.points = wide_aai_chest_circuit_connector_definitions.points
data.raw["container"]["tall-steel-chest"].circuit_connector.sprites = nil
data.raw["container"]["tall-steel-chest"].circuit_connector.points = wide_aai_chest_circuit_connector_definitions.points
