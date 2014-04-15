require 'spec_helper'

describe User do
	context 'signing up' do
		it 'signs up a user and takes them to the home page' do
			person = FactoryGirl.create :user
			visit root_path
			click_link 'Sign up'
			fill_in "user_username", with: person.username
			fill_in "user_password", with: person.password
			fill_in "user_password_confirmation", with: person.password
			fill_in "user_email", with: person.email
			click_button 'Sign Up'
			page.should have_content 'List of all'
		end
	end
end
