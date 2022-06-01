Rails.application.routes.draw do
  resources :ratings, only: [:create, :show, :destroy]
  resources :samples, only: [:create, :show, :destroy]
  resources :userblinds, only: [:create, :destroy, :index, :show]
  resources :blinds, only: [:create, :destroy, :show, :update]
  resources :whiskeys, only: [:create, :index, :show, :update]
  resources :users, only: [:create, :destroy, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
