def permutation?(string_1, string_2)
	if string_1.chars.sort == string_2.chars.sort
		return true
	else
		return false
	end
end	

permutation?('john', 'rachel')