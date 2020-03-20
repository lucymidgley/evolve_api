Rails.application.routes.draw do
  resources :game_saves
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :organisms
  resources :seeds
  resources :cells
  resources :food_instances
  resources :games
  resources :foods
  resources :users
  resources :gamedata
  resources :sessions
  resources :getuser
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
