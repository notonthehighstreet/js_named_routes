require 'named_routes'

ActionController::Routing::Routes.add_configuration_file File.join(File.dirname(__FILE__), "config", "routes.rb")