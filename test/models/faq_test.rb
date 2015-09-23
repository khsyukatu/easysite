# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
