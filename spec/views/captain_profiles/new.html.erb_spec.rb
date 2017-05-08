require 'rails_helper'

RSpec.describe "captain_profiles/new", type: :view do
  before(:each) do
    assign(:captain_profile, CaptainProfile.new(
      :user_id => nil,
      :bio => "MyText",
      :contact_phone => "MyString",
      :contact_email => "MyString"
    ))
  end

  it "renders new captain_profile form" do
    render

    assert_select "form[action=?][method=?]", captain_profiles_path, "post" do

      assert_select "input#captain_profile_user_id_id[name=?]", "captain_profile[user_id_id]"

      assert_select "textarea#captain_profile_bio[name=?]", "captain_profile[bio]"

      assert_select "input#captain_profile_contact_phone[name=?]", "captain_profile[contact_phone]"

      assert_select "input#captain_profile_contact_email[name=?]", "captain_profile[contact_email]"
    end
  end
end
