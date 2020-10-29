Rails.application.routes.draw do
  devise_for :organizations
  root "organizations#index"
  resources :users
  resources :organizations
end
