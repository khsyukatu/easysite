# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Faq < ActiveRecord::Base
  #validation
  validates :title, presence: true
  validates :body, presence: true
    
  belongs_to :site
end
