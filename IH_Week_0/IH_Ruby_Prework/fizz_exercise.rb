counter = 1
while counter < 101
	puts counter
	counter =counter + 1
	if counter % 3 == 0 && counter % 5 == 0
	puts "fizzbuzz"
	elsif counter % 5 == 0
	puts "buzz"	
	elsif counter % 3 == 0
		puts "fizz"
	else
	puts counter		
	end	
end