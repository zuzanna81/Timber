Feature: User can share photos with family
  As a user
  In order to share photos with my family
  I would like to be able to display photos on family album page

  Scenario: User can visit family album page and see photo
    When I visit the index page
    And I click "Family Album"
    Then I sould be redirected to the "Family album" page
    And I should see "random.png"
    
