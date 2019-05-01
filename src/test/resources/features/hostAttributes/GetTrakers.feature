Feature: As a user of riskIQ platform I want to Get Trakers

  @GetTrakers
  Scenario: Check the response of Get Trakers with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | %%queryTrakers         |
    When users with wrong credentials want Get Trakers with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When users in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When users in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers1
  Scenario: Check the response of Get Trakers with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When user not in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user not in the same organization and start date and end date, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | public             |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When user not in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When users in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When users in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When user not in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user not in the same organization and start date and end date, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | private            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When user not in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When users in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When users in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When users in the same organization, which created the project want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user of the same organization and the user created the project and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When users in the same organization, which created the project want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryTrakers         |
    When user not in the same organization want Get Trakers with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"

  @GetTrakers
  Scenario: Check the response of Get Trakers with user not in the same organization and start date and end date, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key             | value              |
      | name            | @@namerandom       |
      | visibility      | analyst            |
    And a created artifact with values
      | key             | value              |
      | project         | ##guid             |
      | query           | %%queryTrakers     |
    When user not in the same organization want Get Trakers with the values
      | key             | value              |
      | query           | ##queryArtifact    |
      | start           | %%attibutesStart   |
      | end             | %%attibutesEnd     |
    Then the api should response with code 200
    And Check JSON schema "hostAttributes/getTrakers.json"



