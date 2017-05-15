require 'rails_helper'

RSpec.describe "squad_members/edit", type: :view do
  before(:each) do
    @squad_member = assign(:squad_member, SquadMember.create!(
      :SquadGroup => nil,
      :user => nil
    ))
  end

  it "renders the edit squad_member form" do
    render

    assert_select "form[action=?][method=?]", squad_member_path(@squad_member), "post" do

      assert_select "input#squad_member_SquadGroup_id[name=?]", "squad_member[SquadGroup_id]"

      assert_select "input#squad_member_user_id[name=?]", "squad_member[user_id]"
    end
  end
end
