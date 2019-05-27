Feature: As a user of riskIQ platform I want to Remove Artifact Tags

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users with wrong credentials want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

   @RemoveArtifactTags1
  Scenario: Check the response of Remove Artifact Tags, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##tagsArtifact         |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When user not in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags by wrong param, and the visibility of project is private with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | %%wrongArtifact        |
      | tags         | ##randomTags           |
    Then the api should response with code 400
    #And Check JSON schema "project/ErrorMessage.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When user not in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users in the same organization, which created the project want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    When users in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"

  @RemoveArtifactTags
  Scenario: Check the response of Remove Artifact Tags, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | @@query               |
      | tags         | @@randomTags2          |
    When user not in the same organization want Remove Artifact Tags with the values
      | key          | value                  |
      | artifact     | ##guidArtifact         |
      | tags         | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/deleteTags.json"


 