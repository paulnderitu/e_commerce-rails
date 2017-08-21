Rails.application.routes.draw do
  devise_for :users

  resources :admins
  root to: 'brands#index'
  resources :brands do
    resources :products
  end
end
