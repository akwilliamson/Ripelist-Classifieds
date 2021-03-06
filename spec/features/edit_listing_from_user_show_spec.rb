require "spec_helper"

describe "edit user's listings" do
	
	it "lets users edit their current listings" do
		log_in_user
		create_user_listing
		click_link @email
		click_button "Edit"
		page.should have_content("apples")
	end

	it "updates a user's listing with the new inputted values" do
		log_in_user
		create_user_listing
		click_link @email
		click_button "Edit"
		fill_in "listing[name]", with: "new apples"
		click_button "Update"
		page.should have_content("Listing updated")
	end

end