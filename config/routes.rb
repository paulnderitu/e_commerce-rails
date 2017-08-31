Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :categories

  resources :charges
  resource :cart, only: [:show]
  resources :admins
  root to: 'brands#index'
  resources :brands do
    resources :products
  end
  resources :order_goods
end
