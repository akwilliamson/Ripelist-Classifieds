require 'spec_helper'

describe User do
	# relations specs
  it { should have_many :listings }
  # validation of certain attributes
  it { should validate_presence_of :email }
  # account related emails
  describe "user emails" do
  	it "sends a confirmation email upon sign up" do
  		user = FactoryGirl.create(:user)
  		ActionMailer::Base.deliveries.last.to.should eq [user.email]
  	end
  end
end
