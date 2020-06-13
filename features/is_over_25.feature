Feature: Are you old enough to rent a car
  Are you over 25

  Scenario: 23 isn't old enough to rent a car
    Given age is 23
    When I ask if I'm old enough to rent a car
    Then I should be told "Nope, you have 2 more years"