require 'rails_helper'

RSpec.describe "exercise_types_in_users/index", type: :view do
  before(:each) do
    assign(:exercise_types_in_users, [
      ExerciseTypesInUser.create!(
        :user => nil,
        :exercise_type => nil,
        :offered => false
      ),
      ExerciseTypesInUser.create!(
        :user => nil,
        :exercise_type => nil,
        :offered => false
      )
    ])
  end

  it "renders a list of exercise_types_in_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
