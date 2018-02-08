Feature: User can add avatar to profile
  As a user,
  In order to see my profile photo on my profile page,
  I would like to be able to upload an image to my user profile

  Background:
    Given the following family exist
      | name         |
      | The Simpsons |

    Given the following user is part of a family
      | email          | password    | password_confirmation | family       |
      | lisa@gmail.com | heythere123 | heythere123           | The Simpsons |

    Given the following image exist in album
      | title     | image_file_name | album_title       |  family     |
      | Something | random.png      | Lisas renovation  | The Simpsons|

      And I am logged in as "lisa@gmail.com"
      When I visit the index page

    Scenario: User can upload an avatar photo to profile
      When I click "Edit profile"
      And I upload the file "random.png"
      Then show me the page
      And I click "Update"
      And I should see "Your account has been updated successfully."
      And I should see "random.png" image
