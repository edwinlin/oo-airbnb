class Trip
	attr_accessor :guest, :listing, :duration
	@@all = []

	def self.all
		@@all
	end

	def initialize(guest, listing, duration)
		@guest = guest
		@listing = listing
		@duration = duration
		@@all << self
	end
end