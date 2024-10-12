
for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
    
    technologies["wide-containers"].researched = technologies["wide-steel-containers"].researched
    print("Migrated to 0.1.5")

  end

