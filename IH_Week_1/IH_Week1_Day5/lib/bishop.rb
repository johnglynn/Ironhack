# They can move any number of spaces on the diagonals as long as they are not obstructed by another chess piece

class Bishop
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
		else
			false
		end
	end			
end

  # ******** Notes  ********

# the absolute value change in x = the absolute value change in y

# if @x(n, n).abs == final_x  and @y(n, n).abs == final_y
# 	true

 # (-n, -n), (-n,  n), ( n, -n) other possible arguments?
 # maybe += and -=
 #  Do I have to set n as a variable <= to 8