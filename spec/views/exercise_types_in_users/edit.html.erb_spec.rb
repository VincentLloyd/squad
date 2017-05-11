require 'rails_helper'

RSpec.describe "exercise_types_in_users/edit", type: :view do
  before(:each) do
    @exercise_types_in_user = assign(:exercise_types_in_user, ExerciseTypesInUser.create!(
      :user => nil,
      :exercise_type => nil,
      :offered => false
    ))
  end

  it "renders the edit exercise_types_in_user form" do
    render

    assert_select "form[action=?][method=?]", exercise_types_in_user_path(@exercise_types_in_user), "post" do

      assert_select "input#exercise_types_in_user_user_id[name=?]", "exercise_types_in_user[user_id]"

      assert_select "input#exercise_types_in_user_exercise_type_id[name=?]", "exercise_types_in_user[exercise_type_id]"

      assert_select "input#exercise_types_in_user_offered[name=?]", "exercise_types_in_user[offered]"
    end
  end
end
