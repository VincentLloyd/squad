require 'rails_helper'

RSpec.describe "squad_group_types/show", type: :view do
  before(:each) do
    @squad_group_type = assign(:squad_group_type, SquadGroupType.create!(
      :squadgroup => nil,
      :exercise_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
