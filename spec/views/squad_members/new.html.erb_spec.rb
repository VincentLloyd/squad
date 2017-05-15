require 'rails_helper'

RSpec.describe "squad_members/new", type: :view do
  before(:each) do
    assign(:squad_member, SquadMember.new(
      :SquadGroup => nil,
      :user => nil
    ))
  end

  it "renders new squad_member form" do
    render

    assert_select "form[action=?][method=?]", squad_members_path, "post" do

      assert_select "input#squad_member_SquadGroup_id[name=?]", "squad_member[SquadGroup_id]"

      assert_select "input#squad_member_user_id[name=?]", "squad_member[user_id]"
    end
  end
end
