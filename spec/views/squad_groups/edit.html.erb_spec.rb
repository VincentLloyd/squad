require 'rails_helper'

RSpec.describe "squad_groups/edit", type: :view do
  before(:each) do
    @squad_group = assign(:squad_group, SquadGroup.create!(
      :user => nil,
      :name => "MyString",
      :location => "MyString",
      :max_members => 1,
      :price => 1
    ))
  end

  it "renders the edit squad_group form" do
    render

    assert_select "form[action=?][method=?]", squad_group_path(@squad_group), "post" do

      assert_select "input#squad_group_user_id[name=?]", "squad_group[user_id]"

      assert_select "input#squad_group_name[name=?]", "squad_group[name]"

      assert_select "input#squad_group_location[name=?]", "squad_group[location]"

      assert_select "input#squad_group_max_members[name=?]", "squad_group[max_members]"

      assert_select "input#squad_group_price[name=?]", "squad_group[price]"
    end
  end
end
