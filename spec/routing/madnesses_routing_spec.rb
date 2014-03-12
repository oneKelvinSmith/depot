require "spec_helper"

describe MadnessesController do
  describe "routing" do

    it "routes to #index" do
      get("/madnesses").should route_to("madnesses#index")
    end

    it "routes to #new" do
      get("/madnesses/new").should route_to("madnesses#new")
    end

    it "routes to #show" do
      get("/madnesses/1").should route_to("madnesses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/madnesses/1/edit").should route_to("madnesses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/madnesses").should route_to("madnesses#create")
    end

    it "routes to #update" do
      put("/madnesses/1").should route_to("madnesses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/madnesses/1").should route_to("madnesses#destroy", :id => "1")
    end

  end
end
