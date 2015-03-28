# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string(255)
#  uid                    :string(255)
#  name                   :string(255)
#  user_name              :string(255)
#  street                 :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  country                :string(255)
#  age                    :integer
#  monthly_donation       :float
#  issue_one              :string(255)
#  issue_two              :string(255)
#  issue_three            :string(255)
#  issue_four             :string(255)
#  issue_five             :string(255)
#  gender                 :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
