describe "named_routes/show.js" do
  context "With default scope" do
    before(:each) do
      JsNamedRoutes::Config::scope = nil
      render :template => "named_routes/show"
    end

    it "scopes Javascript function in Routing scope" do
      rendered.should start_with "var Routing = {"
    end
  end

  context "with a custom scope" do
    before(:each) do
      JsNamedRoutes::Config::scope = "MyScope"
      render :template => "named_routes/show"
    end

    it "scopes Javascript function in custom scope" do
      rendered.should start_with "var MyScope = {"
    end
  end
end

