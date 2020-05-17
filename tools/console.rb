require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

new_bake1 = Bakery.new("kevin")
new_bake2 = Bakery.new("G")
new_bake3 = Bakery.new("sono")
new_bake4 = Bakery.new("tess")

chocolate = Ingredients.new("chocolate", 25, "chocolate cake", "new_bake2")
flour = Ingredients.new("flour", 10, "muffins", "new_bake1")
sugar = Ingredients.new("sugar", 50, "scone", "new_bake3")
vanilla = Ingredients.new("vanilla", 5, "tart", "new_bake4")

muffins = Dessert.new("muffins", "new_bake1")
chocolate_cake = Dessert.new("chocolate cake", "new_bake2")
scone = Dessert.new("chocolate scone", "new_bake3")
tart = Dessert.new("tart", "new_bake4")



binding.pry
0