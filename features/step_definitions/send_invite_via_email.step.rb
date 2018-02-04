Given("I visit the invitation page") do
  visit new_user_invitation_path
end

Then("they should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq their_path(page_name)
end

def their_path(page_name)
  case page_name.downcase
  when 'accept invitation'
    accept_user_invitation_path
  end
end
