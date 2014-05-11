require "spec_helper"

describe User do
	context 'signing up' do
		it 'signs up a user and takes them to the home page' do
			user = FactoryGirl.build(:user)
			visit root_path
			click_link 'Sign up'
			fill_in "user[email]", with: user.email
			fill_in "user_password", with: user.password
			fill_in "user_password_confirmation", with: user.password
			fill_in "user_email", with: user.email
			click_button 'Sign up'
			page.should have_content 'Welcome! You have signed up successfully.'
		end
	end
end
