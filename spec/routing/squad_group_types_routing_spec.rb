require "rails_helper"

RSpec.describe SquadGroupTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/squad_group_types").to route_to("squad_group_types#index")
    end

    it "routes to #new" do
      expect(:get => "/squad_group_types/new").to route_to("squad_group_types#new")
    end

    it "routes to #show" do
      expect(:get => "/squad_group_types/1").to route_to("squad_group_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/squad_group_types/1/edit").to route_to("squad_group_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/squad_group_types").to route_to("squad_group_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/squad_group_types/1").to route_to("squad_group_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/squad_group_types/1").to route_to("squad_group_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/squad_group_types/1").to route_to("squad_group_types#destroy", :id => "1")
    end

  end
end
