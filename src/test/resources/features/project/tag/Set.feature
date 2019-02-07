Feature: As a user of riskIQ platform I want to Set project tags

  @SetTags
  Scenario: Check the response of Set project tags with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | tags         | @@randomTags2          |
    And a invalid user and invalid key from riskIQ platform
    When users want to Set project tags with the values
      | key          | value                  |
      | project      | ##guid                 |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | tags         | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key          | value                  |
      | project      | ##wrongGuid            |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | tags         | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key          | value                  |
      | project      | ##noExistGuid          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags by an integer value in the tags field the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
      | tags         | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key          | value                  |
      | project      | ##guid                 |
      | tags         | 100                    |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with user of the same organization, and the visibility is public, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | tags        | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    And Check JSON schema "project/tags.json"

  @SetTags
  Scenario: Check the response of Set project tags with user of the same organization, and the visibility is private, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
      | tags        | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    And Check JSON schema "project/tags.json"

  @SetTags
  Scenario: Check the response of Set project tags with user of the same organization, and the visibility is analyst, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | tags        | @@randomTags2          |
    When users in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags1          |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | tags        | @@randomTags2          |
    When Users of the same organization that created the project want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    And Check JSON schema "project/tag.json"


  @SetTags
  Scenario: Check the response of Set project tags with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | tags        | @@randomTags2          |
    When users not in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
      | tags        | @@randomTags2          |
    When users not in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"

  @SetTags
  Scenario: Check the response of Set project tags with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | tags        | @@randomTags2          |
    When users not in the same organization want Set project tags with the values
      | key         | value                  |
      | project     | ##guid                 |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    And Check JSON schema "project/ErrorMessage.json"



