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

class SquadGroup < ApplicationRecord
  belongs_to :user
  has_many :member, class_name: "SquadMember", foreign_key: 'id'
end
