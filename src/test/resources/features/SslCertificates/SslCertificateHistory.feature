Feature: As a user of riskIQ platform I want to Get SSL Certificate History

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | %%queryIp              |
    When users with wrong credentials want Get SSL Certificate History with the values
      | key          | value                  |
      | query        | ##queryArtifact        |
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When users in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory1
  Scenario: Check the response of Get SSL Certificate History with user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When user not in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When users in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When user not in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When users in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When users in the same organization, which created the project want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"

  @GetSSLCertificateHistory
  Scenario: Check the response of Get SSL Certificate History with user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%queryIp              |
    When user not in the same organization want Get SSL Certificate History with the values
      | key         | value                  |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    And Check JSON schema "SslCertificates/getSSLCertificateHistory.json"



