Feature: As a user of riskIQ platform I want to see a project or projects using search criteria

  #verificado ok
  @Alerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform,
  with wrong credentials the response retrieve error message and code error and check with Json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"


  #reporting in jira
  @Alerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform is a 200
    Given a valid user and key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 200

  #reporting in jira
  @Alerts
  Scenario: Check the response of find all alerts when that exist in riskIQ platform is a 200
    Given a valid user and key from riskIQ platform
    When users want to get information of alerts without params
    Then the api should response with code 200
    And Check JSON schema "monitor/GetAlert.json"

  @Alerts1
  Scenario: Check when i send project, the response retrieve all alerts related with the project searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
    Then the api should response with code 200
    And the number of alerts should be greater than 1

  @Alerts
  Scenario: Check when i send project, the response retrieve all alerts related with the project searched
    Given a valid user not belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
    Then the api should response with code 403

  @Alerts
  Scenario: Check when i send project, the response retrieve all the information related with the project searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
    Then the api should response with code 200
    And Response includes the following
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
    #  | query   | @@ValueQuery |
   # And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send invalid format value project, tthe response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value       |
      | project | ##wrongGuid |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @Alerts
  Scenario: Check when i send a not exist value project, the response retrieve error message and code 400 error and
  check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value         |
      | project | ##noExistGuid |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  #replace artifact
  @Alerts
  Scenario: Check when i send an artifact, the response retrieve all the information related with the artifact searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value                                |
      | artifact | 75179a95-22b2-7681-90b4-3ae44703e0df |
    Then the api should response with code 200

      #replace artifact
  @Alerts
  Scenario: Check when i send artifact, the response retrieve all the information related with the artifact searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value                                |
      | artifact | 75179a95-22b2-7681-90b4-3ae44703e0df |
    Then the api should response with code 200
    #And Check JSON schema "project/GetAlert.json"

  #replace artifact
  @Alerts
  Scenario: Check when i send a not exist value artifact, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value                                  |
      | artifact | 75179a95-22b2-7681-90b4-3ae44703e0dfdd |
    Then the api should response with code 404
    And Check JSON schema "project/ErrorMessage.json"

  @Alerts
  Scenario: Check when i send invalid format artifact, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key      | value                                  |
      | artifact | 75179a95-22b2-7681-90b4-3ae44703e0dfdd |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @Alerts
  Scenario: Check when i send an start date, the response retrieve all the information related with the artifact searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | start   | 2017-04-01 00:00:00                  |
    Then the api should response with code 200
    And Response includes the following
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | start   | 2017-04-01 00:00:00                  |

  @Alerts
  Scenario: Check when i send an start date, the response retrieve all the information related with the artifact searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | start   | 2017-04-01 00:00:00                  |
    Then the api should response with code 200
   # And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send wrong value start date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | start   | 2019-04-01 00:00:00                  |
    Then the api should response with code 400
   # And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send invalid format start date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | start   | 2017-04-0                            |
    Then the api should response with code 400
   # And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send an end date, the response retrieve all the information related with the artifact searched
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end     | 2017-04-01 00:00:00                  |
    Then the api should response with code 200
    And Response includes the following
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end     | 2017-04-01 00:00:00                  |

  @Alerts
  Scenario: Check when i send an end date, the response retrieve all the information related with the artifact searched and check with json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end     | 2017-04-01 00:00:00                  |
    Then the api should response with code 200
    And Response includes the following
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end     | 2017-04-01 00:00:00                  |
  #  And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send wrong value end date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end   | 2019-04-01 00:00:00                  |
    Then the api should response with code 400
   # And Check JSON schema "project/GetAlert.json"

  @Alerts
  Scenario: Check when i send invalid format end date, the response retrieve error message and code error and check with Json schema
    Given a valid user belonging to the organization of the project to be searched
    When users want to get information of alerts with the values
      | key     | value                                |
      | project | 75179a95-22b2-7681-90b4-3ae44703e0df |
      | end   | 2017-04-0                            |
    Then the api should response with code 400
   # And Check JSON schema "project/GetAlert.json"






