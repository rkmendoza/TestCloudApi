Feature: As a user of riskIQ platform I want to find a project or projects using search criteria

  @FindProject
  Scenario: Check the response of find all projects, with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get information of the all project
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check the response of find project by GUID  with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"


  @FindProject
  Scenario: Check when i send an specific Owner project with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | owner        | ##owner                |
    Then the api should response with code 401

  @FindProject
  Scenario: Check when i send an specific Creator project with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | creator      | ##creator              |
    Then the api should response with code 401

  @FindProject
  Scenario: Check when i send an specific organization with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | organization | ##organization         |
    Then the api should response with code 401

  @FindProject
  Scenario: Check when i send an specific visibility with wrong credentials the response retrieve error message and code error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | visibility   | ##organization         |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check the response of find all projects when i search all project that exist in riskIQ platform is a 200
    Given a valid user and key from riskIQ platform
    When users want to get information of the all project
    Then the api should response with code 200

  @FindProject
  Scenario: Check the response of find all projects when i search all project that exist in riskIQ platform is a 200 and check
  with json schema
    Given a valid user and key from riskIQ platform
    When users want to get information of the all project
    Then the api should response with code 200
    And Check JSON schema "project/FindObject.json"

  @FindProject
  Scenario: Check the response of find project when i search a project that exist in riskIQ platform is a 200 and
  the number of projects should be equal to 1 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
    Then the api should response with code 200
    And the number of projects should be equal to 1
   And Check JSON schema "project/Find.json"


  @FindProject
  Scenario: Check when i send an invalid GUID project, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | project      | ##wrongGuid            |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when i send an not exist GUID project, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get information on the project with the values
      | key          | value                  |
      | project      | ##noExistGuid          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when i send an specific Owner project, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | owner        | ##owner            |
    Then the api should response with code 200
    And the number of projects should be greater than 1

  @FindProject
  Scenario: Check when i send an specific Owner project, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | owner        | ##owner                |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an invalid Owner project, the response retrieve error message and code error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | owner        | ##wrongOwner           |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an specific Creator project, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | creator      | ##creator              |
    Then the api should response with code 200
    And the number of projects should be greater than 1

  @FindProject
  Scenario: Check when i send an specific Creator project, the response retrieve all the information related with the project searched and check JSON schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | creator      | ##creator              |
    Then the api should response with code 200
    And the number of projects should be greater than 1
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an invalid Creator project, the response retrieve error message and code 200 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | creator      | ##wrongCreator         |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an specific organization, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | organization | ##organization         |
    Then the api should response with code 200

  @FindProject
  Scenario: Check when i send an specific organization, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | organization | ##organization         |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an invalid organization, the response retrieve error message and code 200 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | organization | ##wrongOrganization    |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an public visibility param, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | visibility   | ##visibility           |
    Then the api should response with code 200

  @FindProject
  Scenario: Check when i send an public visibility param, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | visibility   | ##visibility           |
    Then the api should response with code 200
    And Check JSON schema "project/FindObject.json"

  @FindProject
  Scenario: Check when i send an invalid visibility, the response retrieve error message and code error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users want to get information on the project with the values
      | key          | value                  |
      | visibility   | ##wrongVisibility      |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when i send featured: true, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | featured     | true                   |
    When users want to get information on the project with the values
      | key          | value                  |
      | featured     | ##featured             |
    Then the api should response with code 200

  @FindProject
  Scenario: Check when i send featured: false, the response retrieve all the information related with the project searched
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | featured     | false                  |
    When users want to get information on the project with the values
      | key          | value                  |
      | featured     | ##featured             |
    Then the api should response with code 200

  @FindProject
  Scenario: Check when i send featured: false, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | featured     | false                  |
    When users want to get information on the project with the values
      | key          | value                  |
      | featured     | ##featured             |
    Then the api should response with code 200
    And the number of projects should be greater than 1

  @FindProject
  Scenario: Check when i send featured: true, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | featured     | true                   |
    When users want to get information on the project with the values
      | key          | value                  |
      | featured     | ##featured             |
    Then the api should response with code 200
    And the number of projects should be greater than 1

  @FindProject
  Scenario: Check when i send an private visibility param, and users in the same organization want  to get information on the project, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    When users in the same organization want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
      | visibility   | ##visibility           |
    Then the api should response with code 200
    And Check JSON schema "project/Find.json"

  @FindProject
  Scenario: Check when i send an private visibility param, and users not in the same organization want to get information on the project, the response retrieve error message and code error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    When users not in the same organization want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
      | visibility   | ##visibility           |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when I send a parameter of visibility of analysts, and the user who created the project wants to obtain information, the response retrieves all the information related to the searched project and verifies with the json scheme.
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    When The user who created the project wants to obtain information about the project with the values.
      | key          | value                  |
      | project      | ##guid                 |
      | visibility   | ##visibility           |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when i send an analyst visibility param, and users in the same organization want to get information on the project, the response retrieve error message and code error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    When users in the same organization want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
      | visibility   | ##visibility           |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @FindProject
  Scenario: Check when i send an analyst visibility param, and users not in the same organization want to get information on the project, the response retrieve error message and code error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    When users not in the same organization want to get information on the project with the values
      | key          | value                  |
      | project      | ##guid                 |
      | visibility   | ##visibility           |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"
