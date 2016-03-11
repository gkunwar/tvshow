Rails.application.routes.draw do
  resources :users, only: :index
  resources :shows, only: :index
end
