Rails.application.routes.draw do
  get "/home", to: "pages#home", as: "home"
  get "/comments/show"
  get "/comments/edit"
  devise_for :users
  resources :shops
  resources :products
  root "pages#home"
end
