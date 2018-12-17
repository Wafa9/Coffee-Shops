Rails.application.routes.draw do
  get 'comments/show'
  get 'comments/edit'
  devise_for :users
  get "/home", to: "pages#home", as: "home"
  resources :shops
  root "pages#home"
end
