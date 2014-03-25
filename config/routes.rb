SeuRemedioV2::Application.routes.draw do
  root 'pages#index'

  devise_for :users
  resources :users, only: [:new, :create]
  namespace :admin do
    root to: 'reminders#index'
    resources :reminders
    resources :users
  end
end
