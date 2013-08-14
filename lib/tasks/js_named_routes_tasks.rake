namespace :js_named_routes do
  desc "Create public/javascripts/named_routes.js"
  task :cache => :environment do
    require 'action_dispatch/testing/integration'

    session = ActionDispatch::Integration::Session.new(Rails.application)
    session.host = HOST unless Rails.env.test?
    session.get_via_redirect "/javascripts/named_routes.js?#{Time.current.to_i}"

    if session.status == 200
      path = Rails.root.join("public/javascripts/named_routes.js")
      File.open(path, "w") do |f|
        f.puts(session.body)
      end
    end
  end
end

# Support legacy namespace
namespace :named_routes do
  task :cache => "js_named_routes:cache"
end
