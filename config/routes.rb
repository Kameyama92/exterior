Rails.application.routes.draw do
  root to: 'mains#index'
  resources :mains, only: :index
  resources :guides, only: :index
  resources :contacts, only: :index
  resources :blogs, only: :index
  resources :faqs, only: :index
  resources :items, only: :index
  resources :companies, only: :index
end
