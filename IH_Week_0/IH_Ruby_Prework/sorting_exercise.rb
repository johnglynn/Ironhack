# sentence = "Ruby is challenging."
# sentence_array = sentence.split(' ')
# sentence = sentence_array.sort
# sentence = puts sentence.gsub(/[^A-Za-z0-9\s]/i, '')
# # sentence = gets.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
# # puts sentence

string = "Ruby is challenging!"
string = string.gsub(/[[:punct:]]/, '')
# puts string
string = string.downcase
# puts string
string = string.split(' ')
# puts string
string = string.sort
puts string




