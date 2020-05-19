class Listing
    attr_accessor :city
    @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    trips.map do |trip|
       trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.select do |listing_instance|
        listing_instance.city == city 
    end
  end

  # def self.most_popular => need to correct
  #   popular_array = []
  #   @@all.select do |listing_instance|
  #     popular_array << listing_instance.trip_count
  #   end
  # end

end