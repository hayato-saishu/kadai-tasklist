Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/ner'
  get 'users/create'
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :new]
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
