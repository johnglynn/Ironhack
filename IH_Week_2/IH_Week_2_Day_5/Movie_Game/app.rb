require "sinatra"
require "sinatra/reloader"
require("imdb")

require_relative("lib/poster_conversion.rb")


get "/" do
	erb(:Ask_Word)
end

post "/search" do
	movies_with_posters = []
	the_search = Imdb::Search.new(params[:word])
	the_result = the_search.movies[0..14]

	@display_posters = PosterConversion.new(the_result).convert
	# the_result.each do |movie|
	# 	if movie.poster != nil
	# 	movies_with_posters << movie
	# 	end
	# end
# @final_movies = (movies_with_posters[0..8])


	erb(:Game)
end




# the_search = Imdb::Search.new("") #what goes here

# the_result = the_search.movies[] #need to figure out how to convert the movies in the array into posters and pust to a new view

# the_result = the_result.posters #display 9 posters


# require("imdb")


# the_search = Imdb::Search.new("Captain America: Civil War")


# # The .movies method returns the array that contains the results
# first_result = the_search.movies[0]


# puts "Got a total of #{the_search.movies.length} results"


# # The Imdb::Movie class contains the movie info
# #     Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie
# puts "First result:"
# puts first_result.title
# puts first_result.rating


