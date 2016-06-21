require_relative("../lib/string_calculator.rb")
# *pay attention to the line above for proper folder structure
RSpec.describe StringCalculator do
			# let :the_calculator do
			# 	StringCalculator.new
			#  ** allows you to not have to restate the_calculator = StringCalculator.new
		it "returns 0 for empty string" do
			the_calculator = StringCalculator.new # ** see above
			expect(the_calculator.add("")).to eq(0)
	end	

		it "returns the number for a single number" do
			the_calculator = StringCalculator.new
			expect(the_calculator.add("6")).to eq(6)
			expect(the_calculator.add("9")).to eq(9)
			

	end	

		it "returns the numbers added up for two numbers" do
			the_calculator = StringCalculator.new
			expect(the_calculator.add("5,7")).to eq(12)
			expect(the_calculator.add("4,3")).to eq(7)
			expect(the_calculator.add("2,3")).to eq(5)


	end	

		it "returns the numbers added up for three numbers" do
			the_calculator = StringCalculator.new
			expect(the_calculator.add("5,7,8")).to eq(20)
			expect(the_calculator.add("4,3,10")).to eq(17)
			expect(the_calculator.add("2,3,5")).to eq(10)


	end	

end





# p the_calculator.add("") == 0
# p the_calculator.add("6") == 6
# p the_calculator.add("9") == 9

# p the_calculator.add("5,7") == 12
# p the_calculator.add("4,3") == 7