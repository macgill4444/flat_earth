# == Schema Information
#
# Table name: organizations
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  city            :string(255)
#  state           :string(255)
#  country         :string(255)
#  bio             :string(255)
#  addressed_issue :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
