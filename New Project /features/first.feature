Feature: Search for an item an be able to add to shopping cart

  @javascript
  Scenario: Search for dell laptops and verify search results for a guest user
    Given I search for "Dell Laptops"
    When I select the first "Dell Inspiron" item from the search results page
    And I add it to my shopping cart
    Then I should be redirected to the login page