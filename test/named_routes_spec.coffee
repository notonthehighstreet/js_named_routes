assert = require("assert")
fs     = require("fs")
chai   = require("chai")

chai.should()

describe "named_routes.js", ->

  Routing = eval(fs.readFileSync("spec/dummy/public/javascripts/named_routes.js") + "; Routing")

  describe "NamedRoutesController routes", ->
    it "has a path to NamedRoutesController#show", ->
      Routing.javascripts_named_routes_path().should.equal("/javascripts/named_routes.js")

    it "has a URL to NamedRoutesController#show", ->
      Routing.javascripts_named_routes_url().should.equal("http://www.example.com/javascripts/named_routes.js")

  describe ".change_subdomain_of_host", ->
    it "changes the subdomain of a host with protocol", ->
      Routing.change_subdomain_of_host("test", "http://www.example.com").should.equal("http://test.example.com")

    it "changes the subdomain of a host without protocol", ->
      Routing.change_subdomain_of_host("test", "www.example.com").should.equal("test.example.com")

    it "changes the subdomain of a domain without subdomain", ->
      Routing.change_subdomain_of_host("test", "example.com").should.equal("test.example.com")

    it "changes the subdomain of a domain without subdomain and with protocol", ->
      Routing.change_subdomain_of_host("test", "https://example.com").should.equal("https://test.example.com")

    it "changes the first subdomain of a domain with multiple subdomains", ->
      Routing.change_subdomain_of_host("test", "http://first.second.third.example.com").should.equal("http://test.second.third.example.com")

  context "overriding the host", ->
    it "uses the new the host in the URL", ->
      Routing.products_url(host: "http://new.example.com").should.equal("http://new.example.com/products")

  context "overriding the format", ->
    it "uses the new the format in the path", ->
      Routing.products_path(format: "html").should.equal("/products.html")

    it "uses the new the format in the URL", ->
      Routing.products_url(
        host: "http://new.example.com"
        format: "html"
      ).should.equal("http://new.example.com/products.html")

  context "given the routes to ProductsController", ->
    it "has products_path", ->
      Routing.products_path().should.equal("/products")

    it "has products_url", ->
      Routing.products_url().should.equal("http://www.example.com/products")

    it "has new_product_path", ->
      Routing.new_product_path().should.equal("/products/new")

    it "has new_product_url", ->
      Routing.new_product_url().should.equal("http://www.example.com/products/new")

    it "has edit_product_path", ->
      Routing.edit_product_path(id: 1234).should.equal("/products/1234/edit")

    it "has edit_product_url", ->
      Routing.edit_product_url(id: 1234).should.equal("http://www.example.com/products/1234/edit")

    it "has product_path", ->
      Routing.product_path(id: 1234).should.equal("/products/1234")

    it "has product_url", ->
      Routing.product_url(id: 1234).should.equal("http://www.example.com/products/1234")
