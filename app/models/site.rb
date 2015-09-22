# == Schema Information
#
# Table name: sites
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  site_name              :string
#  facebook               :string
#  twitter                :string
#  created_at             :datetime
#  updated_at             :datetime
#

class Site < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  extend FriendlyId
  friendly_id :site_name
  
  #validation
  validates :site_name, presence: true, length: { maximum: 16 },  format: { with: /\A[\w@-]*[A-Za-z][\w-]*\z/ }
  validates_uniqueness_of :site_name
  
  #association
  has_one :service
  has_many :members
end
