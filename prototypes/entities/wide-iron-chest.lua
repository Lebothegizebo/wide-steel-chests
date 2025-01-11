local item_sounds = require("sounds.item_sounds")
make_wide_and_tall{
  name = "iron-chest",
  subgroup = "wide-storage",
  order = "b",
  icons =
  {
    {
      icon = "wide-steel-chests__/graphics/icons/wide-iron-chest.png",
      icon_size = 128,
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "wide-steel-chests__/graphics/entity/iron-chest/wide-iron-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "wide-steel-chests__/graphics/entity/shadows/wide-iron-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 180,
        height = 46,
        shift = util.by_pixel(24.25-10, 6),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "wide-steel-chests__/graphics/entity/iron-chest/tall-iron-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 66,
        height = 140,
        shift = util.by_pixel(-0.5, -0.5),
      },
      {
        filename = "wide-steel-chests__/graphics/entity/shadows/tall-iron-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 110,
        height = 110,
        shift = util.by_pixel(10.25, 7),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "wide-steel-chests__/graphics/remnants/wide-iron-chest-remnants.png",
        width = 192,
        height = 87,
        scale = 0.5,
        shift = util.by_pixel(9, -1),
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = "wide-steel-chests__/graphics/remnants/tall-iron-chest-remnants.png",
        width = 126,
        height = 156,
        scale = 0.5,
        shift = util.by_pixel(13.75, 3.25),
        direction_count = 1,
      },
    }
  },
}
