require 'rails_helper'

RSpec.describe "squad_groups/index", type: :view do
  before(:each) do
    assign(:squad_groups, [
      SquadGroup.create!(
        :user => nil,
        :name => "Name",
        :location => "Location",
        :max_members => 2,
        :price => 3
      ),
      SquadGroup.create!(
        :user => nil,
        :name => "Name",
        :location => "Location",
        :max_members => 2,
        :price => 3
      )
    ])
  end

  it "renders a list of squad_groups" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
