require 'rails_helper'

RSpec.describe "exercise_types/new", type: :view do
  before(:each) do
    assign(:exercise_type, ExerciseType.new(
      :name => "MyString"
    ))
  end

  it "renders new exercise_type form" do
    render

    assert_select "form[action=?][method=?]", exercise_types_path, "post" do

      assert_select "input#exercise_type_name[name=?]", "exercise_type[name]"
    end
  end
end
