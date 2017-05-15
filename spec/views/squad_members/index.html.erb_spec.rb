require 'rails_helper'

RSpec.describe "squad_members/index", type: :view do
  before(:each) do
    assign(:squad_members, [
      SquadMember.create!(
        :SquadGroup => nil,
        :user => nil
      ),
      SquadMember.create!(
        :SquadGroup => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of squad_members" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
