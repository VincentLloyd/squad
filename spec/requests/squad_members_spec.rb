require 'rails_helper'

RSpec.describe "SquadMembers", type: :request do
  describe "GET /squad_members" do
    it "works! (now write some real specs)" do
      get squad_members_path
      expect(response).to have_http_status(200)
    end
  end
end
