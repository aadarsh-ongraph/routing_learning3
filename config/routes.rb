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

   root 'students#index'
  #  get 'students', to: 'student#index'
  resources :students, only: [:index, :new, :create]
end
