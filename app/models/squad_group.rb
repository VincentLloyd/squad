class SquadGroup < ApplicationRecord
  belongs_to :user
  has_many :member, class_name: "SquadMember", foreign_key: 'id'
end
