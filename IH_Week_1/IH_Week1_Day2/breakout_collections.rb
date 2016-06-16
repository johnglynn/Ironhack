Class Array
	def say_hello
		puts "Hey I'm an array"
	end
end		

shopping_array = ["milk", "Banannas", "Salmon", "Pineapple", "Peanut Butter"]
shopping_array[0].capitalize

shopping_array.each do | item |
	puts item
end	
