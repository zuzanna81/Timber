module EmailHelpers
  def current_email_address
    last_email_address || "example@example.com"
  end
end

World(EmailHelpers)

Given("I visit the invitation page") do
  visit new_user_invitation_path
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

When /^(?:I|they|"([^"]*?)") opens? the email$/ do |address|
  open_email(address)
end

When(/^(?:I|they) follow "([^"]*?)" in the email$/) do |link|
    visit(parse_email_for_link(current_email, link))
end

Then /^(?:I|they) should see "([^"]*?)" in the email subject$/ do |text|
  expect(current_email).to have_subject(text)
end

Then /^(?:I|they) should see "([^"]*?)" in the email body$/ do |text|
  expect(current_email.default_part_body.to_s).to include(text)
end

Then /^(?:I|they|"([^"]*?)") should receive (an|no|\d+) emails?$/ do |address, amount|
  expect(unread_emails_for(address).size).to eql parse_email_count(amount)
end

Then /^save and open all html emails$/ do
  EmailSpec::EmailViewer::save_and_open_all_html_emails
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
