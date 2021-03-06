Feature: As a user of riskIQ platform I want to Update artifact tags

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users with wrong credentials want to Update artifact tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | @@randomTags2          |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users in the same organization want Update artifact tags with the values
      | key          | value                  |
      | artifact     | ##wrongArtifact        |
      | tags         | @@randomTags2          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with an not exist GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users in the same organization want Update artifact tags with the values
      | key          | value                  |
      | artifact     | ##noExistGuid          |
      | tags         | @@randomTags2          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user of the same organization, and the visibility is public, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    When users in the same organization want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/updateArtifactTags.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user of the same organization, and the visibility is private, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/updateArtifactTags.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When Users of the same organization, which created the project want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "tagsArtifact/updateArtifactTags.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user of the same organization, the visibility is analyst, and the user not created the project, the response retrieve error message and code 404 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization, which not created the project want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"


  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @UpdateArtifactTags
  Scenario: Check the response of Update artifact tags with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 404 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Update artifact tags with the values
      | key         | value                  |
      | artifact    | ##guidArtifact         |
      | tags        | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"



