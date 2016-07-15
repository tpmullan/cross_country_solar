Rails.application.routes.draw do
  devise_for :users, path_names: {
      sign_up: ''
  }
  resources :team_locations
  resources :teams

  # You can have the root of your site routed with "root"
  root 'teams#index'

end
