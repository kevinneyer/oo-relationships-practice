class Ingredient
  attr_accessor :name, :dessert, :calories 
  @@all = []

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    Ingredient.all << self 
  end

    def self.all
        @@all
    end

    def bakery
      self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
      Ingredient.all.select do |instance|
        instance.name.include? ingredient
      end
    end




end