require_relative("../lib/blog.rb")

Rspec.describe Blog do
	before(:each) do
		@blog = Blog.new(...)	
	end

	it("#posts returns list of posts") do
		expect(@blog.posts).to  # what matcher goes here
	end
end		