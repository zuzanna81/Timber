Given("I visit the invitation page") do
  visit new_user_invitation_path
end

Then("{string} should see {string} in the subject") do |email_address, text|
  open_email(email_address)
  expect(current_email.subject).to match Regexp.new(text)
end
