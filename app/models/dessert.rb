class Dessert
    attr_accessor :name, :bakery
    @@all = []

     def initialize(name, bakery)
        @name = name
        @bakery = bakery
        Dessert.all << self
     end

    def ingredients #=> this was funny
      ingredients_array =[]
      Ingredients.all.select do |ingredient|
        if ingredient.dessert == self
            ingredients_array << ingredient.name 
        end 
      end
      ingredients_array
    end 

    def bakery
      @bakery 
    end

    def calories #=> funny
        ingredients.each do |ingredient|
            num = ingredient.calories 
            total += num
        end
        total
    end

    def self.all
        @@all
    end

end