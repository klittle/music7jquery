ActionController::Routing::Routes.draw do |map|
  map.resources :recipes


  map.root :controller => :albums
  map.resources :albums 
  map.resources :tracks
  map.resources :artists, :has_many =>  :albums
  map.sort_albums 'sort', :controller => 'artists', :action => 'sort_albums'
end
