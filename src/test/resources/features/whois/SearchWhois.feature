Feature: As a user of riskIQ platform I want to Get SearchWhois

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | %%querySearchWhois     |
    When users with wrong credentials want Get Search Whois with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
      | field        | email                  |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"


  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When users in the same organization, which created the project want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: email and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | email                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: domain and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | domain                 |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: name and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | name                   |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: organization and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | organization           |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: address and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | address                |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: phone and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | phone                  |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"

  @GetSearchWhois
  Scenario: Check the response of Get Search Whois with parameter field: nameserver and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySearchWhois     |
    When user not in the same organization want Get Search Whois with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
      | field       | nameserver             |
    Then the api should response with code 200
    And Check JSON schema "whois/getSearchWhois.json"


