

  # ********  CLASSES  ********


# 1.  We create a class using the class keyword:
# class Car


  #  ******** INSTANCE METHODS  ********


# # 3.  But so far the Car can’t do anything! We can add functions to the class which will then be available to every instance of that class. Functions attached to objects are called instance methods or just methods for short. For example:
# 	def honk
# 		puts "Beeeeeep!"
# 	end	
# end
# 2.  We now have a class called Car. We can use it to create objects or instances of that class using the new function.
# my_car = Car.new
# 4.  With the dot we can call the new method of the Car class and we also use it to call methods of instances of classes like Car.
# my_car.honk        # => Beeeeeep!

# There is also a method called class we can invoke to see the class of an instance. Let's look at the class of a Car objects as well as some other value types we've been using in our examples:

# puts my_car.class  # => Car
# puts "cosa".class  # => String
# puts 4.classes 	   # => Fixnum	


  # ********  STATE IN CLASSES  ********

# Aside from being a container for functions, classes and instances can also save values specific to an instance. We call this state in programming. Keeping with our car example, think of characteristics that can change from car to car. I can think of color, make, model and year. We want to have a way to represent that in our class.

# ********  INSTANCE VARIABLES  ********

# A class can have instance variables. An instance variable is a variable that contains a value specific to each instance of the class. These variables are also accessible by the methods of that instance. We mark a variable as an instance variable preceding its name with an at @ symbol. For example

# class Car
#   def initialize(color)
#     @color = color
#   end

#   def honk
#     puts "Beeeeeeeeep!"
#   end

#   def print_color
#     puts @color
#   end
# end

# my_car = Car.new "red"
# other_car = Car.new "grey"

# my_car.print_color  	# => red
# other_car.print_color	# => grey

#  ********  INITIALIZATION  ********

# Wait a minute... what's this initialize method? That is a method called automatically when you create an instance with the new method. This is called a constructor, a function that is called when instances a created (or constructed if you will). This is the way we set values for instance variables, by sending them as values for new. The values are in turn sent to initialize where we can set our instance variables for example.

#  ********  ACCESSOR METHODS  ********

# By default we can't directly access the instance variables of a given instance from outside the instance (after the end). Only the instance methods have access to these values. We can, however, use accessor methods like attr_accessor to provide access to them. With direct access to the color variable we can do away with the print_color method:

# class Car
#   attr_accessor :color

#   def initialize(color)
#     @color = color
#   end

#   def honk
#     puts "Beeeeeeeeep!"
#   end
# end

# my_car = Car.new "yellow"
# other_car = Car.new "brown"

# my_car.color = "grey"

# puts my_car.color  		# => grey
# puts other_car.color  	# => brown

  # ********  INHERITANCE  ********

# Ruby also allows us to extend a class by using inheritance. This is useful if we have a generic class that we want to use as a base to create more specific classes:  

# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def describe
#     puts "This animal's name is #{@name}"
#   end
# end

# class Dog < Animal
# end

# class Cat < Animal
# end

# class Human < Animal
#   def initialize(name, salary)
#     super(name)
#     @salary = salary
#   end

#   def describe_with_salary
#     puts "This human's name is #{@name} and its salary is #{@salary}"
#   end
# end

# dog = Dog.new "Winston Furchill"
# cat = Cat.new "David Meowie"
# human = Human.new "Johnny Appleseed", 12000

# dog.describe   	# => This animal's name is Winston Furchill
# cat.describe  	# => This animal's name is David Meowie
# human.describe  # => This animal's name is Johnny Appleseed
# human.describe_with_salary  # => This human's name is Johnny Appleseed and its salary is 12000 









  
