# == Schema Information
#
# Table name: site_templates
#
#  id                 :integer          not null, primary key
#  site_id            :integer
#  design_template_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SiteTemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
