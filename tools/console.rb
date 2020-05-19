require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# g_bakes = Bakery.new("G's Bakery")
# bake1 = Bakery.new("kevin")
# bake2 = Bakery.new("tess")
# donut = Dessert.new("donut", bake1)
# muffin = Dessert.new("muffin", bake2)
# cheesecake = Dessert.new("cheesecake", g_bakes)
# brownie = Dessert.new("Brownie", g_bakes)
# chocolate = Ingredient.new("Chocolate", brownie, 100)
# flour = Ingredient.new("flour", donut, 100)
# sugar = Ingredient.new("sugar", donut, 100)
# dough = Ingredient.new("dough", brownie, 50)

# pass1 = Passenger.new("kevin")
# pass2 = Passenger.new("tess")
# pass3 = Passenger.new("mark")
# pass4 = Passenger.new("jim")
# pass5 = Passenger.new("joe")

# steve = Driver.new("steve")
# juan = Driver.new("juan")
# lima = Driver.new("lima")
# julio = Driver.new("julio")
# frank = Driver.new("frank")

# ride1 = Rides.new(steve, pass1, 12.5)
# ride2 = Rides.new(juan, pass2, 11.0)
# ride3 = Rides.new(frank, pass4, 2.3)
# ride4 = Rides.new(frank, pass1, 5.0)
# ride5 = Rides.new(steve, pass2, 27.8)
# ride6 = Rides.new(lima, pass3, 104.5)

ny = Listing.new("New York")
sea = Listing.new("Seattle")
lon = Listing.new("London")
stl = Listing.new("St.Louis")

guest1 = Guest.new("Steve")
guest2 = Guest.new("Rich")
guest3 = Guest.new("Luis")
guest4 = Guest.new("Chris")
guest5 = Guest.new("Luke")

trip1 = Trip.new(ny, guest1)
trip2 = Trip.new(sea, guest2)
trip3 = Trip.new(lon, guest3)
trip4 = Trip.new(stl, guest4)
trip5 = Trip.new(sea, guest1)

binding.pry
0