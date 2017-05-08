require 'rails_helper'

RSpec.describe "exercise_types/show", type: :view do
  before(:each) do
    @exercise_type = assign(:exercise_type, ExerciseType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
