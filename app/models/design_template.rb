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
  #validation
  validates :name, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  
  #association
  has_many :site_templates
  has_many :sites, :through => :site_templates
end
