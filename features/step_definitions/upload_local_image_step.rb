When("I visit photo page") do
  visit new_photo_path
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I upload file {string}") do |file_name|
  attach_file('photo[attachment]', Rails.root + "spec/fixtures/#{file_name}"
end

Then("I attach file {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click on upload button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see attached file {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
