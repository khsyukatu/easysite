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

class Page < ActiveRecord::Base
  #validation
  validates :name, presence: true, on: :update
  
  #association
  belongs_to :site
  has_many :page_images
  has_many :page_texts
end
