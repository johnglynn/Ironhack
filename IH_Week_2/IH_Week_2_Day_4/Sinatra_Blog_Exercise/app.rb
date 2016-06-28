require "sinatra"
require "sinatra/reloader"

require_relative("lib/post.rb")
require_relative("lib/blog.rb")

blog = Blog.new("posts")
blog.add_post Post.new("title")
blog.add_post Post.new("text")

get "/" do
	@posts = blog.posts
	erb(:home)
end	

get "/new_post" do
	erb :new_post
end

post "/add_post" do 
	new_post = Post.new( params[:post_content])
	# what goes here?(new_post)
	redirect to("/")
end	




seconds_in_day = 60 * 60 * 24

the_blog = Blog.new
the_blog.add_post Post.new("First", Time.now - 4 * seconds_in_day, "First text")
the_blog.add_post Post.new("Second", Time.now - 3 * seconds_in_day, "Second text")
the_blog.add_post Post.new("Third", Time.now - 2 * seconds_in_day, "Third text")
the_blog.add_post Post.new("Fourth", Time.now - 1 * seconds_in_day, "Fourth text")
the_blog.add_post Post.new("Fifth", Time.now, "Fifth text")
the_blog.add_post Post.new("Sixth", Time.now, "Sixth text")
the_blog.add_post Post.new("Seventh", Time.now, "Seventh text")
the_blog.add_post Post.new("Eighth", Time.now, "Eighth text")
the_blog.add_post Post.new("Ninth", Time.now, "Ninth text")
the_blog.add_post Post.new("Tenth", Time.now, "Tenth text")
the_blog.add_post Post.new("Eleventh", Time.now, "Eleventh text")
the_blog.add_post Post.new("Twelth", Time.now, "Twelth text")
the_blog.add_post Post.new("Thirtheenth", Time.now, "Thirtheenth text")
the_blog.add_post Post.new("Fourteenth", Time.now, "Fourteenth text")

the_blog.print_current_page


input = nil

while input != "exit"
  puts "\nType [next] to see the next page or [prev] to see the previous page."
  input = gets.chomp

  if input == "next"
    the_blog.go_next
  elsif input == "prev"
    the_blog.go_prev
  end

  the_blog.print_current_page
end