SeuRemedioV2::Application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :remedies, only: [:show, :create]
  resources :user_remedies
  resources :dependents
end