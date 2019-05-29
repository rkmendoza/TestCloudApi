Feature: As a user of riskIQ platform I want to Set Artifact Tags

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And a invalid user and invalid key from riskIQ platform
    When users with wrong credentials want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    When users in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | %%artifactWithAlert    |
      | tags         | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility is public with the user not in the same organization, the response retrieve code 403 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags by wrong query param, and the visibility of project is private with the user of the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | %%wrongArtifact        |
      | tags         | @@randomTags2          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility is private with the user not in the same organization, the response retrieve code 403 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization, which created the project want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When users in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "tagsArtifact/setArtifactTags.json"

  @SetArtifactTags
  Scenario: Check the response of Set Artifact Tags, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    When user not in the same organization want Set Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "tagsArtifact/setArtifactTags.json"


 