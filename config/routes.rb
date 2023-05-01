Rails.application.routes.draw do

  resources :themes
  resources :images
  resources :values
  resources :users
  root 'work#index'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'


  # work
  match 'work',             to: 'work#index',            via: 'get'
  match 'choose_theme',     to: 'work#choose_theme',      via: :get
  match 'display_theme',    to: 'work#display_theme',      via: :post
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
