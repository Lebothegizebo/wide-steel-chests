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
  horizontal_connection = 
  {
    circuit_connector=circuit_connector_definitions["wide_container"]
  },
  vertical_connection = 
  {
    circuit_connector=circuit_connector_definitions["tall_container"]
  },
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-wooden-chest.png",
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
        filename = "__wide-steel-chests__/graphics/entity/tall-wooden-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-2, 0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-wooden-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 21.25-10),
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
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}
