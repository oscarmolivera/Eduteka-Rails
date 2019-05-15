Rails.application.routes.draw do
  resources :users
  post 'javascripts/index'
  get 'javascripts/index'
  root 'sessions#index'
  
end
