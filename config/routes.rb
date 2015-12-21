Rails.application.routes.draw do
  resources :expedients
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
