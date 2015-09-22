# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  image       :string
#  name        :string
#  description :text
#  site_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
