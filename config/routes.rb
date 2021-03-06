Rails.application.routes.draw do
  root :to => "main#index"
  devise_for :sites, controllers: { :registrations => "sites/registrations", :sessions => "sites/sessions", :passwords => "sites/passwords", :confirmations => "sites/confirmations" }
  
  
  resources :sites, :only => [:show] do
    resources :articles, only:[:index, :show]
    resources :faqs, only:[:index]
  end
  
  namespace "admin" do
    root :to => "dashboard#index"
    resources :services, :members, :articles, :faqs, :maps, :pages, :topimages, :blocks
    resources :page_images, :page_texts, :cells, only:[:create, :update ,:destroy]
    resources :items, only:[:create, :destroy, :update]
    resources :itemtexts, controller: :items, type: 'Itemtext', only:[:create, :destroy, :update]
    resources :itemmovies, controller: :items, type: 'Itemmovie', only:[:create, :destroy, :update]
    resources :itemimages, controller: :items, type: 'Itemimage', only:[:create, :destroy, :update]
    
    post 'items/up_position', to: 'items#up_position'
    post 'items/down_position', to: 'items#down_position'
    
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
