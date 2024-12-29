local tint_storage = {r=230,g=180,b=66}
local tint_requester = {r=80,g=160,b=220}
data:extend(
{
	{ --wide containers technology
		type = "technology",
		name = "wide-containers",
		icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-containers.png",icon_size = 128} },
		unit = {count = 20, ingredients = { {"automation-science-pack", 1} }, time = 5},
		effects = { { type = "unlock-recipe", recipe = "wide-wooden-chest" }, { type = "unlock-recipe", recipe = "wide-iron-chest" } },
	},
	{ -- wide steel containers technology
		type = "technology",
		name = "wide-steel-containers",
	 	icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-steel-containers.png", icon_size = 128} },
	  	prerequisites = {"wide-containers", "steel-processing", "logistic-science-pack"},
	  	unit = {count = 50, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1} }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-steel-chest" } },
	},	
	{ -- wide storage containers technology
		type = "technology",
		name = "wide-storage-containers",
		icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-logistic-chest.png", icon_size = 128}, {icon = "__wide-steel-chests__/graphics/technology/wide-logistic-chest-mask.png", icon_size = 128, tint = tint_storage} },
		prerequisites = {"wide-steel-containers", "logistic-robotics"},
	  	unit = {count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}  }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-storage-chest" }, { type = "unlock-recipe", recipe = "wide-passive-provider-chest" } },
	},
	{ -- wide logistic containers technology
		type = "technology",
		name = "wide-logistics-containers",
		icons = { {icon = "__wide-steel-chests__/graphics/technology/wide-logistic-chest.png", icon_size = 128}, {icon = "__wide-steel-chests__/graphics/technology/wide-logistic-chest-mask.png", icon_size = 128, tint = tint_requester} },
	  	prerequisites = {"wide-storage-containers", "logistic-system"},
	  	unit = {count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"utility-science-pack", 1}   }, time = 30},
	  	effects = { { type = "unlock-recipe", recipe = "wide-active-provider-chest" }, { type = "unlock-recipe", recipe = "wide-requester-chest" }, { type = "unlock-recipe", recipe = "wide-buffer-chest" } },
	},
})