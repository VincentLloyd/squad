require "rails_helper"

RSpec.describe ExerciseTypesInUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exercise_types_in_users").to route_to("exercise_types_in_users#index")
    end

    it "routes to #new" do
      expect(:get => "/exercise_types_in_users/new").to route_to("exercise_types_in_users#new")
    end

    it "routes to #show" do
      expect(:get => "/exercise_types_in_users/1").to route_to("exercise_types_in_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exercise_types_in_users/1/edit").to route_to("exercise_types_in_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exercise_types_in_users").to route_to("exercise_types_in_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercise_types_in_users/1").to route_to("exercise_types_in_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercise_types_in_users/1").to route_to("exercise_types_in_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercise_types_in_users/1").to route_to("exercise_types_in_users#destroy", :id => "1")
    end

  end
end
