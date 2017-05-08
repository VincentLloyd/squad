require 'rails_helper'

RSpec.describe "captain_profiles/show", type: :view do
  before(:each) do
    @captain_profile = assign(:captain_profile, CaptainProfile.create!(
      :user_id => nil,
      :bio => "MyText",
      :contact_phone => "Contact Phone",
      :contact_email => "Contact Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Contact Phone/)
    expect(rendered).to match(/Contact Email/)
  end
end
