Rails.application.routes.draw do
  get 'shopping/list'
  get 'home/menu'
  #get 'ingredients/new'
  #get 'recipe/new'
  #get 'students/new'
  #get 'welcome/index'
  root "recipes#new"
  get "/recipes", to: "recipes#new"
  get "/recipes/new/:recipe_id", to: "recipes#show"
  resources :recipes
  resources :ingredients
  match ':controller(/:action(/:id))', :via => :get
  # Defines the root path route ("/")
  # root "articles#index"
end
