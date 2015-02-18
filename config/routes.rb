Rails.application.routes.draw do
  devise_for :users#, :controllers => {:registrations => "users"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Homepage
  root "home#index"

  # Creating directions
  get 'users/:id/commutes/new' => 'commute#new', as: 'new_commute'
  post 'users/:id/commutes/create' => 'commute#create', as: 'commute'

  # Updating directions/viewing Riders
  get 'users/:user_id/commutes/:id/edit' => 'commute#edit', as: 'edit_commute'
  put 'users/:user_id/commutes/:id' => 'commute#update'
  patch 'users/:user_id/commutes/:id' => 'commute#update'

  post 'drivers/create' => 'driver#create', as: 'driver'
  get 'drivers/:id/edit' => 'driver#edit', as: 'edit_driver'

  post 'riders/create' => 'rider#create', as: 'rider'
  get 'riders/:id/edit' => 'rider#edit', as: 'edit_rider'

  # Messages Inbox
  get 'users/:id/inbox' => 'message#index', as: 'inbox'

  post 'users/:id/messages/create' => 'message#create', as: 'message'

  get 'messages/:id' => 'message#destroy', as: 'destroy_message'

  get 'my-rideshare/' => 'rideshare#show', as: 'show_rideshare'

  put 'rideshare/:id/accept' => 'rideshare#update', as: 'accept_rideshare'
  patch 'rideshare/:id/accept' => 'rideshare#update'

  get 'rideshare/:id/remove' => 'rideshare#remove', as: 'remove_rider'

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
