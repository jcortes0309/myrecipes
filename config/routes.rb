Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  resources :recipes                                                # Automatically creates the same routes as shown below
  
  # get '/recipes', to: 'recipes#index'                             # Displays a page with all the recipes
  # get '/recipes/new', to: 'recipes#new', as: 'new_recipe'         # Allows us to create new recipes.  
                                                                    # The as: code will show the path in the new_recipe format
  # post '/recipes/', to: 'recipes#create'                          # Allow us to create a new recipe with the post action (post to database)
                                                                    # The 'recipes/new' code will render a form so we have to handle the submission
                                                                    # of this information and post this information  to the database
  # get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'  # Allow us to edit a recipe
                                                                    # The as: code will show the path in the edit_recipe format
  # patch '/recipes/:id', to: 'recipes#update'                      # Allow us to edit a recipe with the patch (or put) action
                                                                    # The 'recipes/new' code will render a form so we have to handle the submission
                                                                    # of this information and update the information in the the database
  # get '/recipes/:id', to: 'recipes#show', as: 'recipe'            # Allow us to view a single recipe
  # delete '/recipes/:id', to: 'recipes#destroy'                    # Allow us to delete / destroy a single recipe
  # The patch and delete code do not have recipe paths (as:)
  
  
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
