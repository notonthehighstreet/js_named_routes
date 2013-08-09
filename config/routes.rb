Rails.application.routes.draw do
  get '/javascripts/named_routes' => 'named_routes#show', :format => :js
end
