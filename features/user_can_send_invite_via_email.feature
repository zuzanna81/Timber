Feature: Visitor can send invite to another user via email
  As a user,
  In order to make it possible for my family to share photos with me
  I would like to be able to invite other users via email

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |

    Given I am logged in as "lisa@gmail.com"
    And I visit the invitation page

  Scenario: User gets an invite from visitor
    When I fill in "Email" with "name@example.com"
    And I click "Send an invitation" button
    And I click "Log out"
    Then "name@example.com" should receive an email
    When "name@example.com" opens the email
    And they should see "Invitation instructions" in the email subject
    And they should see "Hello name@example.com" in the email body
    And they should see "Accept invitation" in the email body
    When they follow "Accept invitation" in the email
    Then they should be redirected to the "Accept invitation" page
