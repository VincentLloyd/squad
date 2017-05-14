require 'rails_helper'

RSpec.describe "squad_group_types/new", type: :view do
  before(:each) do
    assign(:squad_group_type, SquadGroupType.new(
      :squadgroup => nil,
      :exercise_type => nil
    ))
  end

  it "renders new squad_group_type form" do
    render

    assert_select "form[action=?][method=?]", squad_group_types_path, "post" do

      assert_select "input#squad_group_type_squadgroup_id[name=?]", "squad_group_type[squadgroup_id]"

      assert_select "input#squad_group_type_exercise_type_id[name=?]", "squad_group_type[exercise_type_id]"
    end
  end
end
