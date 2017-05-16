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

require 'rails_helper'

RSpec.describe SquadGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
