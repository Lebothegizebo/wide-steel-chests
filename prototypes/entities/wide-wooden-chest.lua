local item_sounds = require("sounds.item_sounds")
make_wide_and_tall{
  name = "wooden-chest",
  subgroup = "wide-storage",
  order = "a",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-wooden-chest.png",
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
        filename = "__wide-steel-chests__/graphics/entity/wooden-chest/wide-wooden-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(0.5, -2),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-wooden-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(21.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wooden-chest/tall-wooden-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 62,
        height = 136,
        shift = util.by_pixel(0.5, -2),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-wooden-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 104,
        height = 108,
        shift = util.by_pixel(10.25, 6),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-wooden-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-wooden-chest-remnants.png",
        width = 110,
        height = 136,
        scale = 0.5,
        shift = util.by_pixel(7.5, -1.5),
        direction_count = 1,
      },
    }
  },
}
