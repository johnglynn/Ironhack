# she can move any number of spaces in any direction, as long as she is not obstructed by another chess piece
class Queen
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)

	change_x = (@x - final_x).abs
	change_y = (@y - final_y).abs
	
		if change_x == change_y 
			true
		elsif @x == final_x || @y == final_y
			true	
		else
			false
		end
	end			
end


  # ********  NOTES  ********

      # possible_moves

      # count <= 8    

      # [x + count, y + count]
      # [x - count, x - count]
      # [x + count, x - count]
      # [x - count, y + count]
      # [x + count, y]
      # [x - count, y]
      # [x, y + count]
      # [x, y - count] 


#   ********  CLASS REVIEW  ********

# create a module DiagonalMover
# create a module StraightMover

# inherit piece
# include DiagonalMover
# include StraightMover



