Rails.application.routes.draw do

  # Welcome
  get "/" => 'welcome#index', as: 'root'

  # Sessions
  get '/login'     => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout'    => 'sessions#destroy'

  resources :users, :teams, :sports
  
  # Nested Routes for Comments
  resources :teams, shallow: true do
    resources :comments, only: [:create, :destroy]
  end


end
