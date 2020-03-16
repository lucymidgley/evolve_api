Rails.application.routes.draw do
  resources :organisms
  resources :seeds
  resources :cells
  resources :food_instances
  resources :games
  resources :foods
  resources :users
  resources :gamedata
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
