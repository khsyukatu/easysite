class Block < ActiveRecord::Base
  belongs_to :site
  has_many :cells
end
