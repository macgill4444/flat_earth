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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  #->Prelang (user_login/devise)
  has_and_belongs_to_many :organizations
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first

    # The User was found in our database
    return user if user

    # Check if the User is already registered without Facebook
    user = User.where(email: auth.info.email).first

    return user if user

    # The User was not found and we need to create them
    User.create(name:     auth.extra.raw_info.name,
                provider: auth.provider,
                uid:      auth.uid,
                email:    auth.info.email,
                password: Devise.friendly_token[0,20])
  end


  acts_as_votable 
end
