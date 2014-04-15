class User < ActiveRecord::Base
  has_secure_password

  has_many :listings

  validates_presence_of :email
  validates_presence_of :username
  validates_confirmation_of :email
  validates_uniqueness_of :email
end
