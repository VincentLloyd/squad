# == Schema Information
#
# Table name: exercise_types_in_users
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  exercise_type_id :integer
#  offered          :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :exercise_types_in_user do
    user nil
    exercise_type nil
    offered false
  end
end
