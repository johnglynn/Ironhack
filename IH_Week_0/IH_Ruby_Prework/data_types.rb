# ********  STRINGS  ********


# using back slashes and quotation marks
# in this first string, it is cut off after Sharon
# puts unescaped_string = "This is Sharon’s unescaped string"
# puts escaped_string = 'This is Sharon\’s escaped string'


=begin
# INTERPOLATION variables can be interpolated into a string by using the syntax #{variable_name}
# pay attention to use of quotation marks
movie = 'Cloud Atlas'
puts "My favourite movie is #{movie}"
=end

# METHODS FOR STRINGS

=begin
#.capitalize method
name = 'mr. Bond'
capitalized_name = name.capitalize
puts "Hello #{capitalized_name}"
=end

=begin
'awesome'.include? 'you'
'awesome'.include? 'me'
phrase = "Just kidding, you're awesome too"
phrase.include? 'aw'
=end

=begin
my_array = []
my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array
=end

=begin
numbers = [4,6,2,4,7,12,9,12].sort
puts numbers
letters = ['g', 'e', 'n', 'w', 'a'].sort
puts letters
=end

=begin
puts ["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join
 
puts ["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join(', ')
=end

# ********  HASHES  ********

=begin
# HASHES - are used to LABEL things, where ARRAYS are used to LIST things
my_hash = {}

my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash["AST"]
puts my_hash['GAL']

puts my_hash
=end

# METHODS FOR HASHES

=begin
#.has_key? & .has_value? methods

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash.has_key?("AST") 
 #=> true
puts my_hash.has_key?("CAT")
 #=> false
puts my_hash.has_value?("Galicia")
# => true
=end

=begin
# .select Method

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash.select { |key, value| key.include?("G") }
# => { "GAL" => "Galicia" } 
=end 

