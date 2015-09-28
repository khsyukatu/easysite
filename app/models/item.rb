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

class Item < ActiveRecord::Base
  include RankedModel
  ranks :row_order, class_name: 'Item', :with_same => :page_id
  
  belongs_to :page
end
