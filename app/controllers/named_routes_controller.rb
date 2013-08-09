class NamedRoutesController < ActionController::Base
  self.view_paths = File.join(File.dirname(__FILE__), '../views/named_routes')
  layout nil

  def show
    respond_to do |format|
      format.js { render :template => 'show' }
    end
  end
end
