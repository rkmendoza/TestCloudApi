Feature: As a user of riskIQ platform I want to Get OSINT Bulk

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifacts with the values and the amount of 2
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users with wrong credentials want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When users in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When user not in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When users in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When user not in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When users in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When users in the same organization, which created the project want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"

  @GetOSINTBulk
  Scenario: Check the response of Get OSINT Bulk with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When user not in the same organization want Get OSINT Bulk with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "enrichment/getOSINT Bulk.json"



