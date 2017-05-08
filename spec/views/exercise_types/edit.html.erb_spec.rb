require 'rails_helper'

RSpec.describe "exercise_types/edit", type: :view do
  before(:each) do
    @exercise_type = assign(:exercise_type, ExerciseType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit exercise_type form" do
    render

    assert_select "form[action=?][method=?]", exercise_type_path(@exercise_type), "post" do

      assert_select "input#exercise_type_name[name=?]", "exercise_type[name]"
    end
  end
end
