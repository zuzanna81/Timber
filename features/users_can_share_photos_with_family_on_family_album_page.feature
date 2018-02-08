Feature: User can share photos with family
  As a user
  In order to share photos with my family
  I would like to be able to display photos on family album page

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

  Scenario: User can visit family album page and see photo
    And I click "Shared albums"
    Then I should be redirected to the "Shared albums" page
    And I should see "random.png" image
