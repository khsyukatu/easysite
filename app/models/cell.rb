# == Schema Information
#
# Table name: cells
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :string
#  block_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cell < ActiveRecord::Base
  belongs_to :block
  validates :title, presence: true
  validates :body, presence: true
end
