Rails.application.routes.draw do
  resources :posts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  get 'sessions', to: 'sessions#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
