# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  username      :string           not null
#  first_name    :string           not null
#  last_name     :string           not null
#  date_of_birth :date             not null
#  gender        :string
#  avatar_src    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Profile, type: :model do
  # Create Users
  before :each do
    @user = FactoryGirl.create(:user)
  end
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a username, first_name, last_name, date_of_birth" do
    profile = Profile.new(
      user_id: @user.id,
      username: "benno",
      first_name: "Ben",
      last_name: "Elphinstone",
      date_of_birth: "01-01-2010")
    expect(profile).to be_valid
  end

  it "is invalid without a first_name" do
    profile = Profile.new(
    user_id: @user.id,
    first_name: nil)
    profile.valid?
    byebug
    expect(profile.errors[:first_name]).to include("can't be blank")
  end
  it "is invalid with"
  it "is invalid without a lastname"
  it "is invalid without an email address"
  it "is invalid with a duplicate email address"
  it "returns a contact's full name as a string"
end
