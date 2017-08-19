Rails.application.routes.draw do
  root to: 'brands#index'
  resources :brands do
    resources :products
  end
end
