Rails.application.routes.draw do
  
  get 'users/index' => 'users#index'

  get 'users/show' => 'users#show'

  root to: 'top#index'
  
  resources :blogs
  devise_for :users, controllers: { 
    sessions: "users/sessions", 
    registrations: "users/registrations", 
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  
  resources :users, only: [:index, :show]
  
  
  
  get 'contact/new' => 'contact#new'
  post 'contact/new' => 'contact#new'
  post 'contact/confirm' => 'contact#confirm'
  post 'contact/create' => 'contact#create'
  
  get 'company/show' => 'company#show'
end
