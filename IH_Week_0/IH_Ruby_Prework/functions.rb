  # ******** FUNCTIONS ********

# A function is the most basic way we have to reuse code in our programs. A function in Ruby has several characteristics:

# it starts with def and ends with end
# it has a unique name
# it always returns a value

# We can define and call a function as easily as

# def say_hello
# 	puts "Hello!"
# end

  # ********  ARGUMENTS  ********

  # def say_hello (name)
  # 	puts "Hello, #{name}!"
  # end
  
  # say_hello("Rafa")
  # say_hello("Xavi")
  # say_hello("Isra", "Fernando")	=> this example will not work because ruby has been given to many arguments

    # ********  EXPRESSIONS  ********

  # An argument doesn’t have to be a simple value. You can also pass an expression as an argument. An expression is a value or several values that are replaced by another value after applying some operators (like +, -, *, etc.). The expressions are evaluated first and then only the final value is passed as an argument. For example:  

  # def say_hello(name)
  # 	puts "Hello, #{name}!"
  # end
  
  # say_hello("James " + "Bond")	

  # def add(a, b)
  # 	puts a + b
  # end
  
  # add((5 * 5), (5 + 3))	
  # # => equals 33
  # add((3 + 4) * 10, 8 - 4 / 2)
  # # => equals 76
  # # !!! no space between function name and parentheses !!!

    # ********  USING FLOW CONTROLL IN A FUNCTION  ********

 # Those logic values and conditions we just learned about are very useful to have your programs make decisions with. We can execute code if a certain condition is met, in other words if the condition is true.  
 
 # def taste(food) 
 # 	if food == "bacon"
 # 		puts "Yummy!!!  BACON!!!"
 # 	end
 # end

 # taste "spinach"
 # taste "bacon"

 # def taste(food)
 # 	if food == "bacon"
 # 		puts "Yummy!!!  BACON!!!"
 # 	elsif food == "spinach"
 # 		puts "Urgh..."
 # 	else
 # 		puts "Can I have some bacon on the side?"
 # 	end
 # end

 # taste "bacon"
 # taste "kale"
 # taste "spinach"

 # !!!  don't forget that if statments need their own "end"  !!!	
   

   # ********  RETURN VALUES  ********



# Functions have return values. The function will always return the value of the last line of the function. If the last line it’s a call to another function, it will return the return value of that function. It sound confusing, but it’s easy to understand. Let’s see some examples:

# def square(number)
#   puts number * number
# end

# square(4) # it will return 16

# def multiply(a,b)
#   puts a * b
# end

# multiply(4, 2) # it will return 8

# a more tricky example

# def square(number)
#   puts number * number
# end

# square(4)# nil

# Since in the last line of the function we are calling another function puts number * number the function will return whatever returns this function. puts always return nil, that’s why it will return nil

# # !!!  the output in the terminal will be 16 but the value will actually be nil, because the function has ended with a "puts"  !!!

# How can you check that it is actually returning nil? (since the output in the terminal is 16)

# def square(number)
#   puts number * number
# end

# puts(square(4))
# # This will print 16 AND nil
# # The printing of 16 comes from the puts inside the function
# # The printing of nil comes from the puts outside the function

# def multiply(a, b)
#   a * b
# end

# puts multiply(4, 2)
# # This will only print 8

# It’s important to note that returning something is always the last thing the function does. If you use the keyword return in your function, you’re telling it to return the value and stop there. Any code after the first return will not be executed.

# def add(a, b)
#   return a + a  # => stops here
#   return a + b
#   return b + b
# end

# puts add(1,  3) # => prints 2 because it stops at the 1st return

# But if you want to return more than one value, you can! This is something cool that you can do in Ruby that is not as easy to do in other languages. You just need to put the values you want to return all on the SAME LINE.

# def add(a, b)
#   calc1 = a + a
#   calc2 = a + b
#   calc3 = b + b
#   return calc1, calc2, calc3
# end

# puts add(2, 4)
#   # => prints [4, 6, 8]

# It is a good practice not to use the keyword ‘return’ when we are returning the last line. We will use the ‘return’ keyword when we mean to stop the execution and return some value.

# def square(num)
#   sqr_num = num * num
#   if sqr_num > 100
#     return "Number too big!!"
#   end
#   sqr_num
# end

# puts square(150)


   					
