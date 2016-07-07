Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/say_name/:the_name', to: 'site#display_name'

	get '/calculator', to: 'site#calculator'

	post '/calculate', to: 'site#calculate'

	get '/projects/new', to: 'projects#new'

	post '/projects', to: 'projects#create'

	get '/projects', to: 'projects#index'

	get '/projects/:id', to: 'projects#show'


	get '/projects/:project_id/time_entries/new', to: 'time_entries#new'

	post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

	get '/projects/:project_id/time_entries', to: 'time_entries#index'

	get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit'

	patch '/projects/:project_id/time_entries/:id', to: 'time_entries#update', as: 'project_time_entry'

	

	# get '/about', to: 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
