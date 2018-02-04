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


And(/^the following families exist$/) do |table|
  table.hashes.each do |family|
    create(:family, family)
  end
end

Given(/^the following user are part of a family$/) do |table|
  table.hashes.each do |user|
    family = Family.find_by(name: user[:family])
    create(:user, email: user[:email], family: family)
  end
end

And(/^the new user's family should be "([^"]*)"$/) do |family_name|
  family = Family.find_by(name: family_name)
  expect(User.last.family).to eq family
end