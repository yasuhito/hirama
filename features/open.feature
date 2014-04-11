Feature: open a issue in the default browser
  Background:
    Given The default aruba timeout is 10 seconds

  Scenario: hirama open 7 -r trema/trema
    Given I double `open https://github.com/trema/trema/issues/7`
    When I run `hirama open 7 -r trema/trema`
    Then the double `open https://github.com/trema/trema/issues/7` should have been run

  Scenario: hirama open 7
    Given I double `open https://github.com/yasuhito/hirama/issues/7`
    When I run `hirama open 7`
    Then the double `open https://github.com/yasuhito/hirama/issues/7` should have been run
