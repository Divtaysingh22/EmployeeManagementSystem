Rails.application.routes.draw do
	root 'emp#home'
	get '/emp/home', :'emp#home'
    # post 'contects/:id', to: 'contects#edit'
    # post 'departments/:id', to: 'departments#edit'
    # post 'projects/:id', to: 'projects#edit'
    # post 'employees/:id', to: 'employees#edit'

	resources :contects, :employees, :projects, :departments
	
	 # controller_name 

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
