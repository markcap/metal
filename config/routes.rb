ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.resource :session

  map.resources :concerts

  map.resources :articles

  map.error '/error', :controller => 'articles', :action => 'error'
  map.denied '/denied', :controller => 'articles', :action => 'denied'
  map.login  '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.signup '/signup', :controller => 'users', :action => 'new'
  
  map.root :controller => 'concerts', :action => 'index'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
