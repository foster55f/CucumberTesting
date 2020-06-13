Feature: Are you old enough to rent a car
  Are you over 25

  Scenario: you are either old enough or not to rent a car
    Given age is <age>
    When I ask if I'm old enough to rent a car
    Then I should be told "<answer>"

  Examples:
    | age | answer |
    | 23  | Nope, you have 2 more years to go but come back then!|
    | 25  | Here's the keys!|
    | 21  | Nope, you have 4 more years to go but come back then!|
    | 18  | Nope, you have 7 more years to go but come back then!|

