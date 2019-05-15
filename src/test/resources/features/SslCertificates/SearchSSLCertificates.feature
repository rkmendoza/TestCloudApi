Feature: As a user of riskIQ platform I want to Get Search SSL Certificates

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a created project with values
      | key          | value                  |
      | name         | @@namerandom           |
      | visibility   | public                 |
    And a created artifact with values
      | key          | value                  |
      | project      | ##guid                 |
      | query        | %%querySSL             |
    When users with wrong credentials want Get Search SSL Certificates with the values
      | key          | value                  |
      | field        | issuerSurname          |
      | query        | ##queryArtifact        |
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSurname and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSurname          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationName|
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCountry and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCountry          |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationUnitName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: fingerprint and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | fingerprint            |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectOrganizationUnitName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectOrganizationUnitName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: serialNumber and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | serialNumber           |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectEmailAddress and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectEmailAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCountry and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCountry         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerGivenName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerGivenName        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectCommonName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectCommonName      |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerCommonName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerCommonName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStateOrProvinceName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerProvince and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerProvince         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStateOrProvinceName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStateOrProvinceName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: sha1 and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | sha1                   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectStreetAddress and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectStreetAddress   |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSerialNumber and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSerialNumber    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerOrganizationName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerOrganizationName |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectSurname and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectSurname         |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectLocalityName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectLocalityName    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerStreetAddress and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerStreetAddress    |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerLocalityName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerLocalityName     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectGivenName and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectGivenName       |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: subjectProvince and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | subjectProvince        |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerSerialNumber and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerSerialNumber     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"


  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user of the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user not in the same organization, and the visibility is public, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | public                 |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user of the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user not in the same organization, and the visibility is private, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | private                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user of the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user of the same organization and the user created the project, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When users in the same organization, which created the project want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"

  @GetSearchSSLCertificates
  Scenario: Check the response of Get Search SSL Certificates with parameter field: issuerEmailAddress and user not in the same organization, and the visibility is analyst, the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    And a created project with values
      | key         | value                  |
      | name        | @@namerandom           |
      | visibility  | analyst                |
    And a created artifact with values
      | key         | value                  |
      | project     | ##guid                 |
      | query       | %%querySSL             |
    When user not in the same organization want Get Search SSL Certificates with the values
      | key         | value                  |
      | field       | issuerEmailAddress     |
      | query       | ##queryArtifact        |
    Then the api should response with code 200
    #And Check JSON schema "whois/getSearchSSLCertificatesKeyword.json"





