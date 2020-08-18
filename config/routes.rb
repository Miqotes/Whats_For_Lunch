Rails.application.routes.draw do
  resources :reviews
  # resources :choices
  # resources :restaurants
  # resources :categories
  resources :users, only: [:create, :show]
  get '/', to: 'users#index', as: 'welcome'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
