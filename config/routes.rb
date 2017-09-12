Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :categories
  root to: 'categories#index'
  resources :charges
  resource :cart, only: [:show]
  resources :admins

  resources :brands do
    resources :products
  end
  resources :order_goods
end
