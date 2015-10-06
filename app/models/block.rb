# == Schema Information
#
# Table name: blocks
#
#  id         :integer          not null, primary key
#  title      :string
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Block < ActiveRecord::Base
  belongs_to :site
  has_many :cells
  accepts_nested_attributes_for :cells, :allow_destroy => true
  
  validates :title, presence: true
end
