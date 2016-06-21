require "sinatra"

get "/" do
	"My first Sinatra app."
end

get "/hi" do
	"Hello, World"
	erb(:home)
end

get "/about" do
	erb(:about)
end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
		"eggs",
		"flour",
		"red food coloring",
		"cocoa",
		"buttermilk",
		"sugar",
		"cream cheese"
	]

	erb(:recipe_page)
end

users = {
	"brendan" => { :name => "Brendan Glynn", :email => "brendan.glynn@me.com" , :employer => "Fidelity"}
	"meredith" => { :name => "Meredith Glynn", :email => "meredith.glynn@me.com",  :employer => "MFS"}
	"heather" => { :name => "Heather Glynn", :email => "heather.glynn@me.com",  :employer => "City of Baltimore"}
}

get "/users/:username" do
	@name = params[:username]

	if @name == "john" || @name == "meredith"
		erb(:whiskey_time)
	else
		@info = users[@name]	
		erb(:user_profile)
	end	
end