require 'pry'
class Bakery
  attr_accessor :name, :ingredient, :dessert 
  @@all = []

  def initialize(name)
    @name = name
    Bakery.all << self 
  end

  def ingredients
    Ingredients.all.map do |ingredient|
      ingredient.bakery == self
    end
  end

  def desserts
    empty_array = []
    Dessert.all.select do |dessert|
       empty_array << dessert.bakery == self 
    end
    empty_array
  end

  # def average_calories
    
  # end

  def self.all
    @@all
  end

  # def shopping_list
  #   ingredients.each do |ingredient|
  #     in
  #   end
  # end

end