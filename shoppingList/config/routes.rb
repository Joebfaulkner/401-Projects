Rails.application.routes.draw do
  get 'home/menu'
  #get 'ingredients/new'
  #get 'recipe/new'
  #get 'students/new'
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  delete 'home/delete'
  #root 'welcome#index'
  # root "application#hello"
  #root 'recipe#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :students
  resources :recipes
  resources :ingredients
  # Defines the root path route ("/")
  # root "articles#index"
end
