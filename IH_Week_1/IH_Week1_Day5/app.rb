require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

black_rook_right = Rook.new(1,8, "black")

puts "Rook Tests"

p black_rook_right.can_move?(8,5) == true #vertical
p black_rook_right.can_move?(4,8) == true #horizontal
p black_rook_right.can_move?(5,5) == false #diagnol
p black_rook_right.can_move?(3,6) == false # side

puts ""

# black_king = King.new(5,8, "black")

# puts "King Tests"

# p black_king.can_move?(5,7) == true #foward movement
# p black_king.can_move?(6,7) == true #diagonal movment
# p black_king.can_move?(5,4) == false
# p black_king.can_move?(7,5) == false

# puts ""

# black_bishop = Bishop.new(3,8, "black")

# puts "Bishop Tests"

# p black_bishop.can_move?(,) == true 
# p black_bishop.can_move?(,) == true 
# p black_bishop.can_move?(,) == false
# p black_bishop.can_move?(,) == false

# puts ""

# black_knight = Knight.new(2,8, "black")

# puts "Knight Tests"

# p black_knight.can_move?(,) == true 
# p black_knight.can_move?(,) == true 
# p black_knight.can_move?(,) == false
# p black_knight.can_move?(,) == false

# puts ""

# black_queen = Queen.new(5,8, "black")

# puts "Queen Tests"

# p black_queen.can_move?(,) == true 
# p black_queen.can_move?(,) == true 
# p black_queen.can_move?(,) == false
# p black_queen.can_move?(,) == false

# puts ""

# black_pawn = Pawn.new(1,7, "black")

# puts "Pawn Tests"

# p black_pawn.can_move?(,) == true 
# p black_pawn.can_move?(,) == true 
# p black_pawn.can_move?(,) == false
# p black_pawn.can_move?(,) == false

# puts ""



