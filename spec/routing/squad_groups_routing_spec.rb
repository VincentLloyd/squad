require "rails_helper"

RSpec.describe SquadGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/squad_groups").to route_to("squad_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/squad_groups/new").to route_to("squad_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/squad_groups/1").to route_to("squad_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/squad_groups/1/edit").to route_to("squad_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/squad_groups").to route_to("squad_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/squad_groups/1").to route_to("squad_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/squad_groups/1").to route_to("squad_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/squad_groups/1").to route_to("squad_groups#destroy", :id => "1")
    end

  end
end
