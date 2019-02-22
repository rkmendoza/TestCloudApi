Feature: As a user of riskIQ platform I want to Get History

  @GetHistory
  Scenario: Check the response to get history with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get history
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetHistory
  Scenario: Check the response to get history the response retrieve all the information related with the history and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get history
    Then the api should response with code 200
    And Check JSON schema "account/GetHistory.json"

  @GetHistory
  Scenario: Check the response to get history by api parameter the response retrieve all the information related with the history and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get history with the values
      | key         | value                  |
      | source      | api                    |
    Then the api should response with code 200
    And Check JSON schema "account/GetHistory.json"

  @GetHistory
  Scenario: Check the response to get history by wrong api parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get history with the values
      | key         | value                  |
      | source      | wrongApi               |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetHistory
  Scenario: Check the response to get history by ui parameter the response retrieve all the information related with the history and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get history with the values
      | key         | value                  |
      | source      | ui                     |
    Then the api should response with code 200
    And Check JSON schema "account/GetHistory.json"

  


