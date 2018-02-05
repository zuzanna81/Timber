Feature: User can edit and delete photos
  As a user,
  In order to manage my uploaded photos,
  I would like to be able to delete and edit photos after I upload them

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
    And I click "Album"

  Scenario: User can delete uploaded photos
    And I click "Lisas renovation"
    When I click "Delete"
    Then I should not see "random.png" image

  Scenario: User can edit uploaded photos title
    And I click "Lisas renovation"
    And I should see "random.png" image
    And I should see "Something"
    When I click "Edit title"
    And I should see "Editing photo title"
    And I should see "Back"
    And I fill in "Title" with "Something else"
    And I click "Update Photo" button
    Then I should be redirected to the "Photo index" page
    Then I should see "Something else"
