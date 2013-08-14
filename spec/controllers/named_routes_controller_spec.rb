require 'spec_helper'

describe NamedRoutesController do
  describe "#show" do
    it "responds" do
      get :show, { :format => "js", :use_route => :js_named_routes_engine }
      response.should render_template "show"
    end
  end
end
