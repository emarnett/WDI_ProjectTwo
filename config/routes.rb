#Effectively the API for the website

WDIProjecttwo::Application.routes.draw do

	# match "/upload/grid/*path" => "gridfs#serve"
	# get "/upload/grid/*path", to: 'gridfs#serve'
	
	#get 'registrants' => 'registrants#index'
	#get 'registrants/:id' => 'registrants#show'
	#sign in/out
	get 	'login' => 'session#new', as: :login
	post 	'login' => 'session#create'
	delete	'logout' => 'session#destroy', as: :logout
	#registration
	get 	'register/:code' => 'registration#new', as: :register
	post 	'register/:code' => 'registration#create'

	#Password reset
	get 	'reset/:code' => 'password#edit', as: :reset
	put 	'reset/:code' => 'password#update'
	patch 	'reset/:code' => 'password#update'


	get 'privacy' => 'site#privacy'
	get 'terms' => 'site#terms'
  
  root 'site#index'

  get 	'/:profile_name' => 'profiles#show', as: :profile
  get 	'/:profile_name/edit' => 'profiles#edit'
	put 	'/:profile_name' => 'profiles#update'
	patch	'/:profile_name' => 'profiles#update'

	get 	'/users/:profile_name' => 'users#edit', as: :user
	put 	'/users/:profile_name' => 'users#update'
	patch	'/users/:profile_name' => 'users#update'



end
