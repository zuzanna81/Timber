Feature: User can edit and delete photos
  As a user,
  In order to manage my uploaded photos,
  I would like to be able to delete and edit photos after I upload them

  Background:
    Given the following user exists
      | email          | password    | password_confirmation |
      | lisa@gmail.com | heythere123 | heythere123           |

    Given the following image exists
      | title     | image_file_name |
      | Something | random.png      |

    Given I visit the "Photo index" page

  Scenario: User can delete uploaded photos
    And I should see "random.png" image
    When I click "Delete"
    Then I should not see "random.png" image

  Scenario: User can edit uploaded photos title
    And I should see "random.png" image
    And I should see "Something"
    And I click "Launch demo modal"
    And I should see "Modal title"
    # When I click "Edit title"
    # Then I should be redirected to the "Edit photo" page
    # Then I should see "New title"
