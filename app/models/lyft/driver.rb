class Driver
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    Driver.all << self
  end

  def rides
    Rides.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    rides.map do |ride|
        ride.passenger
    end
  end

  def self.all
    @@all
  end

  def total_mileage
    total = 0
    rides.each do |ride|
      total += ride.distance
    end
    total 
  end

  def self.mileage_cap(distance)
    @@all.select do |driver|
    driver.total_mileage > distance
    end
  end


end