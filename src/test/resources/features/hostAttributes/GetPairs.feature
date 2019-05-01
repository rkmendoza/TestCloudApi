Feature: As a user of riskIQ platform I want to Get Pairs

  @GetPairs
  Scenario: Check the response of Get Pairs with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | %%queryPairs           |
    When users with wrong credentials want Get Pairs with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | direction    | children               |
      | start        | %%attibutesStart       |
      | end          | %%attibutesEnd         |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization, which created the project want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with children parameter and the user created the project and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization, which created the project want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | children               |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with children parameter and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | children           |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When users in the same organization, which created the project want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user of the same organization with parents parameter and the user created the project and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When users in the same organization, which created the project want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryPairs           |
    When user not in the same organization want Get Pairs with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | direction   | parents                |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"

  @GetPairs
  Scenario: Check the response of Get Pairs with user not in the same organization with parents parameter and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryPairs       |
    When user not in the same organization want Get Pairs with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | direction       | parents            |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getPairs.json"




