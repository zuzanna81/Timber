Feature: User can share photos with family
  As a user
  In order to share photos with my family
  I would like to be able to display photos on family album page

  Background:
    Given the following user exists
      | email          | password    | password_confirmation |
      | lisa@gmail.com | heythere123 | heythere123           |

    Given the following image exists
      | title     | image_file_name |
      | Something | random.png      |

    And I am logged in as "lisa@gmail.com"
    When I visit the index page

  Scenario: User can visit family album page and see photo
    And I click "Album"
    Then I should be redirected to the "Album" page
    And I should see "random.png" image
    And I should see "Something"
