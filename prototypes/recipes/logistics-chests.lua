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
    name = "wide-active-provider-chest",
    subgroup = "wide-logistics-storage",
    order = "a",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-active-provider-chest",
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
    icons= 
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
    }
  },

  --Wide Passive Provider Chest
  {
    type = "recipe",
    name = "wide-passive-provider-chest",
    subgroup = "wide-logistics-storage",
    order = "b",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-passive-provider-chest",
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
    icons= 
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
    }
  },

  --Wide Storage Chest
  {
    type = "recipe",
    name = "wide-storage-chest",
    subgroup = "wide-logistics-storage",
    order = "c",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-storage-chest",
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
    icons= 
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
    }
  },
  
  --Wide Buffer Chest
  {
    type = "recipe",
    name = "wide-buffer-chest",
    subgroup = "wide-logistics-storage",
    order = "d",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-buffer-chest",
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
    icons= 
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
    }
  },
  
  --Wide Requester Chest
  {
    type = "recipe",
    name = "wide-requester-chest",
    subgroup = "wide-logistics-storage",
    order = "e",
    enabled=false,
    energy_required = 0.5,
    results=
    {
      {
        type = "item", 
        name = "wide-requester-chest",
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
    icons= 
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
    }
  },
}
)
