Feature: User can upload attached file
  As a user
  In order to upload photos to my photo album page
  I would like to be able to attach a local file and upload it

  Scenario: User can upload attached file
    When I visit new photo page
    And I fill in "Title" with "Something"
    And I upload file "random.png"
    And I click on "Upload" button
    Then I should be redirected to the "Photo index" page
    And I should see "random.png" image
