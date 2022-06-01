Rails.application.routes.draw do
  resources :ratings
  resources :samples
  resources :userblinds
  resources :blinds
  resources :whiskeys
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
