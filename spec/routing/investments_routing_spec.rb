require "spec_helper"

describe InvestmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/investments").should route_to("investments#index")
    end

    it "routes to #new" do
      get("/investments/new").should route_to("investments#new")
    end

    it "routes to #show" do
      get("/investments/1").should route_to("investments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/investments/1/edit").should route_to("investments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/investments").should route_to("investments#create")
    end

    it "routes to #update" do
      put("/investments/1").should route_to("investments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/investments/1").should route_to("investments#destroy", :id => "1")
    end

  end
end
