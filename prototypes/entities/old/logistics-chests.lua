data:extend(
{
  --Wide Active Provider Chest
  {
    type = "item",
    name = "wide-active-provider-chest",
    subgroup = "wide-logistics-storage",
    place_result = "wide-active-provider-chest",
    stack_size = 50,
    order = "a",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      }
  },
  {
    type = "logistic-container",
    name = "wide-active-provider-chest",
    logistic_mode = "active-provider",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-active-provider-chest"},
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
              filename = "__wide-steel-chests__/graphics/entity/logistic-chest-base.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-container"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  --Wide Passive Provider chest
  {
    type = "item",
    name = "wide-passive-provider-chest",
    subgroup = "wide-logistics-storage",
    place_result = "wide-passive-provider-chest",
    stack_size = 50,
    order = "b",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      }
  },
  {
    type = "logistic-container",
    name = "wide-passive-provider-chest",
    logistic_mode = "passive-provider",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-passive-provider-chest"},
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
              filename = "__wide-steel-chests__/graphics/entity/logistic-chest-base.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-container"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },

  --Wide Storage Chest
  {
    type = "item",
    name = "wide-storage-chest",
    subgroup = "wide-logistics-storage",
    place_result = "wide-storage-chest",
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
    type = "logistic-container",
    name = "wide-storage-chest",
    logistic_mode = "storage",
    max_logistic_slots = 1,
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-storage-chest"},
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
            filename = "__wide-steel-chests__/graphics/entity/logistic-chest-base.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-container"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },

  --Wide Buffer Chest
  {
    type = "item",
    name = "wide-buffer-chest",
    subgroup = "wide-logistics-storage",
    place_result = "wide-buffer-chest",
    stack_size = 50,
    order = "d",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      }
  },
  {
    type = "logistic-container",
    name = "wide-buffer-chest",
    logistic_mode = "buffer",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-buffer-chest"},
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
              filename = "__wide-steel-chests__/graphics/entity/logistic-chest-base.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-container"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },

  --Wide Requester Chest
  {
    type = "item",
    name = "wide-requester-chest",
    subgroup = "wide-logistics-storage",
    place_result = "wide-requester-chest",
    stack_size = 50,
    order = "e",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      }
  },
  {
    type = "logistic-container",
    name = "wide-requester-chest",
    logistic_mode = "requester",
    icons = 
      {
        {
          icon = "__wide-steel-chests__/graphics/icons/wide-steel-chest.png",
          icon_size = 128,
        },
      },
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "wide-requester-chest"},
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
              filename = "__wide-steel-chests__/graphics/entity/logistic-chest-base.png",
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
    circuit_wire_connection_point = circuit_connector_definitions["wide-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["wide-container"].sprites,  
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
