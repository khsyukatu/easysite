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

class PageImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  #validation
  validates :title, presence: true
  validates :head_text, presence: true
  validates :image, presence: true
  
  #association
  belongs_to :site
end
