@billing
Feature: Renting a car requirements

  Scenario Outline: you are either old enough or not to rent a car
    Given age is <age>
    When I ask if I'm old enough to rent a car
    Then I should be told "<answer>"

  Examples:
    | age | answer |
    | 23  | Nope, you have 2 more years to go but come back then!|
    | 25  | Here's the keys!|
    | 21  | Nope, you have 4 more years to go but come back then!|
    | 18  | Nope, you have 7 more years to go but come back then!|

# @billing2

  Scenario Outline: We are closed on Sundays so you need to pick another day
    Given plan to return car on "<day>"
    When I say I plan to return car on this day
    Then I expect to be told "<dayanswer>"

  Examples:
    |day   | dayanswer |
    |Friday| We look forward to seeing you then|
    |Sunday| We are closed on Sundays!|
    |Thursday| We look forward to seeing you then|

