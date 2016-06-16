class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

#* don't worry about me...  I'm just here as an example of a simple for loop
# for number in 0..100  
#   puts number
# end

#* don't worry about me...  I'm just here as an example of a simple for loop
# for pos in 0..100
#   puts homes[pos].name
# end

#* don't worry about me...  I'm just here as an example of a simple each loop
# homes.each do |hm|
#   puts hm.name
# end


  # ********  EXERCISE EACH  ********

# homes.each do |quotes|
# 	puts "#{quotes.name}'s place in #{quotes.city} is $#{quotes.price} a night"
# end

  # ******** end exercise  ********

# * example of MAP 

# cities = homes.map do |hm|
#   hm.city
# end

# puts cities

# * example 2
# # Good return
# cities = homes.map do |hm|
#   # Return each home's city
#   puts hm.city
# end


  # ********  EXERCISE MAP  ********

  # Map the array of homes into an array of their prices. Use that array of prices to get the average price of homes. What collection method should you use for the average?

  # prices = homes.map do |hm|
  # 	puts hm.price
  # end	

    # *********  EXERCISE 2  ********

  homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
  Home.new("Sebastian's place", "Bogota", 4, 80)
  Home.new("Carolina's place", "Miami", 7, 77)
  Home.new("Wei's place", "I don't know", 10, 5)
  Home.new("Jojo's place", "Ibiza", 7, 85)
  Home.new("Devorah's place", "Miami", 5, 75)

  input = nil

  while input !="exit"
  	puts "What is your selection"
]
