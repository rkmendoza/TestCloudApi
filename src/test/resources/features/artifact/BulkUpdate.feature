Feature: As a user of riskIQ platform I want to Bulk Update artifact

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    And a list created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users want to Bulk Update artifact with the values
      | key          | value                  |
      | artifact     | ##guid                 |
      | monitor      | true                   |
      | tags         | @@randomTags2          |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a list created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users in the same organization want Bulk Update artifact with the values
      | key          | value                  |
      | artifact     | ##wrongGuid            |
      | monitor      | true                   |
      | tags         | @@randomTags2          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a list created artifact with the values
      | key         | value                   |
      | project     | ##guid                  |
      | query       | @@query                 |
      | type        | %%typeComponent         |
      | tags        | @@randomTags2           |
    When users in the same organization want Bulk Update artifact with the values
      | key          | value                  |
      | artifact     | ##noExistGuid          |
      | monitor      | true                   |
      | tags         | @@randomTags2          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user of the same organization, and the visibility is public, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "artifact/Update.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user of the same organization, and the visibility is private, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "artifact/Update.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the artifact updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When Users of the same organization, which created the project want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "artifact/Update.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user of the same organization, the visibility is analyst, and the user not created the project, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization, which not created the project want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"


  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @BulkUpdateArtifact
  Scenario: Check the response of Bulk Update artifact with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a list created artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Update artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
      | monitor     | true                   |
      | tags        | @@randomTags2          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"



