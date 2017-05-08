require 'rails_helper'

RSpec.describe "captain_profiles/index", type: :view do
  before(:each) do
    assign(:captain_profiles, [
      CaptainProfile.create!(
        :user_id => nil,
        :bio => "MyText",
        :contact_phone => "Contact Phone",
        :contact_email => "Contact Email"
      ),
      CaptainProfile.create!(
        :user_id => nil,
        :bio => "MyText",
        :contact_phone => "Contact Phone",
        :contact_email => "Contact Email"
      )
    ])
  end

  it "renders a list of captain_profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
  end
end
