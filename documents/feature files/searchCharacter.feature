Feature: Choose Character

  as a user
  I want to be able to search for my World of Warcraft character and have it displayed

  Scenario: find character
    Given I fill in all data
    When I press the search button
    And the character exists in the Blizzard API
    Then I should see my character displayed

  Scenario: character non-existent
    Given I fill in all data
    When I press the search button
    And the character does not exist
    Then I should see an error page

  Scenario: incorrect input
    Given I don't fill in all required data
    When I press the search button
    Then I should get an errormessage stating I didn not fill in all requested fields