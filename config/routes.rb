Rails.application.routes.draw do
  devise_for :users

  resource :cart, only: [:show]
  resources :admins
  root to: 'brands#index'
  resources :brands do
    resources :products
  end
  resources :order_goods
end
