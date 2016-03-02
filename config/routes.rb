Rails.application.routes.draw do
  
  devise_for :users
  root to: 'top#index'
  
  resources :blogs
  
  get 'contact/new' => 'contact#new'
  post 'contact/new' => 'contact#new'
  post 'contact/confirm' => 'contact#confirm'
  post 'contact/create' => 'contact#create'
  
  get 'company/show' => 'company#show'
end
