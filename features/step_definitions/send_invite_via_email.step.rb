Given("I visit the invitation page") do
  visit new_user_invitation_path
end

Then("{string} should see {string} in the subject") do |email_address, text|
  open_email(email_address)
  expect(current_email.subject).to match Regexp.new(text)
end

Then("they should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq their_path(page_name)
end

def their_path(page_name)
  case page_name.downcase
  when 'accept invitation'
      invitation_path
  end
end
