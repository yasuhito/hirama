Feature: list up issues
  Scenario: trema/trema
    Given The default aruba timeout is 10 seconds
    When I run `hirama trema/trema`
    Then the output should contain "# trema/trema open issues"
    And the output should match /^#\d+/
