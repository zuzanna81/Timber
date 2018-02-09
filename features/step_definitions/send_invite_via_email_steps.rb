module EmailHelpers
  def current_email_address
    last_email_address || 'example@example.com'
  end
end

Given('I visit the invitation page') do
  visit new_user_invitation_path
end

And('the following family exist') do |table|
  table.hashes.each do |family|
    create(:family, family)
  end
end

Given('the following user is part of a family') do |table|
  table.hashes.each do |user|
    family = Family.find_by(name: user[:family])
    create(:user, email: user[:email],
                  first_name: user[:first_name],
                  password: user[:password],
                  password_confirmation: user[:password_confirmation],
                  family: family)
  end
end

And('the new user\'s family should be {string}') do |family_name|
  family = Family.find_by(name: family_name)
  expect(User.last.family).to eq family
end

When('{string} opens the email') do |address|
  open_email(address)
end

When('I click {string} in the email') do |link|
  visit(parse_email_for_link(current_email, link))
end

Then('I should see {string} in the email subject') do |text|
  expect(current_email).to have_subject(text)
end

Then('I should see {string} in the email body') do |text|
  expect(current_email.default_part_body.to_s).to include(text)
end

Then /^('they|"([^"]*?)") should receive (an|no|\d+) emails?$/ do |address, amount|
  expect(unread_emails_for(address).size).to eql parse_email_count(amount)
end

Then('save and open all html emails') do
  EmailSpec::EmailViewer.save_and_open_all_html_emails
end
