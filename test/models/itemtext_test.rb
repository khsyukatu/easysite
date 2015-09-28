# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  page_id        :integer
#  type           :string
#  title          :string
#  body           :text
#  movie          :text
#  image          :string
#  image_location :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  row_order      :integer
#

require 'test_helper'

class ItemtextTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
