When("I visit new photo page") do
  visit new_photo_path
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I upload file {string}") do |file_name|
  attach_file('photo[image]', Rails.root + "spec/fixture/#{file_name}")
end

Then("I click on {string} button") do |button|
  click_button button
end

And("I should see {string} image") do |file_name|
  expect(page).to have_css("img[src*='#{file_name}']")
end
