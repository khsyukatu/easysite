# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  image       :string
#  name        :string
#  description :text
#  site_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Member < ActiveRecord::Base
  #association
  belongs_to :site
  mount_uploader :image, ImageUploader
  
  #validataiotn
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true
  validates :image, presence: true
end
