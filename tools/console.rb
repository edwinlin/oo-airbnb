require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!
guest1 = Guest.new("bob")
guest2 = Guest.new("bobby")
guest3 = Guest.new("Robert")
guest4 = Guest.new("bobby")

listing1 = Listing.new("Seattle")
listing2 = Listing.new("DC")
listing3 = Listing.new("NY")
listing4 = Listing.new("NY")

trip1 = Trip.new(guest1, listing1, 10)
trip2 = Trip.new(guest2, listing2, 10)
trip3 = Trip.new(guest2, listing2, 10)

binding.pry
