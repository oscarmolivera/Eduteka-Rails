Rails.application.routes.draw do
  resources :users
  get 'login' => 'session#index'
  post 'login' => 'session#login'
  root 'welcome#index'
  resources :employees
  resources :companies
end
