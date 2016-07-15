class UsersController < ApplicationController

	def index
		#will show users/index.html.erb
		@users = User.all
	end	
end
