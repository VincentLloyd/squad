require 'rails_helper'

RSpec.describe "squad_groups/show", type: :view do
  before(:each) do
    @squad_group = assign(:squad_group, SquadGroup.create!(
      :user => nil,
      :name => "Name",
      :location => "Location",
      :max_members => 2,
      :price => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
