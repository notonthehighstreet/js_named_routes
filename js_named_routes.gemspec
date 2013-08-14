# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "js_named_routes"
  s.version     = "1.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Galen O'Hanlon", "Matt Ittigson"]
  s.email       = ["galen.ohanlon@plastictrophy.com", "matt@futureadapter.com"]
  s.homepage    = "http://github.com/jellybob/js_named_routes"
  s.summary     = %q{Rails named routes in javascript}
  s.description = File.read("README.markdown")

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile"]
  # s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "ci_reporter"
end
