Feature: A user can see relationships among family members
  As a user,
  In order to for me to see relationships with my family members,
  I would like them to be displayed on the family tree page

  Scenario: User can create family tree
    Given I visit the family tree page
    When I click 'Add family members'
    Then I should be redirected to add family members form page
    And I should see 'First name'
    And I should see 'Last name'
    And I should see 'Relationship'
    And I should see 'Date of birth'
    And I should see 'Upload image'
    And I should see 'Add member to family tree'
