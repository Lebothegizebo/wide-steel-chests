---@param box data.BoundingBox
---@return data.BoundingBox
local function rotate_box(box)
  return {{box[1][2],box[1][1]}, {box[2][2],box[2][1]}}
end

---@class chest_params 
---@field name data.EntityID The name of the container this is duplicating
---@field localised_name? data.LocalisedString
---@field subgroup data.ItemSubGroupID
---@field icons data.IconData[]
---@field inventory_multiplier int
---@field collision_box data.BoundingBox
---@field selection_box data.BoundingBox
---@field horizontal_picture? data.Sprite
---@field horizontal_animation? data.Animation
---@field horizontal_remnants data.Animation
---@field vertical_picture? data.Sprite
---@field vertical_animation? data.Animation
---@field vertical_remnants data.Animation

---@param params chest_params
function make_wide_and_tall(params)
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

	--MARK: Containers

	wide_container.name = wide_name
	tall_container.name = tall_name

	wide_container.subgroup = params.subgroup
	wide_container.subgroup = params.subgroup

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

	wide_container.picture = params.horizontal_picture
	wide_container.animation = params.horizontal_animation
	tall_container.picture = params.vertical_picture
	tall_container.animation = params.horizontal_animation

	wide_container.placeable_by = {item = item_name, count = 1}
	tall_container.placeable_by = {item = item_name, count = 1}

	-- Hide it because we just want it to see the wide one
	tall_container.hidden_in_factoriopedia = true
	tall_container.localised_name = localised_name

	--MARK: Remnants

	wide_remnants.name = wide_remnants_name
	tall_remnants.name = tall_remnants_name

	wide_remnants.subgroup = remnants_subgroup
	tall_remnants.subgroup = remnants_subgroup

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
      name = item_name,
      subgroup = "wide-storage",
			flags = {"primary-place-result"},
      place_result = rote_name,
      stack_size = 50,
      order = "b",
      icons = params.icons
		}--[[@as data.ItemPrototype]],
		{
			type = "assembling-machine",
			name = rote_name,
			localised_name = localised_name,
			hidden_in_factoriopedia = true,

			-- Empty minable results is intentional
			-- Item may be accidentally lost, but it's better than duplicating it
			-- or accidentally deleting the contents of another chest
			--
			-- Regardless, this entity should never just exist.
			minable = {mining_time = orig_container.minable.mining_time},

			energy_usage = "1W",
			crafting_speed = 0.01,
			crafting_categories = {"crafting"},
			energy_source = {type = "void"},

			collision_box = params.collision_box,
			selection_box = params.selection_box,
			fast_replaceable_group = orig_container.fast_replaceable_group,

			graphics_set = {
				animation = {
					north = params.horizontal_picture--[[@as data.Animation]],
					east = params.vertical_picture--[[@as data.Animation]],
					-- South not necessary as it defaults to north.
					-- West only is because it defaults to north for some godforsaken reason
					west = params.vertical_picture--[[@as data.Animation]],
				}
			},
			created_effect = {
				type = "direct",
				action_delivery = {
					type = "instant",
					source_effects = {
						type = "script",
						effect_id = "rotatable-placed"
					}
				}
			},

		}--[[@as data.AssemblingMachinePrototype]],

		wide_container,
		tall_container,
		wide_remnants,
		tall_remnants,
	}
end