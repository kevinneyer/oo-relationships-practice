class Rides
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    Rides.all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    number = 0
    @@all.each do |ride|
      number += ride.distance
    end
    average_distance = number / @@all.count
    average_distance
 end 

end