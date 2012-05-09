# == Schema Information
#
# Table name: uploads
#
#  id         :integer         not null, primary key
#  to_email   :string(255)
#  comment    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Upload < ActiveRecord::Base
  belongs_to :user
  attr_accessible :to_email, :comment, :document
  validates_presence_of :to_email
  has_attached_file :document, :storage => :s3, :s3_credentials => "#{::Rails.root.to_s}/config/s3.yml", :path => "/:id/:filename"
end
