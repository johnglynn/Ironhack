
class StringCalculator
	def add(numbers_string)
		array = numbers_string.split(",")

		sum = 0
		array.each do |a|
			a = a.to_i
			sum+=a
		end
		sum
	end
end	

		# turn string to array
		# split at comma
		# equation	


		

