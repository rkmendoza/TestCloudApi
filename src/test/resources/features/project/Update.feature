Feature: As a user of riskIQ platform I want to update a project or projects

  @Update1
  Scenario: Check the response of update project by GUID with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a invalid user and invalid key from riskIQ platform
    When users want to update the project with the values
      | key          | value                  |
      | project      | ##guid                 |
      | name         | @@namerandom           |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"


  @Update1
  Scenario: Check the response of update project by wrong GUID the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want to update the project with the values
      | key          | value                  |
      | project      | ##wrongGuid            |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @Update1
  Scenario: Check the response of update project by an not exist GUID the response retrieve error message and code 404 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want to update the project with the values
      | key          | value                  |
      | project      | ##noExistGuid          |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"


  @Update1
  Scenario: Check the response of update project by an not exist Visibility the response retrieve error message and code 400 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    When users in the same organization want to update the project with the values
      | key          | value                  |
      | project      | ##wrongVisibility      |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"


  @Update
  Scenario: Check the response of update project by GUID with user of the same organization, and the visibility is public, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | false                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    #And Check JSON schema "project/Update.json"

  @Update
  Scenario: Check the response of update project by GUID with user of the same organization, and the visibility is private, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | description | @@description          |
      | featured    | true                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    #And Check JSON schema "project/Update.json"

  @Update1
  Scenario: Check the response of update project by GUID with user of the same organization, and the visibility is analyst, the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | false                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 400
    #And Check JSON schema "project/Update.json"

  @Update
  Scenario: Check the response of update project by GUID with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve all the information related with the project updated and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When Users of the same organization that created the project want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | true                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 200
    #And Check JSON schema "project/Update.json"


  @Update
  Scenario: Check the response of update project by GUID with user not in the same organization, and the visibility is public, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users not in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | true                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    #And Check JSON schema "project/Update.json"

  @Update
  Scenario: Check the response of update project by GUID with user not in the same organization, and the visibility is private, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users not in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | description | @@description          |
      | featured    | false                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    #And Check JSON schema "project/Update.json"

  @Update
  Scenario: Check the response of update project by GUID with user not in the same organization, and the visibility is analyst, the response retrieve error message and code 403 error and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
      | description | @@description          |
      | featured    | true                   |
      | tags        | @@randomTags2          |
    When users not in the same organization want to update the project with the values
      | key         | value                  |
      | project     | ##guid                 |
      | name        | @@namerandom           |
      | visibility  | public                 |
      | description | @@description          |
      | featured    | false                  |
      | tags        | @@randomTags3          |
    Then the api should response with code 403
    #And Check JSON schema "project/Update.json"




