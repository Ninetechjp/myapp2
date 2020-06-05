Rails.application.routes.draw do
  root   'users#home'
  get    '/signup',    to: 'users#new'
  get    '/index',     to: 'users#index'
  get    '/login',     to: 'sessions#login'
  post   '/login',     to: 'sessions#create'
  delete '/logout',    to: 'sessions#logout'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
