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

class Topimage < ActiveRecord::Base
  belongs_to :site
  mount_uploader :image, ImageUploader
  
  validates :image, presence: true
end
