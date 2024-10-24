--MARK: Active Provider
make_wide_and_tall{
  name = "active-provider-chest",
  subgroup = "wide-logistics-storage",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
      icon_size = 128,
    },
  },
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(24.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-0.5, -0.25),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 24.25-10),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}

--MARK: Passive Provider
make_wide_and_tall{
  name = "passive-provider-chest",
  subgroup = "wide-logistics-storage",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
      icon_size = 128,
    },
  },
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(24.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-0.5, -0.25),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 24.25-10),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}

--MARK: Storage
make_wide_and_tall{
  name = "storage-chest",
  subgroup = "wide-logistics-storage",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
      icon_size = 128,
    },
  },
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(24.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-0.5, -0.25),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 24.25-10),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}

--MARK: Buffer
make_wide_and_tall{
  name = "buffer-chest",
  subgroup = "wide-logistics-storage",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
      icon_size = 128,
    },
  },
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(24.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-0.5, -0.25),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 24.25-10),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}

--MARK: Requester
make_wide_and_tall{
  name = "requester-chest",
  subgroup = "wide-logistics-storage",
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
      icon_size = 128,
    },
  },
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/wide-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 165,
        height = 46,
        shift = util.by_pixel(24.25-10, 8),
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 80,
        height = 128,
        shift = util.by_pixel(-0.5, -0.25),
      },
      {
        filename = "__wide-steel-chests__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 46,
        height = 165,
        shift = util.by_pixel(8, 24.25-10),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-steel-chests__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-steel-chests__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 87,
        height = 192,
        scale = 0.5,
        shift = util.by_pixel(-1, 9),
        direction_count = 1,
      },
    }
  },
}
