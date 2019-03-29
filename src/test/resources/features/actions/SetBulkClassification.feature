Feature: As a user of riskIQ platform I want to Set Bulk Classification Status

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users with wrong credentials want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with wrong classification param, and the visibility of project is public with the user of the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | WrongClassification    |
    Then the api should response with code 400
    And Check JSON schema "action/ErrorMessage.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with classification malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with classification suspicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with classification non_malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"


  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users of the same organization, which created the project want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | malicious              |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users of the same organization, which created the project want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "project/ErrorMessage.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with suspicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | suspicious             |
    Then the api should response with code 200
    And Check JSON schema "project/ErrorMessage.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users of the same organization, which created the project want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with non_malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | non_malicious          |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users of the same organization, which created the project want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"

  @SetBulkClassificationStatus
  Scenario: Check the response of Set Bulk Classification Status with unknown param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users not in the same organization want Set Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | classification     | unknown                |
    Then the api should response with code 200
    And Check JSON schema "action/setBulkClassificationStatus.json"