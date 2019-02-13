Feature: As a user of riskIQ platform I want to Create artifact

  @CreateArtifact
  Scenario: Check the response of Create artifact with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to Create artifact with the values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Create artifact with the values
      | key          | value                  |
      | project      | ##wrongGuid            |
      | query        | @@query                |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Create artifact with the values
      | key          | value                  |
      | project      | ##noExistGuid          |
      | query        | @@query                |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"
  #ver que pasa con este scenario
  @CreateArtifact
  Scenario: Check the response of Create artifact by an integer value in the tags field the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Create artifact with the values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact1
  Scenario: Check the response of Create artifact with user of the same organization, and the visibility is public, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
      | type        | component                 |
      | tags        | @@randomTags2          |
    Then the api should response with code 200
    And Check JSON schema "artifact/Create.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with user of the same organization, and the visibility is private, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 200
    And Check JSON schema "project/artifact.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with user of the same organization, and the visibility is analyst, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When Users of the same organization that created the project want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 200
    And Check JSON schema "project/artifact.json"


  @CreateArtifact
  Scenario: Check the response of Create artifact with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users not in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users not in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @CreateArtifact
  Scenario: Check the response of Create artifact with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users not in the same organization want Create artifact with the values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | @@query                |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"



