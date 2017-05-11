require 'rails_helper'

RSpec.describe "ExerciseTypesInUsers", type: :request do
  describe "GET /exercise_types_in_users" do
    it "works! (now write some real specs)" do
      get exercise_types_in_users_path
      expect(response).to have_http_status(200)
    end
  end
end
