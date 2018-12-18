Rails.application.routes.draw do
  get "/home", to: "pages#home", as: "home"
  get "/comments/show"
  get "/comments/edit"
  get "/search", to: "pages#search"
  devise_for :users
  resources :shops
  resources :products
  root "pages#home"
end
