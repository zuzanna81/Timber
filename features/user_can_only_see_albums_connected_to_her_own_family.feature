Feature: User can only see photos connected to her account
  As a user
  In order to protect my shared photos
  I would like to only see photos connected to my account

 Scenario: User can only see albums connected to her account
   When I visit the index page
   And I click "Sign up"
   And I fill in "Email" with "lisa@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   And I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   Then the new user's family should be "The Simpsons"
   When I click "New album"
   And I fill in "Title" with "Lisa's renovation"
   And I click "Create album"
   And the last album should have title "Lisa's renovation"
   And the last album should belong to "The Simpsons" family
   Then I click "Log out"
   And I click "Sign up"
   And I fill in "Email" with "sophie@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   And I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   And I click "Shared albums"
   Then I should not see "Lisa's renovation"

 Scenario: User can only see photos connected to her account
   When I visit the index page
   And I click "Sign up"
   And I fill in "Email" with "lisa@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   And I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   Then the new user's family should be "The Simpsons"
   When I click "New album"
   And I fill in "Title" with "Lisa's renovation"
   And I click "Create album"
   And I click "Add photo"
   And I fill in "Title" with "Something"
   And I upload file "random.png"
   And I click "Upload"
   And I click "Log out"
   And I click "Sign up"
   And I fill in "Email" with "sophie@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   And I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   And I click "My albums"
   Then I should not see "random.png"
   And I should not see "Something"
