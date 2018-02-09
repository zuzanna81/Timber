When('I visit new photo page') do
  visit new_photo_path
end

When('I upload file {string}') do |file_name|
  attach_file('photo[image]', Rails.root + "spec/fixture/#{file_name}")
end

When('I upload the file {string}') do |file_name|
  attach_file('user[avatar]', Rails.root + "spec/fixture/#{file_name}")
end

And('I should see {string} image') do |file_name|
  expect(page).to have_css("img[src*='#{file_name}']")
end

Then('I should not see {string} image') do |file_name|
  expect(page).not_to have_css("img[src*='#{file_name}']")
end

Given('the following album exists') do |table|
  table.hashes.each do |title|
    create(:album, title)
  end
end

Given('the following image exist in album') do |table|
  table.hashes.each do |image|
    family = Family.find_by(name: image[:family])
    album = create(:album, title: image[:album_title], family: family)
    create(:photo, image.except!('album_title', 'family').merge!(album: album))
  end
end

Then('the last album should have title {string}') do |album_title|
  album = Album.last
  expect(album.title).to eq album_title
end

Then('the last album should belong to {string} family') do |family_name|
  family = Family.find_by(name: family_name)
  expect(Family.last.name).to eq family.name
end

Then('I should not see {string}') do |content|
  expect(page).not_to have_content content
end

Then(/^I should be on the album "([^"]*)" page$/) do |album_title|
  album = Album.find_by(title: album_title)
  expect(current_path).to eq album_path(album)
end