class Bakery
  attr_accessor :name
  @@all = [] 

  def initialize(name)
    @name = name
    Bakery.all << self 
  end

  def desserts
    Dessert.all.select do |des|
        des.bakery == self
    end
  end

  def ingredients
    desserts.map do |dessert|
        dessert.ingredient
    end 
  end

  def average_calories
    total_calories = 0
    desserts.each do |des|
      total_calories += des.calories.to_f
    end
    average_calories = total_calories/desserts.count
    average_calories
  end
 
  def self.all
    @@all
  end 

  def shopping_list
    list = []
     desserts.ingredients.each do |ingredient|
       list << ingredient.name
    end
    list 
  end

end