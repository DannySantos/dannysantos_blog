Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users
  resources :posts
  resources :comments, only: [:update, :create, :destroy]
end
