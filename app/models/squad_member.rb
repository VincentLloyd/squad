class SquadMember < ApplicationRecord
  belongs_to :SquadGroup
  belongs_to :user
end
