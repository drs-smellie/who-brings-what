Rails.application.routes.draw do

  root 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'about', to: 'welcome#about', as: 'about'

  resources :users
  resources :sessions
  resources :events do
    resources :lists
  end
end
