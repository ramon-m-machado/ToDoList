Rails.application.routes.draw do
  resources :items
  devise_for :users
  resources :lists
  get 'home/index'
  root 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
