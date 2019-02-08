Feature: As a user of riskIQ platform I want to Delete artifact

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to Delete artifact with the values
      | key          | value                  |
      | artifact     | ##guid                 |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Delete artifact with the values
      | key          | value                  |
      | artifact     | ##wrongGuid            |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Delete artifact with the values
      | key          | value                  |
      | artifact     | ##noExistGuid          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact by an integer value in the tags field the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want Delete artifact with the values
      | key          | value                  |
      | artifact     | ##guid                 |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user of the same organization, and the visibility is public, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 200
    And Check JSON schema "project/artifact.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user of the same organization, and the visibility is private, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 200
    And Check JSON schema "project/artifact.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user of the same organization, and the visibility is analyst, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When Users of the same organization that created the project want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 200
    And Check JSON schema "project/artifact.json"


  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    When users not in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    When users not in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @DeleteArtifact
  Scenario: Check the response of Delete artifact with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    When users not in the same organization want Delete artifact with the values
      | key         | value                  |
      | artifact    | ##guid                 |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"



