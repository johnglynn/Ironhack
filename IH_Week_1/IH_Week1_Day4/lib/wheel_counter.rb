require_relative("lib/car.rb")
require_relative("lib/boat.rb")
require_relative("lib/motorcycle.rb")

Class WheelCounter
	def initialize(array)
		@array = array
	end	
	def wheel_counter
		puts @array.reduce
	
	end
end	

# array.reduce(0) {|sum, num| sum + num**2 }