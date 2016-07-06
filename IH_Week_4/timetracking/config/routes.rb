Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/say_name/:the_name', to: 'site#display_name'

	get '/calculator', to: 'site#calculator'

	post 'calculate', to: 'site#calculate'

	get '/projects/new', to: 'projects#new'

	get '/projects/:id', to: 'projects#show'

	post '/projects', to: 'projects#create'

	# get '/about', to: 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
