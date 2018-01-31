When("I visit index page") do
  visit root_path
end

When("I click on {string} link") do |link|
  click_link link
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("the {string} should be visible") do |selector|
  expect(page).to have_selector :css, "##{selector}"
end

Then("I should be redirected to the landing page") do
  expect(current_path).to eq root_path
end

Then("show me the page") do
  save_and_open_page
end
