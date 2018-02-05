Feature: User can edit and delete photos
  As a user,
  In order to manage my uploaded photos,
  I would like to be able to delete and edit photos after I upload them

  Background:
    Given I visit the "Photo index" page

  Scenario: User can delete uploaded photos
    And I should see "random.png" image
    When I click "Delete" button
    Then I should not see "random.png"
