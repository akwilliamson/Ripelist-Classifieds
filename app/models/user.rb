class User < ActiveRecord::Base
  has_secure_password

  after_create :send_welcome_email

  def send_welcome_email
  	UserMailer.welcome_email(self).deliver
  end

  has_many :listings

  validates_presence_of :email
  validates_presence_of :username
  validates_confirmation_of :email
  validates_uniqueness_of :email
end
