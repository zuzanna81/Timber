Feature: Visitor can send invite to another user via email
  As a user,
  In order to make it possible for my family to share photos with me
  I would like to be able to invite other users via email

  Background:


    Given the following families exist
      | name         |
      | The Simpsons |

    Given the following user are part of a family
      | email          | password    | password_confirmation | family       |
      | lisa@gmail.com | heythere123 | heythere123           | The Simpsons |

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
    And they should see "You have been invited to The Simpsons family" in the email body
    And they should see "Accept invitation" in the email body
    When they follow "Accept invitation" in the email
    Then they should be redirected to the "Accept invitation" page
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Set my password"
    And the new user's family should be "The Simpsons"
