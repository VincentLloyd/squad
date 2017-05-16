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

class SquadGroupType < ApplicationRecord
  belongs_to :squadgroup
  belongs_to :exercise_type
end
