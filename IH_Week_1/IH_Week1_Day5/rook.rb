# These chess pieces move up and down the rank and file of the chessboard, and can move any number of spaces as long as they are not obstructed by another chess piece (see the diagram

class Rook
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)	
		if @x == final_x || @y == final_y
			true
		else
			false
		end
	end			
end
