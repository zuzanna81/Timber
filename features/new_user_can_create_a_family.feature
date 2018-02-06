Feature: User can create a family during registration process 
	As a user 
	In order to create a family while registrating 
	I would like to be able to fill in a form on registration page 


	Scenario: User can create a family 
		Given I visit registration page 
		Then I fill in "New family" with "The Simpsons"
		And I click "Sign up" button 
		Then "The Simpsons" should have been created in the database
		And I should be redirected to the "index" page 
