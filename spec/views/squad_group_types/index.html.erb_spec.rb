require 'rails_helper'

RSpec.describe "squad_group_types/index", type: :view do
  before(:each) do
    assign(:squad_group_types, [
      SquadGroupType.create!(
        :squadgroup => nil,
        :exercise_type => nil
      ),
      SquadGroupType.create!(
        :squadgroup => nil,
        :exercise_type => nil
      )
    ])
  end

  it "renders a list of squad_group_types" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
