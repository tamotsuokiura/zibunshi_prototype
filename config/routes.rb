Rails.application.routes.draw do
  devise_for :organizations do
    get '/organizations/sign_out' => 'devise/sessions#destroy'
  end
  root "organizations#index"
  resources :users
  resources :organizations
end
