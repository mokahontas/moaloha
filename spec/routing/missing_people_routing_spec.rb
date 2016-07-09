require "rails_helper"

RSpec.describe MissingPeopleController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/missing_people").to route_to("missing_people#index")
    end

    it "routes to #new" do
      expect(:get => "/missing_people/new").to route_to("missing_people#new")
    end

    it "routes to #show" do
      expect(:get => "/missing_people/1").to route_to("missing_people#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/missing_people/1/edit").to route_to("missing_people#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/missing_people").to route_to("missing_people#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/missing_people/1").to route_to("missing_people#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/missing_people/1").to route_to("missing_people#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/missing_people/1").to route_to("missing_people#destroy", :id => "1")
    end

  end
end
