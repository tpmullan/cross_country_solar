Rails.application.routes.draw do
  resources :team_locations
  resources :teams

  # You can have the root of your site routed with "root"
  root 'teams#index'

end
