# They move in an "L" shape (see the diagram). If they land on an opposing chess piece, it is captured.

class Knight
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(final_x, final_y)	
	change_x = (@x - final_x).abs
	change_y = (@y - final_y).abs

		if(change_x + 2).abs && (change_y + 1).abs  
			true
		elsif (change_x + 1).abs && (change_y + 2).abs
			true			
		else
			false
		end
	end			
end

  # ********  NOTES  ********

  # possible_moves 

  # [x + 2, y + 1]
  # [x + 2, y - 1]
  # [x - 2, y + 1]
  # [x - 2, y - 1]
  # [x + 1, y + 2]
  # [x - 1, y + 2]
  # [x + 1, y - 2] 
  # [x - 1, y - 2]
