data:extend(
{
 {
    type = "item",
    name = "wide-wooden-chest",
    icons = 
    {
      {
        icon = "__wide-steel-chests__/graphics/icons/wide-wooden-chest.png",
        icon_size = 128,
      },
      {
        icon = "__wide-steel-chests__/graphics/icons/empty.png",
        icon_size = 1,
      },
    },
    subgroup = "wide-storage",
    place_result = "wide-wooden-chest",
    stack_size = 50,
    order = "a"
  },
   {
    type = "container",
    name = "wide-wooden-chest",
    icons = 
    {
      {
        icon = "__wide-steel-chests__/graphics/icons/wide-wooden-chest.png",
        icon_size = 128,
      },
      {
        icon = "__wide-steel-chests__/graphics/icons/empty.png",
        icon_size = 1,
      },
    },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-wooden-chest"},
    max_health = 200,
    corpse = "wide-wooden-chest-remnants",
    dying_explosion = "wooden-chest-explosion",
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg", volume = 0.6 },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg", volume = 0.6 },
    collision_box = {{-0.8, -0.35}, {0.8, 0.35}},
    selection_box = {{-1, -0.5}, {1, 0.5}},
    scale_info_icons = true,
    fast_replaceable_group = "container",
    inventory_size = 32,
    vehicle_impact_sound = table.deepcopy(data.raw.container["wooden-chest"].vehicle_impact_sound),
    damaged_trigger_effect = table.deepcopy(data.raw.container["wooden-chest"].damaged_trigger_effect),
    picture =
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-chest"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  }
})
