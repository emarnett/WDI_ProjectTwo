#Effectively the API for the website

WDIProjecttwo::Application.routes.draw do

	#get 'registrants' => 'registrants#index'
	#get 'registrants/:id' => 'registrants#show'
	#sign in/out
	get 	'login' => 'session#new'
	post 	'login' => 'session#create'
	delete	'logout' => 'session#destroy'
	get		'logout' => 'session#destroy'

	#registration
	get 	'register/:code' => 'registration#new'
	post 	'register/:code' => 'registration#create'

	#Password reset
	get 	'reset/:code' => 'password#edit'
	put 	'reset/:code' => 'password#update'
	patch 	'reset/:code' => 'password#update'


	get 'privacy' => 'site#privacy'
	get 'terms' => 'site#terms'
  
    root 'site#index'
end
