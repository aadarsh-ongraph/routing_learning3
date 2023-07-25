Rails.application.routes.draw do
  get 'sidebar/index'
  get 'dropdown_menu/index'
  get 'dropdown_menu/about'
  get 'dropdown_menu/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'dropdown_menu#index'
  # get '/about', to: 'dropdown_menu#about'
  # get '/contact', to: 'dropdown_menu#contact'

  # get '/sidebar', to: 'sidebar#index'

  #  root 'students#index'
  
   
  #   get '/students', to: 'students#index'
  # resources :students
  # get '/students/:id', to: 'students#delete'


  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users/create', to: 'users#create'
  get '/users/:id', to: 'users#view'


  get '/users/edit/:id', to: 'users#edit'

  post '/users/update/:id', to: 'users#update'

  get '/users/delete/:id', to:'users#destroy'

 

    get '/employees', to: 'employees#index'
    get '/employees/new', to: 'employees#new'
    post '/employees/create', to: 'employees#create' 
    get '/employees/delete/:id', to: 'employees#destroy'

    get '/employees/view/:id', to: 'employees#view'
   
  # resources :employees

     get '/customers', to: 'customers#index'
     get '/customers/new', to: 'customers#new'
     post '/customers/create', to: 'customers#create'
     get '/customers/view/:id', to: 'customers#view'
     get '/customers/delete/:id', to: 'customers#destroy'
     get '/customers/edit/:id', to: 'customers#edit'
     post '/customers/update/:id', to: 'customers#update'

end
