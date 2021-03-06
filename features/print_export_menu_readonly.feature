# Feature files that end with "_readonly.feature" should be read only, so they could be run at en.wikipedia.org
@en.wikipedia.beta.wmflabs.org @en.wikipedia.org
Feature: Print/Export menu Expand and Collapse

  Scenario: Check for Print/export section Collapsed
    Given I am at random page
    Then Print/export section should be collapsed

  Scenario: Check for Print/export section Expanded
    Given I am at random page
    When I click Print/export
    Then Print/export section should be expanded

  Scenario: Print/export section collapses after it is expanded
    Given I am at random page
    When I click Print/export
      And I click Print/export again
    Then Print/export section should be collapsed
