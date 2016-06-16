Class Blog
	def initialize()
		@posts = []
	end	

	def add_post(new_post)
		@posts.push(new_post)
	end
	
	# def publish_front_page
	# 	@posts.each do |the_post|
	# 	the_post.print
	# end		

	def go_next
		@page_start += 3
		@page_end += 3
	end

	def go_prev
		@page_start -= 3
		@page_end -= 3
	end

	def print_current_page
		current_posts = @posts[@page_start..@page_end]

		current_posts = @posts.each do |the_post|
			the_post.print
		end		
	end	

end

Class Post
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end	
end