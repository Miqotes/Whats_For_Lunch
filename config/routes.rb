Rails.application.routes.draw do
  resources :choices
  resources :restaurants
  resources :categories
  resources :users, only: [:create, :index, :show]
  get '/signup', to: 'users#new', as: 'signup'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
