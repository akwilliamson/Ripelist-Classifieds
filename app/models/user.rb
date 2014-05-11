class User < ActiveRecord::Base
	after_create :send_signup_confirmation 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :listings

  def send_signup_confirmation
  	UserMailer.signup_confirmation(self).deliver
  end
end
