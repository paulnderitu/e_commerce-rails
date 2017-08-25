Rails.application.routes.draw do
  devise_for :users
  resources :charges

  resource :cart, only: [:show]
  resources :admins
  root to: 'brands#index'
  resources :brands do
    resources :products
  end
  resources :order_goods
end
