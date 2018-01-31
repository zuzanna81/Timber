Feature: User can upload attached file
  As a user
  In order to upload photos to my photo album page
  I would like to be able to attach a local file and upload it

  Scenario: User can upload attached file
    When I visit index page
    Then I see upload photo form
    And I attach file "Lisa.jpeg"
    And I click on upload button
    Then I should see attached file "Lisa.jpeg"
