Feature: Visitor can send invite to another user via email
  As a user,
  In order to make it possible for my family to share photos with me
  I would like to be able to invite other users via email

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |
       | name@example.com     | password       | password                  |

    Given I am logged in as "lisa@gmail.com"
    And I visit the invitation page

  Scenario: Visitor sends invite to a user
    When I fill in "Email" with "name@example.com"
    And I click "Send an invitation" button
    Then "name@example.com" should see "Invitation instructions" in the subject

    # Then show me the page
