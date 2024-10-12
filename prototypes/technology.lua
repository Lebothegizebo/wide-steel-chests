data:extend({
	{
	  type = "technology",
	  name = "wide-steel-containers",
	  icons = { { icon = "__wide-steel-chests__/graphics/technology/wide-steel-containers.png", icon_size = 128 } },
	  order = "a",
	  prerequisites = {"wide-containers","steel-processing", "logistic-science-pack"},
	  unit = {
		count = 50,
		ingredients = {
		  {"automation-science-pack", 1},
		  {"logistic-science-pack", 1},
		},
		time = 30
	  },
	  effects = { { type = "unlock-recipe", recipe = "wide-steel-chest" } },
	},
	{
		type = "technology",
		name = "wide-containers",
		icons = { { icon = "__wide-steel-chests__/graphics/technology/wide-containers.png", icon_size = 128 } },
		order = "a",
		unit = {
		  count = 20,
		  ingredients = {
			{"automation-science-pack", 1},
		  },
		  time = 5
		},
		effects = { { type = "unlock-recipe", recipe = "wide-wooden-chest" }, { type = "unlock-recipe", recipe = "wide-iron-chest" } },
	  },
})