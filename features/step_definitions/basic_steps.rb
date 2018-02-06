When("I visit the index page") do
  visit root_path
end

When("I visit the album page") do
  visit new_album_path
end

Then("show me the page") do
  save_and_open_page
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("the {string} should be visible") do |selector|
  expect(page).to have_selector :css, "##{selector}"
end

Then("I click {string}") do |element|
  click_link_or_button element
end

When("I click {string} button") do |button|
  click_button button
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    create(:user, user)
  end
end

Given("the following image exist in album") do |table|
  table.hashes.each do |image|
    family = Family.find_by(name: image[:family])
    album = create(:album, title: image[:album_title], family: family)
    create(:photo, image.except!("album_title", "family").merge!(album: album))
  end
end

Given("the following album exists") do |table|
  table.hashes.each do |title|
    create(:album, title)
  end
end

Given("I am logged in as {string}") do |user_email|
  user = User.find_by(email: user_email)
  login_as(user, scope: :user)
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
  case page_name.downcase
    when 'sign up'
      new_user_registration_path
    when 'photo index'
      photos_path
    when 'album'
      albums_path
    when 'invitation'
      new_user_invitation_path
    when 'accept invitation'
      accept_user_invitation_path
    else
      root_path
  end
end

Then("the last album should have title {string}") do |album_title|
  album = Album.last
  expect(album.title).to eq album_title
end

Then("the last album should belong to {string} family") do |family_name|
  family = Family.find_by(name: family_name)
  expect(Family.last.name).to eq family.name end
