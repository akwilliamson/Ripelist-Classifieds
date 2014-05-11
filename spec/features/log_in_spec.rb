require 'spec_helper'

describe "the user login process" do
	it "logs a user in" do
		visit root_url
		click_link "Log in"
		fill_in "user[email]", with: "hello@hi.com" 
		fill_in "user[password]", with: "123456789"
		click_button "Log in"
	end
end