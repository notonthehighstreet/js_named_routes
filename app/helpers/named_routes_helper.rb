module NamedRoutesHelper
  def scope
    JsNamedRoutes::Config::scope || "Routing"
  end
end
