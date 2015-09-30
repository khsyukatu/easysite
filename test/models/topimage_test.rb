# == Schema Information
#
# Table name: topimages
#
#  id         :integer          not null, primary key
#  image      :string
#  title      :string
#  head_text  :string
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TopimageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
