Rails.application.routes.draw do
  resources 'sessions', only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :wents

	get 'wents/index'
	root 'wents#index'
end
