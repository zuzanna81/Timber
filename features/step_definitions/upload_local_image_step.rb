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

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

And("I should see {string} image") do |file_name|
  expect(page).to have_css("img[src*='#{file_name}']")
end

def page_path_from(page_name)
  case page_name.downcase
  when 'photoindex'
      photos_path
    else
      root_path
  end
end
