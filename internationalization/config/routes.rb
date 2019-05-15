Rails.application.routes.draw do
  post 'javascripts/index'
  get 'javascripts/index'
  root 'sessions#index'
  
end
