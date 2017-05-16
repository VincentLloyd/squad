# == Schema Information
#
# Table name: squad_groups
#
#  id                :integer          not null, primary key
#  captain_id        :integer
#  name              :string
#  location          :string
#  max_members       :integer
#  price             :integer
#  exercise_types_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :squad_group do
    user nil
    name "MyString"
    location "MyString"
    max_members 1
    price 1
  end
end
