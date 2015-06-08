Rails.application.routes.draw do

  DynamicBlogRouter.load
  DynamicRouter.load

  scope "(:locale)", :locale => /en|es/ do  
    
    resources :blogs, :except => ['show', 'update', 'destroy']
    get    'blogs/:id' => 'blogs#show', :as => 'show_blog'
    put    'blogs/:id' => 'blogss#update'
    delete 'blogs/:id' => 'blogs#destroy'

    resources :subpages 

    resources 'contacts', only: [:new, :create]
    get 'contact' => 'contacts#new'

    devise_for :admins
    resources :photos

    devise_for :users
    root 'pages#home'

    get 'blog' => 'pages#blog'
    get 'about' => 'pages#about'

    get 'album' => 'pages#album'
    get 'weddings' => 'pages#weddings'
    get 'lifestyle' => 'pages#lifestyle'

    get 'admin/photos' => 'pages#admin_photos'
    get 'admin/pages' => 'pages#admin_pages'
    get 'admin/blog' => 'pages#admin_blog'
  end

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
