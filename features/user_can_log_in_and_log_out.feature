Feature: User has access to login and logout
  As a User
  In order to securely access the application and protect my account
  I would like to be able to log in and log out

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |

    When I visit the index page
    And I click "Log in"

  Scenario: Visitor logs out of account
    Given I am logged in as "lisa@gmail.com"
    And I visit the index page
    When I click "Log out"
    Then I should see "Signed out successfully."

  Scenario: Visitor fills in all fields [Happy Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere123"
    And I click "Log in" button
    Then I should be redirected to the "index" page
    And I should see "Logged in as: lisa@gmail.com"
    And I should see "Log out"
    And I should see "Signed in successfully."

  Scenario: Visitor does not fill in Email [Sad Path]
    When I fill in "Password" with "heythere123"
    And I click "Log in" button
    Then I should see "Invalid Email or password."

  Scenario: Visitor does not fill in Password [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I click "Log in" button
    Then I should see "Invalid Email or password."

  Scenario: Visitor does not fill in both fields [Sad Path]
    When I click "Log in" button
    Then I should see "Invalid Email or password."
