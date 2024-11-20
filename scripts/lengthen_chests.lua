-- Use the function make_wide_and_tall for defining new containers

---@param box data.BoundingBox
local function rotate_box(box)
	return {{box[1][2],box[1][1]}, {box[2][2],box[2][1]}}
end
---@return data.BoundingBox
---@class chest_params
---@field name data.EntityID The name of the container
---@field localised_name? data.LocalisedString The LocalisedString of the container
---@field subgroup data.ItemSubGroupID The subgroup of the container item_prototype
---@field order string The order of the container item_prototype
---@field hide_resistances bool Hide resistances of the entity?
---@field resistances data.Resistance
---@field icons data.IconData[] The icon set of the container
---@field inventory_multiplier int The inventory_multiplier of the containers inventory
---@field collision_box data.BoundingBox The collision box of the container 
---@field selection_box data.BoundingBox The selection box of the container 
---@field inventory_move_sound data.Sound The inventory_move_sound of the container
---@field pick_sound data.Sound The pick_sound of the container
---@field drop_sound data.Sound The drop_sound of the container
---
---@field horizontal_upgrade? data.EntityID The horizontal next_upgrade of the container 
---@field horizontal_picture? data.Sprite The horizontal picture of the container
---@field horizontal_animation? data.Animation The horizontal animation of the container
---@field horizontal_remnants data.Animation The horizontal animation of the container remnant 
---@field horizontal_connection? data.CircuitConnectorDefinition The horizontal circuit definition of the container
---
---@field vertical_upgrade? data.EntityID The vertical next_upgrade of the container this is duplicating
---@field vertical_picture? data.Sprite The vertical picture of the container
---@field vertical_animation? data.Animation The vertical animation of the container
---@field vertical_remnants data.Animation The vertical animation of the container remnant
---@field vertical_connection? data.CircuitConnectorDefinition The vertical circuit definition of the container
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
	local wide_container = table.deepcopy(orig_container)
	local tall_container = table.deepcopy(orig_container)
	local orig_remnants = data.raw["corpse"][orig_container.corpse--[[@as string]]]
	local wide_remnants = table.deepcopy(orig_remnants)
	local tall_remnants = table.deepcopy(orig_remnants)
	local wide_name = "wide-"..params.name
	local tall_name = "tall-"..params.name	
	local item_name = wide_name --TODO: make a migration to use the rotatable name?
	local rote_name = "rotatable-"..params.name
	local remnants_subgroup = params.subgroup.."-remnants"
	local wide_remnants_name = wide_name.."-remnants"
	local tall_remnants_name = tall_name.."-remnants"
	local localised_name = params.localised_name or {"entity-name."..wide_name}
	wide_container.name = wide_name
	tall_container.name = tall_name

	wide_container.subgroup = "parameters"
	tall_container.subgroup = "parameters"

	wide_container.order = params.order
	tall_container.order = params.order

	wide_container.hide_resistances = params.hide_resistances
	tall_container.hide_resistances = params.hide_resistances

	wide_container.resistances = params.resistances
	tall_container.resistances = params.resistances

	wide_container.icon = nil
	wide_container.icons = params.icons
	tall_container.icon = nil
	tall_container.icons = params.icons

	wide_container.minable.result = item_name
	tall_container.minable.result = item_name

	wide_container.corpse = wide_remnants_name
	tall_container.corpse = tall_remnants_name

	wide_container.collision_box = params.collision_box
	wide_container.selection_box = params.selection_box
	tall_container.collision_box = rotate_box(params.collision_box)
	tall_container.selection_box = rotate_box(params.selection_box)

	wide_container.inventory_size = wide_container.inventory_size * params.inventory_multiplier
	tall_container.inventory_size = tall_container.inventory_size * params.inventory_multiplier

	wide_container.inventory_move_sound = params.inventory_move_sound
	tall_container.inventory_move_sound = params.inventory_move_sound

	wide_container.pick_sound = params.pick_sound
	tall_container.pick_sound = params.pick_sound

	wide_container.drop_sound = params.drop_sound
	tall_container.drop_sound = params.drop_sound
	wide_container.picture = params.horizontal_picture
	tall_container.picture = params.vertical_picture

	wide_container.animation = params.horizontal_animation
	tall_container.animation = params.horizontal_animation

	wide_container.circuit_connector = params.horizontal_connection.circuit_connector
	tall_container.circuit_connector = params.vertical_connection.circuit_connector

	wide_container.placeable_by = {item = item_name, count = 1}
	tall_container.placeable_by = {item = item_name, count = 1}

	wide_container.hidden = false
	tall_container.hidden = true

	wide_container.next_upgrade = params.horizontal_upgrade
	wide_container.next_upgrade = params.vertical_upgrade

	-- Hide it because we just want it to see the wide one
	tall_container.hidden_in_factoriopedia = true
	wide_container.hidden_in_factoriopedia = false
	tall_container.factoriopedia_alternative = wide_name
	wide_container.factoriopedia_alternative = wide_name
	tall_container.localised_name = localised_name

	--MARK: Remnants

	wide_remnants.name = wide_remnants_name
	tall_remnants.name = tall_remnants_name

	wide_remnants.subgroup = remnants_subgroup.."-wide"
	tall_remnants.subgroup = remnants_subgroup.."-tall"

	wide_remnants.order = params.order
	tall_remnants.order = params.order

	wide_remnants.icon = nil
	wide_remnants.icons = params.icons
	tall_remnants.icon = nil
	tall_remnants.icons = params.icons

	wide_remnants.selection_box = table.deepcopy(params.selection_box) -- Deepcopy to keep it from being linked to the container
	tall_remnants.selection_box = rotate_box(params.selection_box)

	-- Why were these set, they are determined automatically..
	wide_remnants.tile_width = nil
	wide_remnants.tile_height = nil
	tall_remnants.tile_width = nil
	tall_remnants.tile_height = nil

	wide_remnants.animation = params.horizontal_remnants
	tall_remnants.animation = params.vertical_remnants

	wide_remnants.localised_name = {"remnant-name", localised_name}
	tall_remnants.localised_name = {"remnant-name", localised_name}

	--MARK: Item & ASM

data:extend{
{
	type = "item",
	hidden_in_factoriopedia = false,
	hide_resistances = params.hide_resistances,
	resistances = params.resistances,
	name = item_name,
	subgroup = params.subgroup,
	order = params.order,
	inventory_move_sound = params.inventory_move_sound,
	pick_sound = params.pick_sound,
	drop_sound = params.drop_sound,
	flags = {"primary-place-result"},
	place_result = rote_name,
	stack_size = 50,
	icons = params.icons
	}--[[@as data.ItemPrototype]],
		{
			type = "assembling-machine",
			name = rote_name,
			localised_name = localised_name,
			icons = params.icons,
			item_subgroup = "logistics",
			order = params.order,
			hidden = true,
			hidden_in_factoriopedia = true,
			factoriopedia_alternative = tall_name,
			minable = {mining_time = orig_container.minable.mining_time},
			flags = util.copy(orig_container.flags),
			max_health = orig_container.max_health,
			energy_usage = "1W",
			crafting_speed = 1,
			crafting_categories = {"null"},
			energy_source = {type = "void"},
			collision_box = params.collision_box,
			selection_box = params.selection_box,
			fast_replaceable_group = orig_container.fast_replaceable_group,
			graphics_set = {
				animation = {
					north = params.horizontal_picture--[[@as data.Animation]],
					east = params.vertical_picture--[[@as data.Animation]],
					west = params.vertical_picture--[[@as data.Animation]],
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