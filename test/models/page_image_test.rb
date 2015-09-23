# == Schema Information
#
# Table name: page_images
#
#  id         :integer          not null, primary key
#  title      :string
#  head_text  :string
#  image      :string
#  image_type :string
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PageImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
