class WordCount
	def word_counter(entered_text)
		entered_text.split.reject { |w| w =~ /(\W|_|\d)/ }.count
	end
end