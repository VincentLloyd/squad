# == Schema Information
#
# Table name: squad_group_types
#
#  id               :integer          not null, primary key
#  squadgroup_id    :integer
#  exercise_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :squad_group_type do
    squadgroup nil
    exercise_type nil
  end
end
