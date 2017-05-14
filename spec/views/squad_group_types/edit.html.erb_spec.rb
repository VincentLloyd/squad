require 'rails_helper'

RSpec.describe "squad_group_types/edit", type: :view do
  before(:each) do
    @squad_group_type = assign(:squad_group_type, SquadGroupType.create!(
      :squadgroup => nil,
      :exercise_type => nil
    ))
  end

  it "renders the edit squad_group_type form" do
    render

    assert_select "form[action=?][method=?]", squad_group_type_path(@squad_group_type), "post" do

      assert_select "input#squad_group_type_squadgroup_id[name=?]", "squad_group_type[squadgroup_id]"

      assert_select "input#squad_group_type_exercise_type_id[name=?]", "squad_group_type[exercise_type_id]"
    end
  end
end
