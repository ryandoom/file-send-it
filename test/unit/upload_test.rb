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

require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
