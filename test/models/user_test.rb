# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string
#  first_name         :string
#  last_initial       :string
#  password           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string(128)
#  confirmation_token :string(128)
#  remember_token     :string(128)
#  admin              :boolean          default(FALSE), not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
