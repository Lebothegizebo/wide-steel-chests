data:extend(
{
	{
		type = "technology",
		name = "wide-containers",
		icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-containers.png",icon_size = 128} },
		unit = {count = 20, ingredients = { {"automation-science-pack", 1} }, time = 5},
		effects = { { type = "unlock-recipe", recipe = "wide-wooden-chest" }, { type = "unlock-recipe", recipe = "wide-iron-chest" } },
	},
	{
		type = "technology",
		name = "wide-steel-containers",
	 	icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-steel-containers.png", icon_size = 128} },
	  	prerequisites = {"wide-containers", "steel-processing", "logistic-science-pack"},
	  	unit = {count = 50, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1} }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-steel-chest" } },
	},	
	{
		type = "technology",
		name = "wide-storage-containers",
		hidden = true, --Temporarily disables way to unlock beta logistic containers
	 	icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-storage-containers.png", icon_size = 128} },
	  	prerequisites = {"wide-steel-containers", "logistic-robotics"},
	  	unit = {count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}  }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-storage-chest" }, { type = "unlock-recipe", recipe = "wide-passive-provider-chest" } },
	},
	{
		type = "technology",
		name = "wide-logistics-containers",
		hidden = true, --Temporarily disables way to unlock beta logistic containers
	 	icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-logistics-containers.png", icon_size = 128} },
	  	prerequisites = {"wide-storage-containers", "logistic-system"},
	  	unit = {count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"utility-science-pack", 1}   }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-active-provider-chest" }, { type = "unlock-recipe", recipe = "wide-requester-chest" }, { type = "unlock-recipe", recipe = "wide-buffer-chest" } },
	},

})