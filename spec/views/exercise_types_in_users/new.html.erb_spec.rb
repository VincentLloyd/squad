require 'rails_helper'

RSpec.describe "exercise_types_in_users/new", type: :view do
  before(:each) do
    assign(:exercise_types_in_user, ExerciseTypesInUser.new(
      :user => nil,
      :exercise_type => nil,
      :offered => false
    ))
  end

  it "renders new exercise_types_in_user form" do
    render

    assert_select "form[action=?][method=?]", exercise_types_in_users_path, "post" do

      assert_select "input#exercise_types_in_user_user_id[name=?]", "exercise_types_in_user[user_id]"

      assert_select "input#exercise_types_in_user_exercise_type_id[name=?]", "exercise_types_in_user[exercise_type_id]"

      assert_select "input#exercise_types_in_user_offered[name=?]", "exercise_types_in_user[offered]"
    end
  end
end
