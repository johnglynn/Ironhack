require("imdb") 
#links to IMDB gem installed in terminal
title_array = nil  # *?*  do whe have to put nil?  Could we put [] ?
File.open("movie.txt") do |the_file|
    title_array = the_file.read.split("\n")
end
movies = []
title_array.each do |title|  # *?*  If there was more info than just the movie title in the text file, would we need to creat a Class with initialize?
    movies << Imdb::Search.new(title).movies[0]  # *?*  Review alternate syntax for push
	end


counter = 10
while counter >= 1 do
graph = ""
	movies.each do |movie|
		if movie.rating >= counter  # *?*  verify .rating is part of the imdb gem
			graph += "|#"
			else
			graph += "| "
		end
	end
	puts graph
	counter -= 1 

end

puts " 1 2 3 4 5"  # *?*  this is unclear to me 

movies.each_with_index do |movie, index|
	puts "#{index+1}. #{movie.title}"
end


# graph = ""
# movies.each do |movie|
# 	if movie.rating >= 10
# 		graph += "|#"
# 	else
# 		graph += "| "
# 	end
# end
# puts graph

# graph = ""
# movies.each do |movie|
# 	if movie.rating >= 9
# 		graph += "|#"
# 	else
# 		graph += "| "
# 	end
# end
# puts graph

# graph = ""
# movies.each do |movie|
# 	if movie.rating >= 8
# 		graph += "|#"
# 	else
# 		graph += "| "
# 	end
# end
# puts graph


# def create_graph(item)
# 	# puts item.title
# 	if movies.rating >= 7
# 		puts "|#| |#| |#| |#| |#| |#| |#| "

# 	end
# end



=begin
movies.each do |animate|
	rating = puts animate.rating
end	

if rating >= 9
	puts movie.name
end	
=end



# movies.each do |thing|
# puts thing.rating
# end


# require("imdb")

# the_search = Imdb::Search.new("Captain America: Civil War")

# # The .movie method returns a array that contains the results
# first_result = the_search.movies[0]
 
# puts "Got a total of #{the_search.movies.length} results"
# puts "First result:"
# puts first_result.title
# puts first_result.rating 
