Reliveradio::Application.routes.draw do

  match "info/ueber" => 'info#about', :as => :about
  match "info/helfen" => 'info#help', :as => :help
  match "info/chat", :as => :chat
  match "info/downloads" => 'info#downloads', :as => :downloads
  match "info/faq" => 'info#faq', :as => :faq

  match "stream/technik" => 'stream#technique', :as => :technique_stream
  match "stream/kultur" => 'stream#culture', :as => :culture_stream
  match "stream/mix" => 'stream#mix', :as => :mix_stream
  match "stream/technique" => 'stream#technique'
  match "stream/culture" => 'stream#culture'

  get "stream/listeners_technique"
  get "stream/listeners_culture"
  get "stream/listeners_mix"
  get "stream/hoersuppe"

  resources :index_info, :only => [:update]
  match '/index_info/edit' => 'index_info#edit', :as => :index_info_edit

  # enable podcasts csv import
  resources :podcasts do
    collection {post :import}
  end
  
  match '/verzeichnis' => 'podcasts#overview', :as => :overview

  # This route can be invoked with info_url(:id => podcast.id)
  match '/:slugintern' => 'podcasts#info', :as => :info

  get "home/index", :as => :index
  root :to => "home#index"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
