def solve_cypher(input) # input is not a reserved word, must match variable
	input = (input).split("")
	# puts input
	new_letters = [] # empty variable to contain new letters / output

	for i in input
		# print "#{i} - "
		i = i.ord - 3
		# print "#{i} - "
		i = i.chr
		new_letters.push(i) #places i into variable new_letters as an array
		# puts i
	end

	p new_letters # p vs. puts/print displays everything on one line.  good for checking/testing
	input = new_letters.join("")
	# puts input

end
# abcdefghijklmnopqrstuv
# mrkq = john
# khoor = hello
solve_cypher("khoor")



