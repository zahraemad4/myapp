Rails.application.routes.draw do
  get 'clints/index'
  get 'phones/index'
  devise_for :users
  resources :jobs
  resources :cars
  resources :books
  resources :profiles
  resources :users
  root to:"users#index"

  resources :clints do
  resources :phones , only:[:index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
