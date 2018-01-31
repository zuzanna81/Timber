Feature: User can visit landing page
  As a user
  In order to use the system
  I would like to access a landing page

  @javascript
  Scenario: User visits landing page
    When I visit the landing page
    Then I would like to see "Hello Thomas"
