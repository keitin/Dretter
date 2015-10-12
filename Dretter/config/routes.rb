Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets
  resources :users
  resources :groups do
    collection do
      get 'search'
    end
    member do
      post 'join'
      post 'change'
    end
  end
end
