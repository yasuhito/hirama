Feature: list up issues
  Background:
    Given The default aruba timeout is 10 seconds

  Scenario: hirama trema/trema
    When I run `hirama trema/trema`
    Then the output should contain "# trema/trema open issues"
    And the output should match /^#\d+/

  Scenario: hirama (no arguments)
    When I run `hirama`
    Then the output should contain "# yasuhito/hirama open issues"
