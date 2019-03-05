Feature: See a project or projects using search criteria

  @GetAlerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform,
  with wrong credentials the response retrieve error message and code error and check with Json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  #reporting in jira
  @GetAlerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform is a 200
    Given a valid user and key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 200

  #reporting in jira
  @GetAlerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform is a 200
    Given a valid user and key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 200
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send project, the response retrieve all alerts related with the project searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
    Then the api should response with code 200
    And the number of alerts should be greater than 1

  @GetAlerts
  Scenario: Check when i send project, the response retrieve all alerts related with the project searched
    Given a valid user not belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
    Then the api should response with code 403

  @GetAlerts
  Scenario: Check when i send invalid format value project, tthe response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value       |
      | project | ##wrongGuid |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetAlerts
  Scenario: Check when i send a not exist value project, the response retrieve error message and code 400 error and
  check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value         |
      | project | ##noExistGuid |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetAlerts
  Scenario: Check when i send an artifact, the response retrieve all the information related with the artifact searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value               |
      | artifact | %%artifactWithAlert |
    Then the api should response with code 200

  @GetAlerts
  Scenario: Check when i send artifact, the response retrieve all the information related with the artifact searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value               |
      | artifact | %%artifactWithAlert |
    Then the api should response with code 200
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send artifact, the response retrieve all the information related with the artifact searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value               |
      | artifact | %%artifactWithAlert |
    Then the api should response with code 200
    And Response includes the following key "%%artifactWithAlert"
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send a not exist value artifact, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value              |
      | artifact | %%notExistArtifact |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetAlerts
  Scenario: Check when i send invalid format artifact, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value           |
      | artifact | %%wrongArtifact |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetAlerts
  Scenario: Check when i send an start date, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
      | start   | %%start            |
    Then the api should response with code 200
    And the number of alerts should be greater than 1
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send wrong value start date, the response retrieve all the information related with the project and totalRecords is 0 and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
      | start   | %%wrongStart       |
    Then the api should response with code 200
    And the number of alerts should be equal to 0
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send invalid format start date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                 |
      | project | %%projectWithAlert    |
      | start   | %%invalidFormatStart  |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetAlerts
  Scenario: Check when i send an end date, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
      | end     | %%end              |
    Then the api should response with code 200
    And the number of alerts should be greater than 1
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send wrong value end date, the response retrieve all the information related with the project and totalRecords is 0 and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
      | end     | %%wrongEnd         |
    Then the api should response with code 200
    And the number of alerts should be equal to 0
    And Check JSON schema "monitor/GetAlert.json"

  @GetAlerts
  Scenario: Check when i send invalid format end date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value              |
      | project | %%projectWithAlert |
      | end     | %%invalidFormatEnd |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"






