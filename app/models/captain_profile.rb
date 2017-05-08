# == Schema Information
#
# Table name: captain_profiles
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  bio           :text             not null
#  contact_phone :string           not null
#  contact_email :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CaptainProfile < ApplicationRecord
  belongs_to :user
end
