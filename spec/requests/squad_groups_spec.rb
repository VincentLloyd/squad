require 'rails_helper'

RSpec.describe "SquadGroups", type: :request do
  describe "GET /squad_groups" do
    it "works! (now write some real specs)" do
      get squad_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
