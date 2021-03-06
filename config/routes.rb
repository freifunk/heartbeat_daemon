ActionController::Routing::Routes.draw do |map|
  map.resources :hardwares, :as => 'hardware'
map.connect 'fehlerberichte/new', :controller => 'bugreports', :action => 'new',
                :conditions => { :method => :post }

  map.resources :bugreports, :as => 'fehlerberichte'

  map.resources :lands, :as => 'laender' 

  map.resources :landesverbands, :as => 'bundeslaender' 
	#map.parteien 'parteien/:id', :controller => 'parteis'
	#map.parteien 'parteien/:action/:id', :controller => 'parteis'
	map.highscores 'highscores/:action', :controller => 'highscores'
  map.resources :parteis, :as => 'parteien'
    #map.maps 'maps', :controller => 'maps', :action => 'index' 
    
  #map.maps 'maps/:action', :controller => 'maps' 

    map.resources :highscores

  map.resources :crews
 map.nodes_georss 'nodes/georss', :controller => 'nodes', :action => 'georss'
  map.resources :nodes

    map.resources :maps, :as => 'karte'

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"
	map.root :controller => "nodes"
	
  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
