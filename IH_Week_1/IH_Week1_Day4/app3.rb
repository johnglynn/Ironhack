require_relative("lib/verify_cred.rb")
require_relative("lib/word_counter.rb")


puts ""
puts "Please log in to this awesome word processing program."
puts ""
puts "Username:"
entered_username = gets.chomp
puts "Password:"
entered_password = gets.chomp
my_verifier = Verifier.new
result = my_verifier.verify_cred(entered_username, entered_password)
if result == "Credentials Correct" 
	puts "Verification worked, move on to counting the words."	​
end
	puts ""
puts "Hello, #{entered_username}!"
puts ""
puts "Enter some text so we can process it!"
entered_text = gets.chomp

	# USE WORD COUNTER CLASS WITH text VARIABLE

my_wordcount = WordCount.new
result = my_wordcount.word_counter(entered_text)	
	​
	puts ""
	puts "Your text has 4 words in it."
	
else
	puts "Verification did not work!"
end


