SeuRemedioV2::Application.routes.draw do
  root 'pages#index'

  # users devise
  devise_for :users
  namespace :admin do
    resources :users
    # telas intenas
  end
  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
