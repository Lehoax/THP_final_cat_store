Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    resources :avatars, only: [:create, :update]
    resources :carts, only: [:show, :edit, :update]
  end

  resources :items, only: [:show, :destroy]

  root "static_pages#index"

  post "/orders", to: "orders#create"
  get "/team", to: "static_pages#team"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
