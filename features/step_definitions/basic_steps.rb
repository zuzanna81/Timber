When("I visit the index page") do
  visit root_path
end

Then("show me the page") do
  save_and_open_page
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

def page_path_from(page_name)
  case page_name.downcase
    when 'sign up'
      new_user_registration_path
    when 'family tree'
      familytree_path
    else
      root_path
  end
end
