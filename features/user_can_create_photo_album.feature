Feature: A user can create a photo album
  As a user,
  In order to share photos with my family ,
  I would like to be able to create an album and upload photos to it

  Background:
    Given the following user exists
      | email          | password    | password_confirmation |
      | lisa@gmail.com | heythere123 | heythere123           |

    Given the following image exists
      | title     | image_file_name |
      | Something | random.png      |

    And I am logged in as "lisa@gmail.com"
    When I visit the index page

  Scenario: User can create photo albumn
    When I visit the album page
    And I fill in "Name" with "Lisa's renovation"
    And I click "Create album"
    Then I should be redirected to the "New album" page

  # Scenario: User can upload photos to an existing album
