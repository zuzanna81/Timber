Feature: A user can see relationships among family members
  As a user,
  In order to for me to see relationships with my family members,
  I would like them to be displayed on the family tree page

  Background:
    Given the following user exists
       | email                | password       | password_confirmation     |
       | lisa@gmail.com       | heythere123    | heythere123               |

    When I visit the index page
    And I click "Log in"

  Scenario: User can create family tree
    When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere123"
    And I click "Log in"
    When I click 'Family tree'
    When I click 'Add family members'
    Then I should be redirected to the "Add family members" page
    Then show me the page
    And I should see 'First name'
    And I should see 'Last name'
    And I should see 'Relationship'
    And I should see 'Date of birth'
    And I should see 'Upload image'
    And I should see 'Add member to family tree'
