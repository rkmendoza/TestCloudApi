Feature: As a user of riskIQ platform I want to Set Classification Status

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And a invalid user and invalid key from riskIQ platform
    When users with wrong credentials want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with wrong classification param, and the visibility of project is public with the user of the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | WrongClassification    |
    Then the api should response with code 400
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with classification malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with classification suspicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with classification non-malicious param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"


  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
     Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | malicious              |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with suspicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | suspicious             |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"
  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with non-malicious param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | non-malicious          |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"

  @SetClassificationStatus
  Scenario: Check the response of Set Classification Status with unknown param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When user not in the same organization want Set Classification Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
      | classification     | unknown                |
    Then the api should response with code 404
    #And Check JSON schema "project/ErrorMessage.json"