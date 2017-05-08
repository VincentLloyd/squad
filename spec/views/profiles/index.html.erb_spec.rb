require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :username => "Username",
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :avatar_src => "Avatar Src"
      ),
      Profile.create!(
        :user => nil,
        :username => "Username",
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "Gender",
        :avatar_src => "Avatar Src"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar Src".to_s, :count => 2
  end
end
