Feature: User can add avatar to profile
  As a user,
  In order to see my profile photo on my profile page,
  I would like to be able to upload an image to my user profile

  Background:
    Given the following family exist
      | name         |
      | The Simpsons |

    Given the following user is part of a family
      | email          | first_name | password    | password_confirmation | family       |
      | lisa@gmail.com | Lisa       | heythere123 | heythere123           | The Simpsons |

    Given the following image exist in album
      | title     | image_file_name | album_title       |  family     |
      | Something | random.png      | Lisas renovation  | The Simpsons|

      And I am logged in as "lisa@gmail.com"
      When I visit the index page

    Scenario: User can upload an avatar photo to profile [Happy path]
      When I click "Edit profile"
      And I fill in "Current password" with "heythere123"
      And I upload the avatar "random.png"
      And I click "Update"
      And I should see "Your account has been updated successfully."
      And I should see "random.png" image

    Scenario: User can change first name in the edit profile page [Happy path]
      When I click "Edit profile"
      And I fill in "First name" with "Ciro"
      And I fill in "Current password" with "heythere123"
      And I click "Update"
      And I should see "Your account has been updated successfully."
      And I should see "Ciro"

    Scenario: User can change email in the edit profile page [Happy path]
      When I click "Edit profile"
      And I fill in "Email" with "ciro@gmail.com"
      And I fill in "Current password" with "heythere123"
      And I click "Update"
      And I should see "Your account has been updated successfully."

    Scenario: User can change password in the edit profile page [Happy path]
      When I click "Edit profile"
      And I fill in "Password" with "Lisa666"
      And I fill in "Password confirmation" with "Lisa666"
      And I fill in "Current password" with "heythere123"
      And I click "Update"
      And I should see "Your account has been updated successfully."

    Scenario: User leaves current password blank [Sad path]
      When I click "Edit profile"
      And I upload the avatar "random.png"
      And I click "Update"
      And I should see "Current password can't be blank"
