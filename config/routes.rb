Rails.application.routes.draw do
  get '/js_named_routes' => 'named_routes#generate'
end
