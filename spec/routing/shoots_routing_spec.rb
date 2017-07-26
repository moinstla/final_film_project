require "rails_helper"

RSpec.describe ShootsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shoots").to route_to("shoots#index")
    end

    it "routes to #new" do
      expect(:get => "/shoots/new").to route_to("shoots#new")
    end

    it "routes to #show" do
      expect(:get => "/shoots/1").to route_to("shoots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shoots/1/edit").to route_to("shoots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shoots").to route_to("shoots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shoots/1").to route_to("shoots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shoots/1").to route_to("shoots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shoots/1").to route_to("shoots#destroy", :id => "1")
    end

  end
end
