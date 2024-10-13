require("scripts.compatibility.wide-aai-chests.sprites")

--wide-wooden-chest--

data.raw["item"]["wide-wooden-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-wooden-chest.png"
data.raw["recipe"]["wide-wooden-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-wooden-chest.png"
data.raw["container"]["wide-wooden-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-wooden-chest.png"
data.raw["container"]["wide-wooden-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/wide-wooden-chest.png"
data.raw["container"]["wide-wooden-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-wooden-chest-shadow.png"
data.raw["corpse"]["wide-wooden-chest-remnants"].icon = "__wide-aai-chests__/graphics/icons/wide-wooden-chest.png"
data.raw["corpse"]["wide-wooden-chest-remnants"]["animation"].filename = "__wide-aai-chests__/graphics/remnants/wide-wooden-chest-remnants.png"
--shift--
data.raw["container"]["wide-wooden-chest"]["picture"].layers[1].shift = util.by_pixel(0.5, -2)
data.raw["container"]["wide-wooden-chest"]["picture"].layers[2].shift = util.by_pixel(21.25-10, 8)
data.raw["corpse"]["wide-wooden-chest-remnants"]["animation"].shift = util.by_pixel(9, -1)

--wide_iron-chest--

data.raw["item"]["wide-iron-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-iron-chest.png"
data.raw["recipe"]["wide-iron-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-iron-chest.png"
data.raw["container"]["wide-iron-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-iron-chest.png"
data.raw["container"]["wide-iron-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/wide-iron-chest.png"
data.raw["container"]["wide-iron-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-iron-chest-shadow.png"
data.raw["corpse"]["wide-iron-chest-remnants"].icon = "__wide-aai-chests__/graphics/icons/wide-iron-chest.png"
data.raw["corpse"]["wide-iron-chest-remnants"]["animation"].filename = "__wide-aai-chests__/graphics/remnants/wide-iron-chest-remnants.png"
--shift--
data.raw["container"]["wide-iron-chest"]["picture"].layers[1].shift = util.by_pixel(-0.25, -0.5)
data.raw["container"]["wide-iron-chest"]["picture"].layers[2].shift = util.by_pixel(24.25-10, 6)
data.raw["corpse"]["wide-iron-chest-remnants"]["animation"].shift = util.by_pixel(9, -1)

--wide-steel-chest--

data.raw["item"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["recipe"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].filename = "__wide-aai-chests__/graphics/entity/wide-steel-chest.png"
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].filename = "__wide-aai-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png"
data.raw["corpse"]["wide-steel-chest-remnants"].icon = "__wide-aai-chests__/graphics/icons/wide-steel-chest.png"
data.raw["corpse"]["wide-steel-chest-remnants"]["animation"].filename = "__wide-aai-chests__/graphics/remnants/wide-steel-chest-remnants.png"
--shift--
data.raw["container"]["wide-steel-chest"]["picture"].layers[1].shift = util.by_pixel(-0.25, -0.5)
data.raw["container"]["wide-steel-chest"]["picture"].layers[2].shift = util.by_pixel(24.25-10, 8)
data.raw["corpse"]["wide-steel-chest-remnants"]["animation"].shift = util.by_pixel(9, -1)

--technology--

data.raw["technology"]["wide-steel-containers"].icon="__wide-aai-chests__/graphics/technology/wide-steel-containers.png"
data.raw["technology"]["wide-containers"].icon="__wide-aai-chests__/graphics/technology/wide-containers.png"


--circuit connector sprites
data.raw["container"]["wide-wooden-chest"].circuit_wire_connection_point = circuit_connector_definitions["wide-aai-chest"].points
data.raw["container"]["wide-wooden-chest"].circuit_connector_sprites = nil
data.raw["container"]["wide-iron-chest"].circuit_wire_connection_point = circuit_connector_definitions["wide-aai-chest"].points
data.raw["container"]["wide-iron-chest"].circuit_connector_sprites = nil
data.raw["container"]["wide-steel-chest"].circuit_wire_connection_point = circuit_connector_definitions["wide-aai-chest"].points
data.raw["container"]["wide-steel-chest"].circuit_connector_sprites = nil
