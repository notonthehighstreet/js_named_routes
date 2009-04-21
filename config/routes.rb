ActionController::Routing::Routes.draw do |map|
  map.named_routes '/javascripts/named_routes.:format', :controller => 'named_routes', :action => 'generate'
end
