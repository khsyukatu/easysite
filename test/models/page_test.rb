# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  name       :string
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :boolean          default(FALSE)
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
