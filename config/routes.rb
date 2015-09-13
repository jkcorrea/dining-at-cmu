Rails.application.routes.draw do
  resources :locations
  resources :menus
  resources :eateries
  root 'home#index'
end
