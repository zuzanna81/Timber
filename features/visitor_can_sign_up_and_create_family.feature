Feature: Visitor can sign up and create a family during registration process
  As a visitor
  In order to have an account and a family on the site
  I would like to be able to sign up and create my family

  Background:
    When I visit the index page
    And I click "Sign up"

  Scenario: Visitor can navigate to sign up page and create a family
    Then I should be redirected to the "Sign up" page

  Scenario: Visitor fills in all fields [Happy Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere12"
    And I fill in "Password confirmation" with "heythere12"
    Then I type in "family_name" with "The Simpsons"
    And I click "Sign up" button
    Then a family should have been created in the database
    And the new user's family should be "The Simpsons"
    And I should be redirected to the "index" page

  Scenario: Visitor fills in all fields except Email [Sad Path]
    When I fill in "Password" with "heythere12"
    And I fill in "Password confirmation" with "heythere12"
    Then I type in "family_name" with "The Simpsons"
    And I click 'Sign up' button
    Then I should see "1 error prohibited this user from being saved: Email can't be blank"

  Scenario: Visitor fills in all fields except Password [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password confirmation" with "heythere12"
    Then I type in "family_name" with "The Simpsons"
    And I click 'Sign up' button
    Then I should see "2 errors prohibited this user from being saved: Password can't be blankPassword confirmation doesn't match Password"

  Scenario: Visitor fills in all fields except Password confirmation [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere12"
    Then I type in "family_name" with "The Simpsons"
    And I click 'Sign up' button
    Then I should see "1 error prohibited this user from being saved: Password confirmation doesn't match Password"

  Scenario: Visitor fills in all fields with invalid Password [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "hey"
    And I fill in "Password confirmation" with "hey"
    Then I type in "family_name" with "The Simpsons"
    And I click "Sign up" button
    Then I should see "1 error prohibited this user from being saved: Password is too short"

  Scenario: Visitor fills in all fields except family name [Sad Path]
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "hey"
    And I fill in "Password confirmation" with "hey"
    And I click "Sign up" button
    Then I should see "Family name can't be blank"
