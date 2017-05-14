require 'rails_helper'

RSpec.describe "squad_members/show", type: :view do
  before(:each) do
    @squad_member = assign(:squad_member, SquadMember.create!(
      :SquadGroup => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
