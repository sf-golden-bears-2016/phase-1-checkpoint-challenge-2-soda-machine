class Aquarium
	def initialize
		#how do we create composition here?
		@fish = []
	end

	def add_fish(fish)
		@fish << fish
	end
end

class Fish
	def initialize(name)
		@name = name
	end

	def swim
		puts "*paddle paddle*"
	end
end

wanda = Fish.new("Wanda")
aquarium = Aquarium.new
aquarium.add_fish(wanda)