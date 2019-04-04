Feature: As a user of riskIQ platform I want to Get Enrichment Data

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users with wrong credentials want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data by wrong query param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And a settled down the classification status for a given domain with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | %%wrongQuery           |
    Then the api should response with code 200
    And Check JSON schema "action/getClassificationStatus.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"


  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
     And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with unknown param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization, which created the project want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization, which created the project want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification suspicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization, which created the project want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification non-malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization, which created the project want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When users in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"

  @GetEnrichmentData
  Scenario: Check the response of Get Enrichment Data with classification unknown param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
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
    And created Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    And Set Tags with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | tags               | @@randomTags2          |
    And created Dynamic Dns Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | status             | true                   |
    When user not in the same organization want Get Enrichment Data with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "action/getEnrichmentData.json"