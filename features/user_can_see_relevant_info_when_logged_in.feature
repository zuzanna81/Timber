Feature: User can see relevant info when logged in
  As a user,
  In order to know that I am logged in,
  I would like to see a welcome message and my profile info

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |

    When I visit the index page
    Then I should see "A social family platform"
    And I should see "Share your photos privately"
    And I click "Log in"

  Scenario:
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere123"
    And I click "Log in" button
    Then I should be redirected to the "index" page
    And I should see "Welcome" and "lisa@gmail.com"
