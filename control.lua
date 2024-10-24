script.on_configuration_changed(function (data)
	for _, force in pairs(game.forces) do
		force.reset_technology_effects()
		print("Migrated to 0.1.5 and reset technologies")
	end
end)


---@type table<string,fun(E:EventData.on_script_trigger_effect)>
local script_trigger_handlers = {}
script.on_event(defines.events.on_script_trigger_effect, function (EventData)
	local handler = script_trigger_handlers[EventData.effect_id]
	if handler then handler(EventData) end
end)


script_trigger_handlers["rotatable-placed"] = function (EventData)
	local source_entity = EventData.source_entity
	if not source_entity then return end
	if source_entity.name:sub(1, 10) ~= "rotatable-" then error("Invalid entity triggered 'rotatable-placed'") end

	local entity = source_entity.name:sub(11)
	local surface = source_entity.surface

	local direction = source_entity.direction % 8 --[[@as int]]
	if direction % 4 ~= 0 then error("Entity that triggered 'rotatable-placed' had a non-cardinal direction") end

	if direction == 0 then
		entity = "wide-"..entity
	else
		entity = "tall-"..entity
	end

	surface.create_entity{
		name = entity,
		quality = source_entity.quality,

		position = source_entity.position,
		force = source_entity.force,
		player = source_entity.last_user,
		create_build_effect_smoke = false,

		fast_replace = true,
		-- spill = false,
	}
end