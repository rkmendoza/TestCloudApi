Feature: As a user of riskIQ platform I want to Get Compromised Status

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When users with wrong credentials want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with wrong status param, and the visibility of project is public with the user of the same organization, the response retrieve code 400 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | %%WrongStatus          |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 400
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with status true param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with status false param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

 @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
   When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |    
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"


  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | public                 |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility is private with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | private                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
     Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Get Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When users in the same organization, which created the project want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |    
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with true param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | true                   |
    When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    When users in the same organization, which created the project want Get Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When users in the same organization, which created the project want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |      
    Then the api should response with code 200
    And Check JSON schema "action/getCompromisedStatus.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When users in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @GetCompromisedStatus
  Scenario: Check the response of Get Compromised Status with false param, and the visibility is analyst with the user not in the same organization, the response retrieve code 404 and check with json schema
    Given a created project with values
      | key                | value                  |
      | name               | @@namerandom           |
      | visibility         | analyst                |
    And a created artifact with values
      | key                | value                  |
      | project            | ##guid                 |
      | query              | @@query                |
    And created Compromised Status with the values
      | key                | value                  |
      | query              | @@query                |
      | status             | false                  |
    When user not in the same organization want Get Compromised Status with the values
      | key                | value                  |
      | query              | ##queryArtifact        |     
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"
  