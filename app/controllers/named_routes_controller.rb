class NamedRoutesController < ActionController::Base
  self.view_paths = File.join(File.dirname(__FILE__), '../views/named_routes')
  layout nil

  def generate
    # Cache the output for 1 year. The cache gets flushed when Heroku redeploys,
    # so new versions will still get displayed on deployment.
    response.headers['Cache-Control'] = 'public, max-age=1314000' if Rails.env.production?
    respond_to do |format|
      format.js { render :template => 'generate' }
    end
  end
end
