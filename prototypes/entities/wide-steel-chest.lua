data:extend(
{
 {
    type = "item",
    name = "wide-steel-chest",
    subgroup = "wide-storage",
    place_result = "wide-steel-chest",
    stack_size = 50,
    order = "c",
    icons = 
    {
      {
        icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
        icon_size = 128,
      },
    }
  },
   {
    type = "container",
    name = "wide-steel-chest",
    icons = 
    {
      {
        icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
        icon_size = 128,
      },
    },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-steel-chest"},
    max_health = 350,
    corpse = "wide-steel-chest-remnants",
    dying_explosion = "steel-chest-explosion",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.43 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.43 },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
    selection_box = {{-1, -0.5}, {1, 0.5}},
    scale_info_icons = true,
    fast_replaceable_group = "container",
    inventory_size = 96,
    vehicle_impact_sound = table.deepcopy(data.raw.container["steel-chest"].vehicle_impact_sound),
    damaged_trigger_effect = table.deepcopy(data.raw.container["steel-chest"].damaged_trigger_effect),
    picture =
    {
      layers =
      {
        { 
          filename = "__wide-steel-chests__/graphics/entity/wide-steel-chest.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-chest"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  }
})
