# The King can move one space in any direction (see the diagram). He can never move in to "check" (where he is threatened by another piece). This means the king can never be in the space adjacent to the opposing King.

class King
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)	
		if @x + 1 == final_x && @y == final_y
			true
		elsif @x - 1 == final_x && @y == final_x
			true
		elsif @x == final_x && @y + 1  == final_y
			true	
		elsif @x == final_y && @y - 1 == final_y
			true		
		else
			false
		end
	end			
end

 # def straight_in_any_direction(how_many)
 #            Array(how_many[:cells]).each do |n|
 #             @moves.push Move.new( n,  0), Move.new(-n,  0),
 #                         Move.new( 0,  n), Move.new( 0, -n)
 #            end
 #          end