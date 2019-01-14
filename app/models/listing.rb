class Listing
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
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
		trips.length
	end

	def self.all
		@@all
	end

	def self.find_all_by_city(city)
		self.all.select do |listing|
			listing.name == city
		end
	end

	def self.most_popular
		@@all.sort_by do |listing|
			listing.trip_count
		end[-1]
	end
end