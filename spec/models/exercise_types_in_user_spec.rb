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

require 'rails_helper'

RSpec.describe ExerciseTypesInUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
