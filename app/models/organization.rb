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

class Organization < ActiveRecord::Base
  has_and_belongs_to_many :users
  acts_as_votable 
end
