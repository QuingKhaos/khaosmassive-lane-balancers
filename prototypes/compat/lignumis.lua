local khaoslib_recipe = require("__khaoslib__.recipe")

-- Ensure the wood lane balancer uses the same ingredients as the wood splitter.
khaoslib_recipe:load("wood-lane-splitter")
  :set_ingredients(khaoslib_recipe.get_ingredients("wood-splitter"))
  :commit()

-- Ensure the lane balancer uses the same ingredients as the splitter, but with the wood lane splitter as a prerequisite.
khaoslib_recipe:load("lane-splitter")
  :set_ingredients(khaoslib_recipe.get_ingredients("splitter"))
  :replace_ingredient("wood-splitter", {type = "item", name = "wood-lane-splitter", amount = 2})
  :commit()
