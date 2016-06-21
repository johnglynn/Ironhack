# lex.rb

class Lexiconomitron

	def eat_t(string)
		t_less_string = string.gsub(/[t,T]/, '')
		return t_less_string
	end	
		
	def shazam(array)
		new_array = []
		array.map do |reversed_array|	
		reversed_array = eat_t(reversed_array.reverse)
		 new_array << reversed_array
	end
		final_array = [new_array[0], new_array[-1]]
		# p new_array[0]
		# reversed_array[-1].push(new_array)
		# puts new_array
	end	

	def oompa_loompa(array)
		new_array = []
		final_array = []
		array.each do | short |
			new_array << eat_t(short)
			end
		# final_array = []	
		# new_array.each do |long|
		# 	if long > 3
		# 	final_array  << short
		
		final_array = new_array.delete_if {|x| x.length > 3}
		p final_array
	end

end	

	# def shazam(array)
	# 	new_array = []
	# 	other_array = []
	# 	array.map do |reversed_array|	
	# 	other_array.push(eat_t(reversed_array.reverse))

	# end
	# 	new_array << other_array[0]
	# 	new_array << other_array[-1]
	# 	puts new_array
	# end	


# end	



# class StringCalculator
# 	def add(numbers_string)
# 		array = numbers_string.split(",")

# 		sum = 0
# 		array.each do |a|
# 			a = a.to_i
# 			sum+=a
# 		end
# 		sum
# 	end
# end	