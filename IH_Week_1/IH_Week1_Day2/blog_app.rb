require_relative ("lib/post.rb")

first_post = Post.ne(("First", Time.now -4 * seconds_in_day, "First text")
first_post = Post.ne(("Second", Time.now -3 * seconds_in_day, "First text")
first_post = Post.ne(("Third", Time.now - 2 * seconds_in_day, "First text")
first_post = Post.ne(("Fourth", Time.now - 1 * seconds_in_day, "First text")
first_post = Post.ne(("Fifth", Time.now, "First text")

the_blog.publish_front_page

input = nil

while input != "exit"
	puts "\nType [next] to see the next page"
	input = gets.chomp

	if input == "next"
		the_blog.go_next
	elsif input == "prev"
		the_blog.go_prev
	end	

	the_blog.print_current_page				
end	

# puts first_post.title
# puts first_post.text
# puts first_post.date