require 'rails_helper'

RSpec.describe "SquadGroupTypes", type: :request do
  describe "GET /squad_group_types" do
    it "works! (now write some real specs)" do
      get squad_group_types_path
      expect(response).to have_http_status(200)
    end
  end
end
