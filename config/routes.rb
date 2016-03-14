Rails.application.routes.draw do
  
  root to: 'top#index'
  
  resources :blogs
  devise_for :users
  resources :users, only: [:index, :show]
  
  
  
  get 'contact/new' => 'contact#new'
  post 'contact/new' => 'contact#new'
  post 'contact/confirm' => 'contact#confirm'
  post 'contact/create' => 'contact#create'
  
  get 'company/show' => 'company#show'
end
