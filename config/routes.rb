Rails.application.routes.draw do
  root 'static_pages#index'

  resources :static_pages
  resources :products 
  resources :customers
end
