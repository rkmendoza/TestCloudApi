Feature: As a user of riskIQ platform I want to Get Classification Status

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users with wrong credentials want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status by wrong query param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | %%wrongQuery           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with classification malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with classification suspicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with classification non-malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"


  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users in the same organization, which created the project want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When users in the same organization, which created the project want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with suspicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When users in the same organization, which created the project want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with non-malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When users in the same organization, which created the project want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When users in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetClassificationStatus
  Scenario: Check the response of Get Classification Status with unknown param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    When user not in the same organization want Get Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"