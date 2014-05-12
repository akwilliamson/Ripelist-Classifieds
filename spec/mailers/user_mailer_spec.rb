require "spec_helper"

describe UserMailer do
  describe "signup_confirmation" do
    user = FactoryGirl.build(:user)
    let(:mail) { UserMailer.signup_confirmation(user) }

    it "renders the headers" do
      mail.subject.should eq("Sign Up Confirmation")
      mail.to.should eq([user.email])
      mail.from.should eq(["aaron@ripelist.com"])
    end

    it "renders the body" do
      mail.body.encoded.should have_content("The Ripelist team")
    end
  end

end
