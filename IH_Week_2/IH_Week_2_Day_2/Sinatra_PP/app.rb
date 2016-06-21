require "sinatra"

require "artii"

get "/ascii/:the_word/?:the_font?/?:the_extra?" do


the_font = params[:the_font] 
the_word = params[:the_word]
the_extra = params[:the_extra]


	if the_font == "alligator" || the_font == "3-d" || the_font == "3x5"

		asciifier = Artii::Base.new(:font => the_font)

	else

		asciifier = Artii::Base.new(:font => "doh")
	end

# puts "Try again!"	

# asciifier = Artii::Base.new(:font => "try again")


@final_product = asciifier.asciify(the_word)

	if the_word == "dog" && the_font == "special" &&  the_extra == "secret"
		
		erb(:dog) 	
else

	erb(:word)
	end
end