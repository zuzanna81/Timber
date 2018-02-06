Given("I visit registration page") do
	visit new_user_registration_path
end

Then("{string} should have been created in the database") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
