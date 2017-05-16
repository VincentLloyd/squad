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

require 'rails_helper'

RSpec.describe SquadGroupType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
