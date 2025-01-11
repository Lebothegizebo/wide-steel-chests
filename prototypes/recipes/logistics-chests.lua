local icon = "__wide-containers-assets__/graphics/icons/wide-logistic-chest.png"
local icon_mask = "__wide-containers-assets__/graphics/icons/wide-logistic-chest-mask.png"
local tint_passive = {r=220,g=61,b=65} --passive tint
local tint_active = {r=200,g=87,b=253}  --active tint
local tint_storage = {r=230,g=180,b=66} --storage tint
local tint_buffer = {r=70,g=200,b=70} --buffer tint
local tint_requester = {r=80,g=160,b=220} -- requester tint
data:extend(
{
  --Wide Active Provider Chest
  {
    type = "recipe",
    name = "wide-logistic-chest-active-provider",
    subgroup = "wide-logistics-storage",
    order = "a",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-logistic-chest-active-provider",
        amount = 1,
      } 
    },
    ingredients =
    {
      {
        type = "item",
        name = "electronic-circuit",
        amount = 5
      },
      {
        type = "item",
        name = "advanced-circuit",
        amount = 2
      },
      {
        type = "item",
        name = "wide-steel-chest",
        amount = 1
      }
    },
  },

  --Wide Passive Provider Chest
  {
    type = "recipe",
    name = "wide-logistic-chest-passive-provider",
    subgroup = "wide-logistics-storage",
    order = "b",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-logistic-chest-passive-provider",
        amount = 1,
      } 
    },
    ingredients =
    {
      {
        type = "item",
        name = "electronic-circuit",
        amount = 5
      },
      {
        type = "item",
        name = "advanced-circuit",
        amount = 2
      },
      {
        type = "item",
        name = "wide-steel-chest",
        amount = 1
      }
    },
  },

  --Wide Storage Chest
  {
    type = "recipe",
    name = "wide-logistic-chest-storage",
    subgroup = "wide-logistics-storage",
    order = "c",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-logistic-chest-storage",
        amount = 1,
      } 
    },
    ingredients =
    {
      {
        type = "item",
        name = "electronic-circuit",
        amount = 5
      },
      {
        type = "item",
        name = "advanced-circuit",
        amount = 2
      },
      {
        type = "item",
        name = "wide-steel-chest",
        amount = 1
      }
    },
  },
  
  --Wide Buffer Chest
  {
    type = "recipe",
    name = "wide-logistic-chest-buffer",
    subgroup = "wide-logistics-storage",
    order = "d",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-logistic-chest-buffer",
        amount = 1,
      } 
    },
    ingredients =
    {
      {
        type = "item",
        name = "electronic-circuit",
        amount = 5
      },
      {
        type = "item",
        name = "advanced-circuit",
        amount = 2
      },
      {
        type = "item",
        name = "wide-steel-chest",
        amount = 1
      }
    },
  },
  
  --Wide Requester Chest
  {
    type = "recipe",
    name = "wide-logistic-chest-requester",
    subgroup = "wide-logistics-storage",
    order = "e",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-logistic-chest-requester",
        amount = 1,
      } 
    },
    ingredients =
    {
      {
        type = "item",
        name = "electronic-circuit",
        amount = 5
      },
      {
        type = "item",
        name = "advanced-circuit",
        amount = 2
      },
      {
        type = "item",
        name = "wide-steel-chest",
        amount = 1
      }
    },
  },
}
)
