Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :new]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
