Feature: Navbar
  As a user
  In order to navigate the site
  I would like to see a navbar with a sign up and log in buttons

  Scenario: Display navbar and allow visitor to navigate to the sign up page
    Given I visit the index page
    Then the "navbar" should be visible
    And I should see "Sign up"
    And I should see "Log in"
    When I click "Sign up"
    Then I should be redirected to the "Sign up" page
