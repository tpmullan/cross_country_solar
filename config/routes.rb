Rails.application.routes.draw do
  devise_for :users 
  resources :team_locations
  resources :teams

  # You can have the root of your site routed with "root"
  root 'team_locations#index'

end
