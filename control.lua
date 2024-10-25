script.on_configuration_changed(function (data)
	for _, force in pairs(game.forces) do
		force.reset_technology_effects()
		print("Migrated to 0.1.5 and reset technologies")
	end
end)

---@param bp_filters BlueprintLogisticFilter[]
---@return LogisticFilter[]
local function convert_bp_filters(bp_filters)
	---@type LogisticFilter[]
	local filters = {}

	for _, filter in pairs(bp_filters) do
		filters[filter.index] = {
			value = {
				type = filter.type,
				name = filter.name,
				quality = filter.quality,
				comparator = filter.comparator
			},
			min = filter.count,
			max = filter.max_count,
			minimum_delivery_count = filter.minimum_delivery_count,
			-- Import_from??
		}
	end

	return filters
end


---@alias BuiltEventData
---| EventData.on_built_entity
---| EventData.on_robot_built_entity
---| EventData.on_space_platform_built_entity
---| EventData.script_raised_built

---@param EventData BuiltEventData
local function chest_built(EventData)
	local entity = EventData.entity
	if not entity then return end

	local entity_name = entity.name:sub(11)
	local surface = entity.surface

	local direction = entity.direction % 8 --[[@as int]]
	if direction % 4 ~= 0 then
		error("Entity starting with 'rotatable-' had a non-cardinal direction: "
			..entity.name..":\n"..serpent.block(entity)
		)
	end

	if direction == 0 then
		entity_name = "wide-"..entity_name
	else
		entity_name = "tall-"..entity_name
	end

	local tags = EventData.tags
	tags = tags and tags.wide_chest or {} --[[@as ChestTags]]

	local new_entity = surface.create_entity{
		name = entity_name,
		quality = entity.quality,

		position = entity.position,
		force = entity.force,
		player = entity.last_user,
		create_build_effect_smoke = false,

		bar = tags.bar,
		fast_replace = true,
	}

	if not new_entity then error("Replacement failed!") end

	if new_entity.type == "container" and tags.circuit then

		local behavior = new_entity.get_or_create_control_behavior() --[[@as LuaContainerControlBehavior]]
		behavior.read_contents = tags.circuit.read_contents or false

	elseif new_entity.type == "logistic-container" then
		if tags.circuit then
			local behavior = new_entity.get_or_create_control_behavior() --[[@as LuaLogisticContainerControlBehavior]]
			behavior.circuit_condition = {condition=tags.circuit.circuit_condition}
			behavior.circuit_condition_enabled = tags.circuit.circuit_condition_enabled
			behavior.circuit_exclusive_mode_of_operation = tags.circuit.circuit_mode_of_operation
		end

		if tags.request then
			local requester = new_entity.get_requester_point() --[[@as LuaLogisticPoint]]
			requester.remove_section(1) -- Remove starting section

			for _, tag_section in pairs(tags.request.sections) do
				---@type LuaLogisticSection
				local section
				if tag_section.group then
					section = requester.add_section(tag_section.group)--[[@as LuaLogisticSection]]
				else
					section = requester.add_section()--[[@as LuaLogisticSection]]
					section.filters = convert_bp_filters(tag_section.filters)
				end
				section.multiplier = tag_section.multiplier or 1
				section.active = tag_section.active ~= false
			end
		end
	end
end

---@param EventData BuiltEventData
local function built(EventData)
	local entity = EventData.entity
	if entity.type == "assembling-machine"
	and entity.name:sub(1, 10) == "rotatable-" then
		chest_built(EventData)
	end
end

script.on_event(defines.events.on_built_entity, built)
script.on_event(defines.events.on_robot_built_entity, built)
script.on_event(defines.events.script_raised_revive, built)
script.on_event(defines.events.on_space_platform_built_entity, built)

---@class ChestTags
---@field circuit? ChestTags.circuit
---@field bar? uint
---@field request? ChestTags.request_filters

---@class ChestTags.circuit
---@field read_contents? boolean
---@field circuit_condition_enabled? boolean
---@field circuit_condition? CircuitCondition
---@field circuit_mode_of_operation? defines.control_behavior.logistic_container.exclusive_mode defaults to `defines.control_behavior.logistic_container.exclusive_mode.send_contents`

---@class ChestTags.request_filters
---@field sections ChestTags.request_filters.section[]

---@class ChestTags.request_filters.section
---@field index uint
---@field filters BlueprintLogisticFilter[]
---@field group string
---@field multiplier? int
---@field active? false

script.on_event(defines.events.on_player_setup_blueprint, function (EventData)
	local blueprint = EventData.stack
	if not blueprint then error() end
	local entities = blueprint.get_blueprint_entities()
	if not entities then error() end

	for _, entity in pairs(entities) do
		local type_str = entity.name:sub(1, 5)
		local type = type_str == "wide-" and 0 or type_str == "tall-" and 4 or nil --[[@as defines.direction?]]
		if type then
			local chest = entity.name:sub(6)
			entity.name = "rotatable-"..chest
			entity.direction = type
			entity.tags = entity.tags or {}
			entity.tags.wide_chest = {
				circuit = entity.control_behavior,
				bar = entity.bar,
				request = entity.request_filters
			}--[[@as ChestTags]]
			entity.control_behavior = nil
			entity.bar = nil
		end
	end

	blueprint.set_blueprint_entities(entities)
end)