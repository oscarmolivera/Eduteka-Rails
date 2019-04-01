Rails.application.routes.draw do
  root 'welcome#index'
  resources :employees
  resources :companies
end
