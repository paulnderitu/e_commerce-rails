Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :categories
  root to: 'categories#index'
  resources :charges
  resource :cart, only: [:show]
  resources :admins

  resources :brands do
    member do
      put 'like', to: 'brands#upvote'
      put 'dislike', to: 'brands#downvote'
    end

    resources :products do
      member do
        put 'like', to: 'products#upvote'
        put 'dislike', to: 'products#downvote'
      end
    end
  end

  resources :order_goods
end
