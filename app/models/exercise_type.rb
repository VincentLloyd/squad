# == Schema Information
#
# Table name: exercise_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ExerciseType < ApplicationRecord
  has_many :exercise_types_in_user
  has_many :user, through: :exercise_types_in_user
end
