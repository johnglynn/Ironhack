require_relative("lib/car.rb")
require_relative("lib/boat.rb")
require_relative("lib/motorcycle.rb")

the_car = Car.new
the_boat = Boat.new
the_motorcycle = Motorcycle.new

puts the_motorcycle.sound
puts the_boat.sound
puts the_car.sound

puts the_motorcycle.number_of_wheels
puts the_boat.number_of_wheels
puts the_car.number_of_wheels



wheels = [car.new, boat.new, motorcycle.new]

wheels.each do |wheels|
	puts wheel.number_of_wheels
end	