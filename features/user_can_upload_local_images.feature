Feature: User can upload attached file
  As a user
  In order to upload photos to my photo album page
  I would like to be able to attach a local file and upload it

  Background:
    Given the following family exist
     | name         |
     | The Simpsons |

   Given the following user is part of a family
     | email          | password    | password_confirmation | family       |
     | lisa@gmail.com | heythere123 | heythere123           | The Simpsons |   

    And I am logged in as "lisa@gmail.com"
    When I visit the index page

  Scenario: User can upload attached file
    When I visit the album page
    And I fill in "Title" with "Lisa's renovation"
    And I click "Create album"
    Then I should be redirected to the "New album" page
    When I visit new photo page
    And I fill in "Title" with "Something"
    And I upload file "random.png"
    And I click on "Upload" button
    Then I should be redirected to the "Photo index" page
    And show me the page 
    And I should see "random.png" image
