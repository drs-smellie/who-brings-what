Rails.application.routes.draw do

  root 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'

  resources :users
  resources :sessions
  resources :events


  
end
