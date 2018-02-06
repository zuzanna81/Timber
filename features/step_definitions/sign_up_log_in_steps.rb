Given("I visit registration page") do
	visit new_user_registration_path
end

Then("a family should have been created in the database") do 
	# binding.pry
  @family = Family.last
  expect(@family).not_to be nil
end
