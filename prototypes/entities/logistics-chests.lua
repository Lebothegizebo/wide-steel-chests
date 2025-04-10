

--Wide chest
local wide_chest = "__wide-steel-chests__/graphics/entity/logistic-chest/wide-logistic-chest.png"
local wide_chest_mask = "__wide-steel-chests__/graphics/entity/logistic-chest/wide-logistic-chest-mask.png"
local wide_chest_shadow = "__wide-steel-chests__/graphics/entity/shadows/wide-logistic-chest-shadow.png"
local wide_chest_hw = {130, 80, 165, 46} --Width, Height, Width, Height
local wide_chest_shift = {util.by_pixel(0, -2.5), util.by_pixel(24.25-4, 4)}
--Remnants
local wide_remnants = "__wide-steel-chests__/graphics/remnants/wide-logistic-chest-remnants.png"
local wide_remnants_hw = {200, 88}
local wide_remnants_shift = util.by_pixel(9, -1)

--Tall chest
local tall_chest = "__wide-steel-chests__/graphics/entity/logistic-chest/tall-logistic-chest.png"
local tall_chest_mask = "__wide-steel-chests__/graphics/entity/logistic-chest/tall-logistic-chest-mask.png"
local tall_chest_shadow = "__wide-steel-chests__/graphics/entity/shadows/tall-logistic-chest-shadow.png"
local tall_chest_hw = {66, 138, 110, 108} --Width, Height, Width, Height
local tall_chest_shift = {util.by_pixel(0, -2), util.by_pixel(12.25, 5.25)}
--Remnants
local tall_remnants = "__wide-steel-chests__/graphics/remnants/tall-logistic-chest-remnants.png"
local tall_remnants_hw = {150,152}
local tall_remnants_shift = util.by_pixel(14.75, -1)

--Local Varibles
local icon = "__wide-steel-chests__/graphics/icons/wide-logistic-chest.png"
local icon_mask = "__wide-steel-chests__/graphics/icons/wide-logistic-chest-mask.png"

local tint_passive = {r=220,g=61,b=65} --passive tint
local tint_active = {r=200,g=87,b=253}  --active tint
local tint_storage = {r=230,g=180,b=66} --storage tint
local tint_buffer = {r=70,g=200,b=70} --buffer tint
local tint_requester = {r=80,g=160,b=220} -- requester tint

--MARK: Active Provider
make_wide_and_tall{
  name = "logistic-chest-active-provider",
  subgroup = "wide-logistics-storage",
  order = "d",
  icons =
  {
    {
      icon = icon,
      icon_size = 128,
    },
    {
      icon = icon_mask,
      icon_size = 128,
      tint = tint_active
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_animation =
  {
    layers =
    {
      {
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        frame_count = 7,

      },
      {
        tint = tint_active,
        filename = wide_chest_mask,
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  vertical_animation =
  {
    layers =
    {
      {
        filename = tall_chest,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        frame_count = 7,
      },
      {
        tint = tint_active,
        filename = tall_chest_mask,
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = wide_remnants,
        width = wide_remnants_hw[1],
        height = wide_remnants_hw[2],
        scale = 0.5,
        shift = wide_remnants_shift,
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = tall_remnants,
        width = tall_remnants_hw[1],
        height = tall_remnants_hw[2],
        scale = 0.5,
        shift = tall_remnants_shift,
        direction_count = 1,
      },
    }
  },
}

--MARK: Passive Provider
make_wide_and_tall{
  name = "logistic-chest-passive-provider",
  subgroup = "wide-logistics-storage",
  order = "e",
  icons =
  {
    {
      icon = icon,
      icon_size = 128,
    },
    {
      icon = icon_mask,
      icon_size = 128,
      tint = tint_passive
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_animation =
  {
    layers =
    {
      {
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        frame_count = 7
      },
      {
        filename = wide_chest_mask,
        tint = tint_passive,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  vertical_animation =
  {
    layers =
    {
      {
        filename = tall_chest,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        frame_count = 7,
      },
      {
        tint = tint_passive,
        filename = tall_chest_mask,
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = wide_remnants,
        width = wide_remnants_hw[1],
        height = wide_remnants_hw[2],
        scale = 0.5,
        shift = wide_remnants_shift,
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = tall_remnants,
        width = tall_remnants_hw[1],
        height = tall_remnants_hw[2],
        scale = 0.5,
        shift = tall_remnants_shift,
        direction_count = 1,
      },
    }
  },
}

--MARK: Storage
make_wide_and_tall{
  name = "logistic-chest-storage",
  subgroup = "wide-logistics-storage",
  order = "f",
  icons =
  {
    {
      icon = icon,
      icon_size = 128,
    },
    {
      icon = icon_mask,
      icon_size = 128,
      tint = tint_storage
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_animation =
  {
    layers =
    {
      {
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        frame_count = 7
      },
      {
        filename = wide_chest_mask,
        tint = tint_storage,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  vertical_animation =
  {
    layers =
    {
      {
        filename = tall_chest,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        frame_count = 7,
      },
      {
        tint = tint_storage,
        filename = tall_chest_mask,
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = wide_remnants,
        width = wide_remnants_hw[1],
        height = wide_remnants_hw[2],
        scale = 0.5,
        shift = wide_remnants_shift,
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = tall_remnants,
        width = tall_remnants_hw[1],
        height = tall_remnants_hw[2],
        scale = 0.5,
        shift = tall_remnants_shift,
        direction_count = 1,
      },
    }
  },
}

--MARK: Buffer
make_wide_and_tall{
  name = "logistic-chest-buffer",
  subgroup = "wide-logistics-storage",
  order = "g",
  icons =
  {
    {
      icon = icon,
      icon_size = 128,
    },
    {
      icon = icon_mask,
      icon_size = 128,
      tint = tint_buffer
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_animation =
  {
    layers =
    {
      {
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        frame_count =  7,
      },
      {
        filename = wide_chest_mask,
        tint = tint_buffer,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  vertical_animation =
  {
    layers =
    {
      {
        filename = tall_chest,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        frame_count = 7,
      },
      {
        tint = tint_buffer,
        filename = tall_chest_mask,
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = wide_remnants,
        width = wide_remnants_hw[1],
        height = wide_remnants_hw[2],
        scale = 0.5,
        shift = wide_remnants_shift,
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = tall_remnants,
        width = tall_remnants_hw[1],
        height = tall_remnants_hw[2],
        scale = 0.5,
        shift = tall_remnants_shift,
        direction_count = 1,
      },
    }
  },
}

--MARK: Requester
make_wide_and_tall{
  name = "logistic-chest-requester",
  subgroup = "wide-logistics-storage",
  order = "h",
  icons =
  {
    {
      icon = icon,
      icon_size = 128,
    },
    {
      icon = icon_mask,
      icon_size = 128,
      tint = tint_requester
    },
  },
  inventory_multiplier = 2,
  collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  horizontal_connection = circuit_connector_definitions["wide_container"],
  vertical_connection = circuit_connector_definitions["tall_container"],
  horizontal_animation =
  {
    layers =
    {
      {
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        frame_count = 7,
      },
      {
        filename = wide_chest_mask,
        priority = "extra-high",
        tint = tint_requester,
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  vertical_animation =
  {
    layers =
    {
      {
        filename = tall_chest,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        frame_count = 7,
      },
      {
        tint = tint_requester,
        filename = tall_chest_mask,
        scale = 0.5,
        width = tall_chest_hw[1],
        height = tall_chest_hw[2],
        shift = tall_chest_shift[1],
        repeat_count = 7,
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
        repeat_count = 7,
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = wide_remnants,
        width = wide_remnants_hw[1],
        height = wide_remnants_hw[2],
        scale = 0.5,
        shift = wide_remnants_shift,
        direction_count = 1,
      },
    }
  },
  vertical_remnants =
  {
    layers =
    {
      {
        filename = tall_remnants,
        width = tall_remnants_hw[1],
        height = tall_remnants_hw[2],
        scale = 0.5,
        shift = tall_remnants_shift,
        direction_count = 1,
      },
    }
  },
}
