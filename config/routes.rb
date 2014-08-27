Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  get '/howitworks' => 'static_pages#howitworks'

  get '/team' => 'static_pages#team'

  get '/seekerssurvey' => 'surveys#seekers'

<<<<<<< HEAD
  get '/ownersurvey' => 'surveys#owners'

  get '/browseseekers' => 'browse#seekers'
=======
  get '/ownerssurvey' => 'surveys#owners'

  get '/browsesseekers' => 'browse#seekers'
>>>>>>> 597dbdaa0e6ad969fc1a90e6c3b95b1352327a5a

  get '/browseowners' => 'browse#owners'

  get '/deviseshow' => 'devise#show'



  devise_for :users
  resources :users
  resources :surveys
  resources :browses
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index'


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
