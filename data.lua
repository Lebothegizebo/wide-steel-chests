---@param box data.BoundingBox
---@return data.BoundingBox
local function rotate_box(box)
  return {{box[1][2],box[1][1]}, {box[2][2],box[2][1]}}
end

---@class chest_params
---@field name data.EntityID The name of the container this is duplicating
---@field icons data.IconData[]
---@field collision_box data.BoundingBox
---@field selection_box data.BoundingBox
---@field picture {north:data.Sprite,east:data.Sprite}

---@param params chest_params
function make_wide_and_tall(params)
  local orig_container = data.raw["container"][params.name]
	local wide_container = table.deepcopy(orig_container)
	local tall_container = table.deepcopy(orig_container)

	local wide_name = "wide-"..params.name
	local tall_name = "tall-"..params.name
	local item_name = wide_name
	local rote_name = "rotatable-"..params.name

	wide_container.name = wide_name
	tall_container.name = tall_name

	wide_container.icon = nil
	wide_container.icons = params.icons
	tall_container.icon = nil
	tall_container.icons = params.icons

	wide_container.minable.result = item_name
	tall_container.minable.result = item_name

	wide_container.corpse = wide_name.."-remnants"
	tall_container.corpse = wide_name.."-remnants" -- HACK: to avoid bothering with rotated remnants right now

	wide_container.collision_box = params.collision_box
	wide_container.selection_box = params.selection_box
	tall_container.collision_box = rotate_box(params.collision_box)
	tall_container.selection_box = rotate_box(params.selection_box)

	wide_container.inventory_size = wide_container.inventory_size * 2
	tall_container.inventory_size = tall_container.inventory_size * 2

  data:extend{
		{
      type = "item",
      name = wide_name, --TODO: make a migration to use the rotatable name?
      subgroup = "wide-storage",
      place_result = rote_name,
      stack_size = 50,
      order = "b",
      icons = params.icons
		}--[[@as data.ItemPrototype]],
		{
			type = "assembling-machine",
			name = rote_name,

			energy_usage = "1W",
			crafting_speed = 0.01,
			crafting_categories = {"crafting"},
			energy_source = {type = "void"},

			collision_box = params.collision_box,
			selection_box = params.selection_box,

			graphics_set = {
				animation = {
					north = params.picture.north--[[@as data.Animation]],
					east = params.picture.east--[[@as data.Animation]],
					west = params.picture.east--[[@as data.Animation]],
				}
			}

		}--[[@as data.AssemblingMachinePrototype]],

		wide_container,
		tall_container,
	}
end

-- Scripting
require("circuit-connector-generated-definitions")
require("scripts.sprites")
-- Subgroups
require("prototypes.subgroups")
-- Remnants
require("prototypes.remnants")
-- Entitys
require("prototypes.entities.logistics-chests")
require("prototypes.entities.wide-steel-chest")
require("prototypes.entities.wide-iron-chest")
require("prototypes.entities.wide-wooden-chest")
-- Recipies
require("prototypes.recipes.logistics-chests")
require("prototypes.recipes.wide-steel-chest")
require("prototypes.recipes.wide-iron-chest")
require("prototypes.recipes.wide-wooden-chest")
-- Technology
require("prototypes.technology")

-- BETA CONTENT FLAGS
require("prototypes.beta-content")