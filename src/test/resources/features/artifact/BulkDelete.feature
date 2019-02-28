Feature: As a user of riskIQ platform I want to Bulk Delete artifact

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                 |
      | name         | @@namerandom          |
      | visibility   | public                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users with wrong credentials want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with wrong GUID the response retrieve error message and code 200 and check with json schema
    Given a created project with values
      | key          | value                 |
      | name         | @@namerandom          |
      | visibility   | public                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with an not exist GUID the response retrieve error message and code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

 @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user of the same organization, and the visibility is public, the response retrieve all the information related with the project deleted and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
   And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "artifact/Delete.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user of the same organization, and the visibility is private, the response retrieve all the information related with the project deleted and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "artifact/Delete.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user of the same organization, and the visibility is analyst, the response retrieve error message and code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project deleted and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When Users of the same organization that created the project want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "artifact/Bulk Delete.json"


  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user not in the same organization, and the visibility is public, the response retrieve error message and code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user not in the same organization, and the visibility is private, the response retrieve error message and code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @BulkDeleteArtifact
  Scenario: Check the response of Bulk Delete artifact with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifacts with the values and the amount of 2
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    When users not in the same organization want Bulk Delete artifact with the values and the amount of 2
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"



