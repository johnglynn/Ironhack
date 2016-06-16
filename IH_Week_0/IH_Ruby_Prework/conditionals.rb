#  ******** IF, ELSIF, ELSE STATMENTS  ********

# IF statment
# puts "What is your favorite animal?"
# animal = gets.chomp
# if animal == "Dog"
#   puts "You like dogs. Woof!"
# end

# ELSIF statment
# puts "What is your favorite animal?"
# animal = gets.chomp
# if animal == "Dog"
#   print "You like dogs. Woof!"
# elsif animal == "Cat"
#   print "You like cats. Meow!"
# end

#ELSE statment
# puts "What is your favorite animal?"
# animal = gets.chomp
# if animal == "Dog"
#   print "You like dogs. Woof!"
# elsif animal == "Cat"
#   print "You like cats. Meow!"
# else 
#   print "You don’t like cats or dogs? Okay."
# end

# general STATMENTS notes
# if (condition)
#   code to be executed if this condition is true
# elsif (another condition)
#   code to be executed if this condition is true
# elsif (even another condition)
#   code to be executed if this condition is true
# #add more if needed
# else # the final else is optional!
#   code to be executed if none of the above are true
# end 
 #  ********  LOOPS  ********

 # FOR loops
 # we can use for to iterate through a collection

numbers = [1,2,3]
for element in numbers
  puts "#{element}"
end 

# WHILE loops
# while is a construct that runs a chunk of code while a given condition is true. Once the condition is no longer true, the code stops running. It’s important to make sure that something happens in your loop so that the condition will eventually evaluate false, otherwise you will have an infinite loop

# string = ""
# # While the string's length is less than 10
# while string.length < 10
#   # Add an 'a'
#   string = string + 'a'
# end
# puts "The final string is #{string}"

#  ********  ITERATING ARRAYS  ********

#The most common type of loop is done with arrays and hashes, and uses a method called #each. Arrays being lists, it's natural to want to go through each item in the list. We call this array traversal or iteration
 
# numbers = [ "One", 2, "Three" ] 

# numbers.each do |item|
# 	puts "#{item}"
# end

#(code above)Here, we are telling ruby to go through the array and for each item, execute the block of code (between do and end). Where it says item that’s just a variable that we are using to represent each item in the array. We can name it whatever we want.

# my_hash = {}
# my_hash["AST"] = "Asturias"
# my_hash["GAL"] = "Galicia"
# my_hash["CAT"] = "Catalunya"

# my_hash.each do |key, value|
# 	puts "#{key} stands for #{value}"
# end	




