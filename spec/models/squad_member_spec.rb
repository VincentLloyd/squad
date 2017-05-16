# == Schema Information
#
# Table name: squad_members
#
#  id            :integer          not null, primary key
#  squadgroup_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe SquadMember, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
