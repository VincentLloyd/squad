require 'rails_helper'

RSpec.describe "exercise_types/index", type: :view do
  before(:each) do
    assign(:exercise_types, [
      ExerciseType.create!(
        :name => "Name"
      ),
      ExerciseType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of exercise_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
