require 'rails_helper'

RSpec.describe "exercise_types_in_users/show", type: :view do
  before(:each) do
    @exercise_types_in_user = assign(:exercise_types_in_user, ExerciseTypesInUser.create!(
      :user => nil,
      :exercise_type => nil,
      :offered => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
