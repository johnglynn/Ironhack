# The Pawn has several unique attributes. In their first move, each pawn has the option to move forward one space or two spaces. After this move, they can only move one space forward.

class Pawn
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end	

	def can_move?(color, final_x, final_y)	
		if  color == "white"
			if @x + 1 == final_x && @y == final_y
				true
			else 
				false	
			end	
		elsif color == "black"
			if @x - 1 == final_x && @y == final_y
				true
			else
				false
			end		
		end
	end			
end

    def determine_step_counter(to_x) # should argument be x? 
        step = 0
        if @step_counter > 1
            if (@x - to_x).abs == 1
                step = 1
            elsif (@x - to_x).abs == 2
                step = 2
            end
        else
            step = 1
        end
        return step
    end


  # ********  NOTES  ********

  # 1st move triggered from place on board

  #white pawn's x position is 2
  #  @x + 2 = final_x && @y == final_y

  # possible_moves

  # if @x + 1 == final_x && @y == final_y
  # 	true

  # * except on 1st move