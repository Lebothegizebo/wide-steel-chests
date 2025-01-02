local item_sounds = require("__base__/prototypes/item_sounds")
local simulations = require("prototypes.factoriopedia-simulations")
local surface_conditions = data.raw.container["steel-chest"].surface_conditions
make_wide_and_tall{
  name = "steel-chest",
  subgroup = "wide-storage",
  order = "c",
  surface_conditions = surface_conditions,
  factoriopedia_simulation = simulations.factoriopedia_wide_steel_chest,
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
      icon = "__wide-containers-assets__/graphics/icons/wide-steel-chest.png",
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
        filename = "__wide-containers-assets__/graphics/entity/steel-chest/wide-steel-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 128,
        height = 80,
        shift = util.by_pixel(-0.25, -0.5),
      },
      {
        filename = "__wide-containers-assets__/graphics/entity/shadows/wide-steel-chest-shadow.png",
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
        filename = "__wide-containers-assets__/graphics/entity/steel-chest/tall-steel-chest.png",
        priority = "extra-high",
        scale = 0.5,
        width = 64,
        height = 138,
        shift = util.by_pixel(-0.25, -2),
      },
      {
        filename = "__wide-containers-assets__/graphics/entity/shadows/tall-steel-chest-shadow.png",
        priority = "extra-high",
        scale = 0.5,
        width = 110,
        height = 108 ,
        shift = util.by_pixel(12.25, 5.25),
        draw_as_shadow = true,
      }
    }
  },
  horizontal_remnants =
  {
    layers =
    {
      {
        filename = "__wide-containers-assets__/graphics/remnants/wide-steel-chest-remnants.png",
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
        filename = "__wide-containers-assets__/graphics/remnants/tall-steel-chest-remnants.png",
        width = 150,
        height = 152,
        scale = 0.5,
        shift = util.by_pixel(14.75, -1),
        direction_count = 1,
      },
    }
  },
}
