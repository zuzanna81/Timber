Feature: A user can create a photo album
  As a user,
  In order to share photos with my family ,
  I would like to be able to create an album and upload photos to it

  Background:
    Given the following family exist
      | name         |
      | The Simpsons |

    Given the following user is part of a family
      | email          | first_name | password    | password_confirmation | family       |
      | lisa@gmail.com | Lisa       | heythere123 | heythere123           | The Simpsons |

    And I am logged in as "lisa@gmail.com"
    When I visit the index page

  Scenario: User can create photo albumn
    When I click "New album"
    And I fill in "Title" with "Lisa's renovation"
    And I click "Create album"
    And the last album should have title "Lisa's renovation"
    And the last album should belong to "The Simpsons" family
