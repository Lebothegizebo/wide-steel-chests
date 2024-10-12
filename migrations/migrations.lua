for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
  
    recipes["wide-wooden-chest"].enabled = technologies["wide-containers"].researched
    recipes["wide-iron-chest"].enabled = technologies["wide-containers"].researched
    recipes["wide-steel-chest"].enabled = technologies["wide-containers"].researched
  
  end