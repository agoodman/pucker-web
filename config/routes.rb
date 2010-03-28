ActionController::Routing::Routes.draw do |map|
  map.resources :games


  map.resources :pieces
  map.resources :moves
  map.resources :games

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
