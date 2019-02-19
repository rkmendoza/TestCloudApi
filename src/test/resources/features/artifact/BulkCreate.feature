Feature: As a user of riskIQ platform I want to Bulk Create artifacts

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to bulk Create artifacts with the values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want bulk Create artifacts with the values
      | key          | value                  |
      | project      | ##wrongGuid            |
      | query        | @@query                |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a list created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want bulk Create artifacts with the values
      | key          | value                  |
      | project      | ##noExistGuid          |
      | query        | @@query                |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user of the same organization, and the visibility is public, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | %%typeComponent        |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "artifacts/Create.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user of the same organization, and the visibility is private, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 200
    And Check JSON schema "artifacts/Create.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user of the same organization, and the visibility is analyst, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When Users of the same organization that created the project want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 200
    And Check JSON schema "artifacts/Create.json"


  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users not in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users not in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @BulkCreateArtifact
  Scenario: Check the response of bulk Create artifacts with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a list created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users not in the same organization want bulk Create artifacts with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"



