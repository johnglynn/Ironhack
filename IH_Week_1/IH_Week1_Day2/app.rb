require_relative("lib/car.rb")
require_relative("lib/spaceship.rb")
require_relative("lib/lightspeed_ship.rb")

first_car = Car.new("Zoooooom", 2)
first_car.drive 

second_car = Car.new("put..put..put", 6)
second_car.drive


require_relative("lib/spaceship.rb")

first_spaceship = Spaceship.new("Woooshhh", 50)
first_spaceship.fly
first_spaceship.travel("Moon")
first_spaceship.travel("Venus")

p first_spaceship.list_of_planets

second_spaceship = Spaceship.new("Brrrrrm", 100)
second_spaceship.fly
second_spaceship.travel("Mars")
second_spaceship.travel("Pluto")

p second_spaceship.list_of_planets

lightspeed_ship = LightspeedShip.new("Buzzzzt", 20)
lightspeed_ship.fly
lightspeed_ship.travel("Black Hole")