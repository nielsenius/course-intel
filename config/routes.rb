Rails.application.routes.draw do
  
  resources :posts
  resources :college_classes
  resources :users
  resources :sessions
  
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout
  get 'signup', to: 'users#new', as: :signup
  
  get 'home/index' => 'home#index', as: :home
  get 'home/submit_search' => 'home#submit_search'
  post 'home/submit_search' => 'home#submit_search'
  root 'home#index'
    
end
