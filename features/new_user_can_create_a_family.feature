Feature: User can create a family during registration process
	As a user
	In order to create a family during registration
	I would like to be able to fill in a form on registration page

	Scenario: User can create a family
		Given I visit registration page
		When I fill in "Email" with "lisa@gmail.com"
    And I fill in "Password" with "heythere12"
    And I fill in "Password confirmation" with "heythere12"
		Then I fill in "Family name" with "The Simpsons"
		And I click "Sign up" button
		Then a family should have been created in the database
		And the new user's family should be "The Simpsons"
		And I should be redirected to the "index" page
