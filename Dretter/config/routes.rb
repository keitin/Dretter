Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets
  resources :users
  resources :groups
end
