# == Schema Information
#
# Table name: maps
#
#  id         :integer          not null, primary key
#  body       :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Map < ActiveRecord::Base
  #validation
  validates :body, presence: true
  
  #association
  belongs_to :site
end
