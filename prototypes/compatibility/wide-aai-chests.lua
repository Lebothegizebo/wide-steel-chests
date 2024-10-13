require("scripts.compatibility.wide-aai-chests.sprites")

--wide-steel-chest--
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].width=128
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].height=74
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].width=102
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].height=50
data.raw["item"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["recipe"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png"
data.raw["corpse"]["wide-steel-chest-remnants"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["corpse"]["wide-steel-chest-remnants"]["animation"].filename = "__wide-aai-chests__/graphics/remnants/wide-steel-chest-remnants.png"
--shift--
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].shift = util.by_pixel(0, -2)
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].shift = util.by_pixel(26, 3)
data.raw["corpse"]["wide-steel-chest-remnants"]["animation"].shift = util.by_pixel(9, -1)

--technology--

data.raw["technology"]["wide-steel-containers"].icon="__wide-aai-chests__/graphics/technology/wide-steel-containers.png"

--circuit connector sprites
data.raw["container"]["wide-steel-chest"].circuit_wire_connection_point = wide_aai_chest_circuit_connector_definitions.points
data.raw["container"]["wide-steel-chest"].circuit_connector_sprites = nil
