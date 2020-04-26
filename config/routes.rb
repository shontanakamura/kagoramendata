Rails.application.routes.draw do
  devise_for :users
  root to: "posts#top"
  resources :posts, only: [:index, :new, :create, :destroy] 
  resources :comments, only: [:index, :new]
end
