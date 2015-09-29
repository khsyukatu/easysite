# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  page_id        :integer
#  type           :string
#  title          :string
#  body           :text
#  movie          :text
#  image          :string
#  image_location :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  row_order      :integer
#

class Itemimage < Item
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true
  validates :image_location, presence: true
  validates :image, presence: true
end
