Rails.application.routes.draw do
  devise_for :users
  get "/home", to: "pages#home", as: "home"
  resources :shops
  root "pages#home"
end
