Rails.application.routes.draw do
  devise_for :users
  root to: 'mains#index'
  resources :mains, only: :index
  resources :guides, only: :index
  resources :contacts, only: :index

  resources :blogs, only: [:index, :new, :create]
  
  resources :faqs, only: [:index, :new, :create]
  resources :items, only: :index
  resources :companies, only: :index
end
