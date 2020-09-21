Rails.application.routes.draw do
  resources :bloggers, only: [:new, :show, :index, :create]
  resources :destinations, only: [:show]
  resources :posts, only: [:new, :create, :edit, :update, :show]
end
