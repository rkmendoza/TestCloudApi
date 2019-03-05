Feature: As a user of riskIQ platform I want to Find artifact

  @FindArtifact
  Scenario: Check the response of Find all artifacts with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users in the same organization want Find artifacts
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And a invalid user and invalid key from riskIQ platform
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find all artifact the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    When users in the same organization want Find artifacts
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/Find.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong artifact param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##wrongUiArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility is public with the user not in the same organization, the response retrieve code 403 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong project param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##wrongProjectArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong owner param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##wrongOwner           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong creator param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##wrongCreator         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong organization param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##wrongOrganization    |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong query param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##wrongQuery           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong type param, and the visibility of project is public with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##wrongType            |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"


  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/Find.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong artifact param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##wrongUiArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility is private with the user not in the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong project param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##wrongProjectArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong owner param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##wrongOwner           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong creator param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##wrongCreator         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong organization param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##wrongOrganization    |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong query param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##wrongQuery           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong type param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##wrongType            |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

   @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/Find.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong artifact param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##wrongGuid            |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by artifact param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

 @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong project param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##wrongProjectArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by project param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | project      | ##projectArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong owner param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##wrongOwner           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by owner param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | owner        | ##ownerArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 200
    And Check JSON schema "artifact/Findproject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong creator param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##wrongCreator         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by creator param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | creator      | ##creatorArtifact      |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong organization param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##wrongOrganization    |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by organization param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | organization | ##organizationArtifact |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong query param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##wrongQuery           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by query param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 200
    And Check JSON schema "artifact/FindProject.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by wrong type param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##wrongType            |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindArtifact
  Scenario: Check the response of Find artifact by type param, and the visibility is analyst with the user not in the same organization, the response retrieve code 403 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Find artifacts with the values
      | key          | value                  |
      | type         | ##typeArtifact         |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"
