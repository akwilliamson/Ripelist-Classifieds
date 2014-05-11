def log_in_user
  user = FactoryGirl.create :user
  @email = user.email
  @listing = FactoryGirl.create :listing
  visit root_path
  click_link "Log in"
  fill_in "user[email]", with: user.email
  fill_in "user[password]", with: user.password
  click_button "Log in"
end

def create_user_listing
	click_link "Post"
	fill_in "listing[name]", with: "apples"
	fill_in "listing[description]", with: "so sweet and tasty"
	find("option[value='Portland']").click
	click_button "Submit"
end