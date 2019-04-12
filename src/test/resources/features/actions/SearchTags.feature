Feature: As a user of riskIQ platform I want to Search Tags

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users with wrong credentials want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    When users in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | @@randomTags2          |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"


  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility of project is public with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility is public with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
      | tags         | @@randomTags2          |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When user not in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by wrong query param, and the visibility of project is private with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility is private with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | private                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When user not in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility of project is analyst with the user of the same organization, and the user created the project, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users in the same organization, which created the project want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "action/addTags.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility of project is analyst with the user of the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When users in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"

  @SearchTagsArtifact
  Scenario: Check the response of Search Tags by query param, and the visibility is analyst with the user not in the same organization, the response retrieve code 200 and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | analyst                |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | @@query                |
    And Added Tags with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | tags         | @@randomTags2          |
    When user not in the same organization want Search Tags with the values
      | key          | value                  |
      | query        | ##randomTags           |
    Then the api should response with code 200
    #And Check JSON schema "project/ErrorMessage.json"


 