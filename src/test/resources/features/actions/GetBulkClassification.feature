Feature: As a user of riskIQ platform I want to Get Bulk Classification Status

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When users with wrong credentials want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with wrong classification param, and the visibility of project is public with the user of the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | WrongClassification    |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 400
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with classification malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with classification suspicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with classification non-malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"


  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When users in the same organization, which created the project want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | malicious              |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization, which created the project want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with suspicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | suspicious             |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When users in the same organization, which created the project want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with non-malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | non-malicious          |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When users in the same organization, which created the project want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When users in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @GetBulkClassificationStatus
  Scenario: Check the response of Get Bulk Classification Status with unknown param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifacts with the values and the amount of 2
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
      | classification     | unknown                |
    When user not in the same organization want Get Bulk Classification Status with the values and the amount of 2
      | key                | value                  |
      | query              | ##BulkQueryArtifact    |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"