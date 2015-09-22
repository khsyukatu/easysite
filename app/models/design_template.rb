# == Schema Information
#
# Table name: design_templates
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DesignTemplate < ActiveRecord::Base
    has_many :site_templates
    has_many :sites, :through => :site_templates
end
