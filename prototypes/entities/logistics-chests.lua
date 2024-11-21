local item_sounds = require("__base__/prototypes/item_sounds")
local simulations = require("prototypes.factoriopedia-simulations")
local wide_icon = "__wide-steel-chests__/graphics/icons/wide-logistic-chest.png"
local wide_chest = "__wide-steel-chests__/graphics/entity/wide-logistic-chest.png"
local wide_chest_hw = {128, 80, 165, 46} --Width, Height, Width, Height
local wide_chest_shift = {util.by_pixel(-0.25, -0.5), util.by_pixel(24.25-10, 8)}
local tall_chest = "__wide-steel-chests__/graphics/entity/tall-logistic-chest.png"
local tall_chest_hw = {64, 138, 110, 108} --Width, Height, Width, Height
local tall_chest_shift = {util.by_pixel(-0.25, -2), util.by_pixel(12.25, 5.25)}
local wide_chest_shadow = "__wide-steel-chests__/graphics/entity/shadows/wide-logistic-chest-shadow.png"
local tall_chest_shadow = "__wide-steel-chests__/graphics/entity/shadows/tall-logistic-chest-shadow.png"
--MARK: Active Provider
make_wide_and_tall{
  name = "active-provider-chest",
  subgroup = "wide-logistics-storage",
  order = "a",
  factoriopedia_simulation = simulations.factoriopedia_wide_active_provider_chest,
  inventory_move_sound = item_sounds.metal_chest_inventory_move,
  pick_sound = item_sounds.metal_chest_inventory_pickup,
  drop_sound = item_sounds.metal_chest_inventory_move,
  hide_resistances = true,
  resistances = 
  {
    {
      type = "fire",
      percent = 90,
    },
    {
      type = "impact",
      percent = 60 ,
    },
  },
  icons =
  {
    {
      icon = wide_icon,
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
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
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
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
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
  order = "b",
  factoriopedia_simulation = simulations.factoriopedia_wide_passive_provider_chest,
  inventory_move_sound = item_sounds.metal_chest_inventory_move,
  pick_sound = item_sounds.metal_chest_inventory_pickup,
  drop_sound = item_sounds.metal_chest_inventory_move,
  hide_resistances = true,
  resistances = 
  {
    {
      type = "fire",
      percent = 90,
    },
    {
      type = "impact",
      percent = 60 ,
    },
  },
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-logistic-chest.png",
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
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
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
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
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
  order = "c",
  factoriopedia_simulation = simulations.factoriopedia_wide_storage_chest,
  inventory_move_sound = item_sounds.metal_chest_inventory_move,
  pick_sound = item_sounds.metal_chest_inventory_pickup,
  drop_sound = item_sounds.metal_chest_inventory_move,
  hide_resistances = true,
  resistances = 
  {
    {
      type = "fire",
      percent = 90,
    },
    {
      type = "impact",
      percent = 60 ,
    },
  },
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-logistic-chest.png",
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
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
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
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
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
  order = "d",
  factoriopedia_simulation = simulations.factoriopedia_wide_buffer_chest,
  inventory_move_sound = item_sounds.metal_chest_inventory_move,
  pick_sound = item_sounds.metal_chest_inventory_pickup,
  drop_sound = item_sounds.metal_chest_inventory_move,
  hide_resistances = true,
  resistances = 
  {
    {
      type = "fire",
      percent = 90,
    },
    {
      type = "impact",
      percent = 60 ,
    },
  },
  icons =
  {
    {
      icon = "__wide-steel-chests__/graphics/icons/wide-logistic-chest.png",
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
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
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
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
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
  order = "e",
  factoriopedia_simulation = simulations.factoriopedia_wide_requester_chest,
  inventory_move_sound = item_sounds.metal_chest_inventory_move,
  pick_sound = item_sounds.metal_chest_inventory_pickup,
  drop_sound = item_sounds.metal_chest_inventory_move,
    hide_resistances = true,
    resistances = 
    {
      {
        type = "fire",
        percent = 90,
      },
      {
        type = "impact",
        percent = 60 ,
      },
    },
  icons =
  {
    {
      icon = wide_icon,
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
        filename = wide_chest,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[1],
        height = wide_chest_hw[2],
        shift = wide_chest_shift[1],
      },
      {
        filename = wide_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = wide_chest_hw[3],
        height = wide_chest_hw[4],
        shift = wide_chest_shift[2],
        draw_as_shadow = true,
      }
    }
  },
  vertical_picture =
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
      },
      {
        filename = tall_chest_shadow,
        priority = "extra-high",
        scale = 0.5,
        width = tall_chest_hw[3],
        height = tall_chest_hw[4],
        shift = tall_chest_shift[2],
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
