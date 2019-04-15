Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :poet
  root  'poets#index'
  resources :poets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show] 
end
