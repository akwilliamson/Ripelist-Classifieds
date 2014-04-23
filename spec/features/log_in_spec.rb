require 'spec_helper'

describe "the user login process" do
	it "logs a user in" do
		visit root_url
		click_link "Log in"
		fill_in "Email", with: "hello@hi.com" 
		fill_in "Password", with: "123456789"
		click_button "Log in"
		save_and_open_page
	end
end