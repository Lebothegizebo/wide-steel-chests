local meld = require("meld")
-- Use the function make_wide_and_tall for defining new containers
log("DATA_DEBUG")
---@param box data.BoundingBox
---@return data.BoundingBox
local function rotate_box(box)
	return {{box[1][2],box[1][1]}, {box[2][2],box[2][1]}}
end
local function multiply(multiplier)
	return function(value)
		if type(value) == "number" then
			return value * multiplier
		else
			return value
		end
	end
end

---@class chest_params
---@field name data.EntityID The name of the source container
---@field localised_name? data.LocalisedString The LocalisedString of the container's prototypes
---@field icons data.IconData[] The icon set of the container's prototypes
---The base subgroup of the container
---
---This expects there to also be
---@field subgroup data.ItemSubGroupID
---@field order string The order string of the container's prototypes
---
---@field hide_resistances boolean Whether or not to hide the resistances of the container entities.
---@field resistances? data.Resistance[] The resistances of the container entities
---@field collision_box data.BoundingBox The collision box of the container entities
---@field selection_box data.BoundingBox The selection box of the container entities
---
---@field animation_sound? data.Sound The sound for the logistic container's animation
---@field opened_duration? uint8
---
---@field inventory_move_sound data.Sound The inventory_move_sound of the container's item
---@field pick_sound data.Sound The pick_sound of the container's item
---@field drop_sound data.Sound The drop_sound of the container's item
---
---@field inventory_multiplier int The inventory_multiplier of the containers inventory
---
---
---@field horizontal_picture? data.Sprite The picture of the horizontal container
---@field horizontal_animation? data.Animation The animation of the horizontal logistic container
---@field horizontal_connection? data.CircuitConnectorDefinition The circuit definition of the horizontal container
---@field horizontal_remnants data.Animation The animation of the horizontal logistic container's remnants
---@field horizontal_upgrade? data.EntityID The next_upgrade of the horizontal container 
---
---@field vertical_picture? data.Sprite The picture of the vertical container
---@field vertical_animation? data.Animation The animation of the vertical logistic container
---@field vertical_connection? data.CircuitConnectorDefinition The circuit definition of the vertical container
---@field vertical_remnants data.Animation The animation of the vertical container's remnants
---@field vertical_upgrade? data.EntityID The next_upgrade of the vertical container

---@param params chest_params
function make_wide_and_tall(params)
	--MARK: Containers
	---@type data.ContainerPrototype
	local orig_container
	for _, container_type in pairs{"container", "logistic-container", "temporary-container", "infinity-container"} do
		orig_container = data.raw[container_type][params.name] --[[@as data.ContainerPrototype]]
		if orig_container then break end
	end
	if not orig_container then error("No container found of name '"..params.name.."'") end
	---@type data.ContainerPrototype|data.LogisticContainerPrototype|data.TemporaryContainerPrototype|data.InfinityContainerPrototype
	local orig_container = orig_container -- Because omg LuaLS can't handle this

	-- Names
	local wide_name = "wide-"..params.name
	local tall_name = "tall-"..params.name
	local item_name = wide_name --TODO: make a migration to use the rotatable name?
	local rote_name = "rotatable-"..params.name
	local localised_name = params.localised_name or {"entity-name."..wide_name}

	-- Remnant setup
	local orig_remnants = data.raw["corpse"][orig_container.corpse--[[@as string]]]
	---@type data.EntityID?,data.EntityID?
	local wide_remnants_name, tall_remnants_name
	if orig_remnants then
		wide_remnants_name = wide_name.."-remnants"
		tall_remnants_name = tall_name.."-remnants"
	end
	local remnants_subgroup = params.subgroup.."-remnants"


	local wide_container = meld(table.deepcopy(orig_container), {
		-- Basic fields
		name = wide_name,
		icons = meld.overwrite(params.icons),
		icon = meld.delete(),
		subgroup = params.subgroup,
		order = params.order,
		hidden = false,
		hidden_in_factoriopedia = false,
		factoriopedia_alternative = wide_name,

		-- Entity fields
		minable = {result = item_name},
		placeable_by = meld.overwrite{item = item_name, count = 1},
		collision_box = meld.overwrite(params.collision_box),
		selection_box = meld.overwrite(params.selection_box),
		next_upgrade = meld.overwrite(params.horizontal_upgrade),
		resistances = params.resistances,
		hide_resistances = params.hide_resistances,
		corpse = wide_remnants_name,

		-- Container fields
		picture = meld.overwrite(params.horizontal_picture),
		inventory_size = meld.invoke(multiply(params.inventory_multiplier)),

		--- Logistic Container fields
		opened_duration = params.opened_duration,
		animation = meld.overwrite(params.horizontal_animation),
		animation_sound = meld.overwrite(params.animation_sound),
		trash_inventory_size = meld.invoke(multiply(params.inventory_multiplier)),
		circuit_connector = meld.overwrite(params.horizontal_connection),
	})
	local tall_container = meld(table.deepcopy(orig_container), {
		-- Basic fields
		name = tall_name,
		localised_name = meld.overwrite(localised_name),
		icons = meld.overwrite(params.icons),
		icon = meld.delete(),
		subgroup = params.subgroup,
		order = params.order,
		hidden = true,
		hidden_in_factoriopedia = true,
		factoriopedia_alternative = wide_name,

		-- Entity fields
		minable = {result = item_name},
		placeable_by = meld.overwrite{item = item_name, count = 1},
		collision_box = meld.overwrite(rotate_box(params.collision_box)),
		selection_box = meld.overwrite(rotate_box(params.selection_box)),
		next_upgrade = meld.overwrite(params.vertical_upgrade),
		resistances = params.resistances,
		hide_resistances = params.hide_resistances,
		corpse = tall_remnants_name,

		-- Container fields
		picture = meld.overwrite(params.vertical_picture),
		inventory_size = meld.invoke(multiply(params.inventory_multiplier)),

		--- Logistic Container fields
		opened_duration = params.opened_duration,
		animation = meld.overwrite(params.vertical_animation),
		animation_sound = meld.overwrite(params.animation_sound),
		trash_inventory_size = meld.invoke(multiply(params.inventory_multiplier)),
		circuit_connector = meld.overwrite(params.vertical_connection),
	})

	---@type data.CorpsePrototype,data.CorpsePrototype
	local tall_remnants,wide_remnants
	if orig_remnants then
		tall_remnants = meld(table.deepcopy(orig_remnants), {
			-- Basic fields
			name = wide_remnants_name,
			localised_name = meld.overwrite{"remnant-name", localised_name},
			icons = meld.overwrite(params.icons),
			icon = meld.delete(),
			subgroup = remnants_subgroup.."-wide",
			order = params.order,

			-- Entity fields
			selection_box = meld.overwrite(params.selection_box),
			tile_width = meld.delete(),
			tile_height = meld.delete(),
			flags = meld.overwrite{"placeable-neutral", "building-direction-8-way", "not-on-map","placeable-off-grid"},

			-- Corpse fields
			animation = meld.overwrite(params.horizontal_remnants),
		})
		wide_remnants = meld(table.deepcopy(orig_remnants), {
			-- Basic fields
			name = tall_remnants_name,
			localised_name = meld.overwrite{"remnant-name", localised_name},
			icons = meld.overwrite(params.icons),
			icon = meld.delete(),
			subgroup = remnants_subgroup.."-tall",
			order = params.order,

			-- Entity fields
			selection_box = meld.overwrite(rotate_box(params.selection_box)),
			tile_width = meld.delete(),
			tile_height = meld.delete(),
			flags = meld.overwrite{"placeable-neutral", "building-direction-8-way", "not-on-map","placeable-off-grid"},

			-- Corpse fields
			animation = meld.overwrite(params.vertical_remnants),
		})
	end

	--MARK: Item & ASM

	data:extend{
		{
			-- Basic fields
			type = "item",
			name = item_name,
			localised_name = localised_name,
			icons = params.icons,
			subgroup = params.subgroup,
			order = params.order,
			hidden_in_factoriopedia = false,

			-- Item fields
			stack_size = 50,
			place_result = rote_name,
			flags = {"primary-place-result"},
			pick_sound = params.pick_sound,
			drop_sound = params.drop_sound,
			inventory_move_sound = params.inventory_move_sound,
		}--[[@as data.ItemPrototype]],

		{
			-- Basic fields
			type = "assembling-machine",
			name = rote_name,
			localised_name = localised_name,
			icons = params.icons,
			-- item_subgroup = "logistics", -- Why was this added? It's not a field nor a valid subgroup
			order = params.order,
			hidden = true,
			hidden_in_factoriopedia = true,
			factoriopedia_alternative = tall_name,

			-- Entity fields
			collision_box = params.collision_box,
			selection_box = params.selection_box,
			resistances = params.resistances,
			hide_resistances = params.hide_resistances,
			max_health = orig_container.max_health,
			minable = {mining_time = orig_container.minable.mining_time},
			fast_replaceable_group = orig_container.fast_replaceable_group,
			flags = util.copy(orig_container.flags),

			-- Assembling Machine fields
			crafting_speed = 1,
			crafting_categories = {"null"},
			energy_usage = "1W",
			energy_source = {type = "void"},
			graphics_set = {
				animation = {
					north = params.horizontal_picture or params.horizontal_animation--[[@as data.Animation]],
					east = params.vertical_picture or params.vertical_animation--[[@as data.Animation]],
					west = params.vertical_picture or params.vertical_animation--[[@as data.Animation]],
				}
			},
			circuit_wire_max_distance = orig_container.circuit_wire_max_distance,
			circuit_connector = {
				wide_container.circuit_connector,
				tall_container.circuit_connector,
				wide_container.circuit_connector,
				tall_container.circuit_connector,
			}
		}--[[@as data.AssemblingMachinePrototype]],

		wide_container,
		tall_container,
		wide_remnants,
		tall_remnants,
	}
end