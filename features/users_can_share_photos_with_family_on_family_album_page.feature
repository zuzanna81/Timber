Feature: User can share photos with family
  As a user
  In order to share photos with my family
  I would like to be able to display photos on family album page

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |

     Given the following image exists
        | title               | image_file_name       |
        | Something           | random.png            |

    When I visit the index page
    And I click "Log in"

  Scenario: User can visit family album page and see photo
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere123"
    And I click "Log in" button
    And I click "Family album"
    Then I should be redirected to the "Family album" page
    And I should see "random.png" image
    And I should see "Something"
