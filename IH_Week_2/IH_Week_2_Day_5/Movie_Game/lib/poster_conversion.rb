class PosterConversion


	def initialize (the_result)
		@the_result = the_result

	end	


	def convert 
		final_posters = []
		@the_result.each do |movie|
			if movie.poster == true
			@final_posters << movie.poster	
			end	
		end
		# final_posters.each do |display|

		# end	
	end	

end	