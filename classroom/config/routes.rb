Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :students

  unauthenticated do
    root to: 'home#index'
  end
  authenticated do
    root to: 'students#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
