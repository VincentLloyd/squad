require "rails_helper"

RSpec.describe CaptainProfilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/captain_profiles").to route_to("captain_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/captain_profiles/new").to route_to("captain_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/captain_profiles/1").to route_to("captain_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/captain_profiles/1/edit").to route_to("captain_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/captain_profiles").to route_to("captain_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/captain_profiles/1").to route_to("captain_profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/captain_profiles/1").to route_to("captain_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/captain_profiles/1").to route_to("captain_profiles#destroy", :id => "1")
    end

  end
end
