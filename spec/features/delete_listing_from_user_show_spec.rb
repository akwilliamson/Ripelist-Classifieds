require "spec_helper"

describe "delete user's listings" do
	it "shows a delete button for each of the user's listings" do	
		log_in_user
		create_user_listing
		click_link @email
		page.should have_content "Delete"
	end
end