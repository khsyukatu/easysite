# == Schema Information
#
# Table name: services
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

class Service < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :site
end
