Rails.application.routes.draw do
  resources :locations
  resources :menus
  resources :eateries
  root 'home#index'
  get 'by_loc', to: 'home#by_loc'
end
