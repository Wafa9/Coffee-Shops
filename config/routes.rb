Rails.application.routes.draw do
  devise_for :users
  resources :shops
  resources :products
  get "/home", to: "pages#home", as: "home"
  get "/search", to: "pages#search"
  get "/comments/show"
  get "/comments/edit"
  root "pages#home"
end
