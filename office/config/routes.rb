Rails.application.routes.draw do
  resources :users
  get 'login' => 'session#index'
  post 'login' => 'session#login'
  post 'logout' => 'session#logout'
  root 'welcome#index'
  resources :employees
  resources :companies
end
