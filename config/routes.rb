Rails.application.routes.draw do
  root 'static#welcome'

  get 'static/contact', to: 'static#contact'

  get 'static/about', to: 'static#about'

  get '/puppies', to: 'puppies#index'

  get '/puppies/new', to: 'puppies#new'
  post '/puppies', to: 'puppies#create'

  get '/puppies/:id', to: 'puppies#show', as: :puppy

  get '/puppies/:id/edit', to: 'puppies#edit', as: :edit_puppy
  patch '/puppies/:id', to: 'puppies#update'
  put '/puppies/:id', to: 'puppies#update'

  delete '/puppies/:id', to: 'puppies#destroy'


#          root GET    /                           static#welcome
# static_contact GET    /static/contact(.:format)   static#contact
#   static_about GET    /static/about(.:format)     static#about
#        puppies GET    /puppies(.:format)          puppies#index
#    puppies_new GET    /puppies/new(.:format)      puppies#new
#                POST   /puppies(.:format)          puppies#create
#          puppy GET    /puppies/:id(.:format)      puppies#show
#                GET    /puppies/:id/edit(.:format) puppies#edit
#                PATCH  /puppies/:id(.:format)      puppies#update
#                PUT    /puppies/:id(.:format)      puppies#update
#                DELETE /puppies/:id(.:format)      puppies#destroy


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
