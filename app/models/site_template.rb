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

class SiteTemplate < ActiveRecord::Base
  belongs_to :site
  belongs_to :design_template
end
