PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :posts, except: [:show, :destroy, :edit, :update]

  resources :users, only: [:show, :create, :edit, :update]
end
