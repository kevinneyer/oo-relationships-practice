class Ingredients
  
  attr_accessor :dessert, :bakery, :name, :calories
 @@all = [] 
  
  def initialize(name, calories, dessert, bakery)
    @name = name
    @calories = calories
    @dessert = dessert
    @bakery = bakery
    Ingredients.all << self
  end 

#   def dessert => nope
#     @dessert 
#   end

#   def bakery => nope
#     @bakery
#   end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient_name) #=> nope
    Ingredients.all.select do |ingredient|
      ingredient.inlcude?(ingredient_name)
    end
  end

end