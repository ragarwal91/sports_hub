Rails.application.routes.draw do
  resources :users, :teams, :sports

  # Extra User Routes
  post 'users/:id/add_team'    => 'users#add_team',    as: 'add_team_to_user'
  # post 'users/:id/remove_team' => 'users#remove_team', as: 'remove_team_from_user'
  
  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
