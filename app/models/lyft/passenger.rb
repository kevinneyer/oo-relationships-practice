class Passenger
  attr_accessor :name
  @@all = []

 def initialize(name)
    @name = name 
    Passenger.all << self
 end

 def rides
   Rides.all.select do |ride|
    ride.passenger == self
   end
 end

 def drivers
  rides.map do |ride|
    ride.driver
  end
 end

 def self.all
    @@all
 end

 def total_distance
    total = 0
    rides.each do |ride|
      total += ride.distance
    end
   if total == 0
    return "You haven't taken any rides!"
   else total 
   end
  end

  def self.premium_members
   @@all.select do |passenger|
    passenger.total_distance.to_f > 100
   end
  end


 end


