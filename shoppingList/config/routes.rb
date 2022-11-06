Rails.application.routes.draw do
  #get 'recipe/new'
  #get 'students/new'
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  #root 'welcome#index'
  # root "application#hello"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #resources :students
  resources :recipes
  # Defines the root path route ("/")
  # root "articles#index"
end
