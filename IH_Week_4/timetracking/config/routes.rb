Rails.application.routes.draw do

	get '/', to: 'site#home'
	# get '/about', to: 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
