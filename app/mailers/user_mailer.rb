class UserMailer < ActionMailer::Base
  default from: "aaron@ripelist.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def welcome_email(user)
    @user = user
    @url = 'localhost:3000/login'
    mail to: @user.email, subject: 'Welcome to Ripelist!'
  end
end
