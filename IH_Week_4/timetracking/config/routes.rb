Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/say_name/:the_name', to: 'site#display_name'

	get '/calculator', to: 'site#calculator'

	post '/calculate', to: 'site#calculate'

	resources :projects, only: [:index, :show, :new, :create] do
		resources :time_entries, except: [:show]
	end	

	

	# get '/about', to: 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
