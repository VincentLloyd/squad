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

FactoryGirl.define do
  factory :profile do
    username      { Faker::Internet.email }
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.first_name }
    date_of_birth { Faker::Date.between(70.years.ago, 15.years.ago) }
  end
end
