--[[table.insert(
	data.raw["technology"]["steel-processing"].effects,
	{
		type = "unlock-recipe",
		recipe = "wide-steel-chest"
	}
)
--]]
data:extend({
	{
	  type = "technology",
	  name = "wide-containers",
	  icons = { { icon = "__wide-steel-chests__/graphics/technology/wide-containers.png", icon_size = 128 } },
	  order = "a",
	  prerequisites = {"steel-processing", "logistic-science-pack"},
	  unit = {
		count = 100,
		ingredients = {
		  {"automation-science-pack", 1},
		  {"logistic-science-pack", 1},
		},
		time = 30
	  },
	  effects = { { type = "unlock-recipe", recipe = "wide-wooden-chest" }, { type = "unlock-recipe", recipe = "wide-iron-chest" }, { type = "unlock-recipe", recipe = "wide-steel-chest" } },
	},
})