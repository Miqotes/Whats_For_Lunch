Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :reviews
  resources :choices, only: [:new, :create, :show]
  resources :restaurants, only: [:index, :show]
  resources :categories, only: [:show]
  resources :users, only: [:create, :show]
  get '/', to: 'users#index', as: 'welcome'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/sessions', to: 'sessions#destroy'
  get '/random', to: 'choices#random', as: 'random'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
