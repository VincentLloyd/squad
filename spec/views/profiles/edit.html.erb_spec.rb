require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :username => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "MyString",
      :avatar_src => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_username[name=?]", "profile[username]"

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_gender[name=?]", "profile[gender]"

      assert_select "input#profile_avatar_src[name=?]", "profile[avatar_src]"
    end
  end
end
