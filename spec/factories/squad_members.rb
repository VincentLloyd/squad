# == Schema Information
#
# Table name: squad_members
#
#  id            :integer          not null, primary key
#  squadgroup_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :squad_member do
    SquadGroup nil
    user nil
  end
end
