Feature: User can only see albums connected to her/his own family when logged in
  As a user,
  In order to protect my shared photos
  I would like to see my own family's photos

 Scenario:
   When I visit the index page
   And I click "Sign up"
   Then I should be redirected to the "Sign up" page
   When I fill in "Email" with "lisa@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   Then I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   Then a family should have been created in the database
   And the new user's family should be "The Simpsons"
   When I click "New album"
   And I fill in "Title" with "Lisa's renovation"
   And I click "Create album"
   And the last album should have title "Lisa's renovation"
   And the last album should belong to "The Simpsons" family
   When I click "Log out"
   Then I should see "Signed out successfully."
   When I visit the index page
   And I click "Sign up"
   Then I should be redirected to the "Sign up" page
   When I fill in "Email" with "sophie@gmail.com"
   And I fill in "Password" with "heythere12"
   And I fill in "Password confirmation" with "heythere12"
   Then I fill in "Family name" with "The Simpsons"
   And I click "Sign up" button
   Then a family should have been created in the database
   And the new user's family should be "The Simpsons"
   When I click "Shared albums"
   Then I should be redirected to the "Shared albums" page
   And I should not see "Lisa's renovation"
