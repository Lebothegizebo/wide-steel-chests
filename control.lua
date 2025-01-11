local function on_configuration_changed(data)
    for _, force in pairs(game.forces) do
        force.reset_technology_effects()
        print("Migrated to 0.1.5 and reset technologies")
    end
end

script.on_configuration_changed(on_configuration_changed)