Rails.application.routes.draw do
  resources :users, :teams, :sports

  # Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
