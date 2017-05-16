# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  username      :string           not null
#  first_name    :string           not null
#  last_name     :string           not null
#  date_of_birth :date             not null
#  gender        :string
#  avatar_src    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
