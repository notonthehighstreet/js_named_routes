module JsNamedRoutes
  class Engine < Rails::Engine
  end

  class Config
    def self.scope
      @@scope ||= nil
    end
  
    def self.scope=(scope)
      @@scope = scope
    end
  end
end
