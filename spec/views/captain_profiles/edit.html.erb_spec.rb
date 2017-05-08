require 'rails_helper'

RSpec.describe "captain_profiles/edit", type: :view do
  before(:each) do
    @captain_profile = assign(:captain_profile, CaptainProfile.create!(
      :user_id => nil,
      :bio => "MyText",
      :contact_phone => "MyString",
      :contact_email => "MyString"
    ))
  end

  it "renders the edit captain_profile form" do
    render

    assert_select "form[action=?][method=?]", captain_profile_path(@captain_profile), "post" do

      assert_select "input#captain_profile_user_id_id[name=?]", "captain_profile[user_id_id]"

      assert_select "textarea#captain_profile_bio[name=?]", "captain_profile[bio]"

      assert_select "input#captain_profile_contact_phone[name=?]", "captain_profile[contact_phone]"

      assert_select "input#captain_profile_contact_email[name=?]", "captain_profile[contact_email]"
    end
  end
end
