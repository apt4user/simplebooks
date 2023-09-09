Rails.application.routes.draw do
  get "categories/index_novels"
  get "categories/index_nonfictions"
  resources :comments
  resources :subcategories
  resources :categories
  resources :authors
  resources :pictures
  post "carts/add"
  post "carts/remove"
  resources :books
  devise_for :users

  resources :books do
    resources :comments
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
