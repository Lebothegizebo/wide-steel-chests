script.on_configuration_changed(function (data)
	for _, force in pairs(game.forces) do
		force.reset_technology_effects()
		print("Migrated to 0.1.5 and reset technologies")
	end
end)


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

	---@type AnyBasic
	local tags = EventData.tags
	tags = tags and tags.wide_chest or {}

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

script.on_event(defines.events.on_player_setup_blueprint, function (EventData)
	local blueprint = EventData.stack
	if not blueprint then return error() end
	local entities = blueprint.get_blueprint_entities()
	if not entities then return error() end

	for _, entity in pairs(entities) do
		local type_str = entity.name:sub(1, 5)
		local type = type_str == "wide-" and 0 or type_str == "tall-" and 4 or nil --[[@as defines.direction?]]
		if type then
			local chest = entity.name:sub(6)
			entity.name = "rotatable-"..chest
			entity.direction = type
		end
	end

	blueprint.set_blueprint_entities(entities)
end)