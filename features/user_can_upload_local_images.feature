Feature: User can upload attached file
  As a user
  In order to upload photos to my photo album page
  I would like to be able to attach a local file and upload it

  Background:
    Given I visit new photo page

  Scenario: User can upload attached file [Happy path]
    When I fill in "Title" with "Something"
    And I upload file "random.png"
    And I click on "Upload" button
    Then I should be redirected to the "Photo index" page
    And I should see "Successfully created a new photo!"
    And I should see "random.png" image

  Scenario: User attempts to upload photo without filling in title [Sad path]
    When I upload file "random.png"
    And I click on "Upload" button
    And I should see "Error, no photo was created"
    And I should see "Title can't be blank"

  Scenario: User attempts to upload photo without filling in Title and choosing a file [Sad path]
    When I click on "Upload" button
    And I should see "Error, no photo was created"

  Scenario: User attempts to upload photo without choosing a file [Sad path]
    And I fill in "Title" with "One summer day"
    And I click on "Upload" button
    # And I should see "Error, no photo was created"
