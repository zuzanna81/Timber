Feature: Navbar
  As a user
  In order to navigate the site
  I would like to see a navbar with a home button

  Scenario: Display navbar and allow visitor to navigate back home
    Given I visit the index page
    Then the "navbar" should be visible
    When I click "Home"
    Then I should be redirected to the "landing" page
