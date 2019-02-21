Feature: As a user of riskIQ platform I want to Get Account

  @GetAccount
  Scenario: Check the response to get account with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get account
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetAccount1
  Scenario: Check the response to get account the response retrieve code 200 and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get account
    Then the api should response with code 200
    And Check JSON schema "account/GetAccount.json"