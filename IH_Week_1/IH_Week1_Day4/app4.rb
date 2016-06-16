require_relative("lib/verify_cred.rb")
require_relative("lib/word_counter.rb")
my_wordcount = WordCount.new
my_verifier = Verifier.new

puts ""
puts "Please log in to this awesome word processing program."
puts ""
puts "Username:"
entered_username = gets.chomp
puts "Password:"
entered_password = gets.chomp

result = my_verifier.verify_cred(entered_username, entered_password)

if result == "Credentials Correct"
	puts "Verification worked, move on to counting the words."


puts ""
puts "Hello, #{entered_username}!"
puts ""
puts "Enter some text so we can process it!"
entered_text = gets.chomp

# my_wordcount = WordCount.new
result = my_wordcount.word_counter(entered_text)

	puts ""
	puts "Your text has #{result} words in it." #result

else
	puts "Verification did not work!"
end	
