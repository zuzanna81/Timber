Feature: Visitor can sign up
  As a visitor
  In order to have an account on the site
  I would like to be able to sign up

  Background:
    When I visit the index page
    And I click "Sign up"

  Scenario: Visitor can navigate to sign up page
    Then I should be redirected to the "Sign up" page

  Scenario: Visitor fills in all fields [Happy Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere12"
    And I fill in "Password confirmation" with "heythere12"
    And I click 'Sign up' button
    Then I should be redirected to the "Family Trees" page
    And I should see "Welcome! You have signed up successfully."

  Scenario: Visitor fills in all fields except Email [Sad Path]
    When I fill in "Password" with "heythere12"
    And I fill in "Password confirmation" with "heythere12"
    And I click 'Sign up' button
    Then I should see "1 error prohibited this user from being saved: Email can't be blank"

  Scenario: Visitor fills in all fields except Password [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password confirmation" with "heythere12"
    And I click 'Sign up' button
    Then I should see "2 errors prohibited this user from being saved: Password can't be blankPassword confirmation doesn't match Password"

  Scenario: Visitor fills in all fields except Password confirmation [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere12"
    And I click 'Sign up' button
    Then I should see "1 error prohibited this user from being saved: Password confirmation doesn't match Password"

  Scenario: Visitor fills in all fields with invalid Password [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "hey"
    And I fill in "Password confirmation" with "hey"
    And I click "Sign up" button
    Then I should see "1 error prohibited this user from being saved: Password is too short"
