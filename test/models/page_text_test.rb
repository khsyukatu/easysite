# == Schema Information
#
# Table name: page_texts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PageTextTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
