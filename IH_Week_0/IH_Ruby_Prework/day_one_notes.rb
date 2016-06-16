# cities = ["boston", "new york", "miami"]

# cities.each do |city_name|
# 	puts city_name.upcase
# 	puts "Length of name: #{city_name.length}"
# end

# **** .each ****	

# classmates = ["Federico", "John", "Alberto"]

# classmates.each do |name|
# 	puts "Good Morning #{name}!"
# end	


# **** .map  ****

# with map you don't need an empty array
# taking an array and making a new array

# foods = ["Pizza", "French Fries", "Donuts"]

# lengths = foods.map do |dish|
# 	dish.length
# end	

# lowercased = foods.map do |dish|
# 	dish.downcase
# end

# p foods
# # p lengths
# p lowercased

cities = ["monza", "boston", "houston", "new york"]

capitalized_cities = cities.map do |student_city|
	student_city.split.map(&:capitalize).join(' ')
end

p capitalized_cities	



