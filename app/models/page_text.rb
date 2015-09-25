# == Schema Information
#
# Table name: page_texts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PageText < ActiveRecord::Base
  belongs_to :page
  validates :title, presence: true
  validates :body, presence: true
end
