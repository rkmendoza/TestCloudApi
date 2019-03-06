Feature: As a user of riskIQ platform I want to Get Items with the specified classification

  @GetItems
  Scenario: Check the response to get items with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get items
    Then the api should response with code 401
    And Check JSON schema "project/ErrorMessage.json"

  @GetItems
  Scenario: Check the response to get items the response retrieve all the information related with the items and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items
    Then the api should response with code 200
    And Check JSON schema "account/GetItem.json"

  @GetItems
  Scenario: Check the response to get items by malicious parameter the response retrieve all the information related with the items and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%malicious            |
    Then the api should response with code 200
    And Check JSON schema "account/GetItem.json"

  @GetItems
  Scenario: Check the response to get items by non_malicious parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%non_malicious        |
    Then the api should response with code 200
    And Check JSON schema "project/ErrorMessage.json"

  @GetItems
  Scenario: Check the response to get items by suspicious parameter the response retrieve all the information related with the items and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%suspicious           |
    Then the api should response with code 200
    And Check JSON schema "account/GetItem.json"

  @GetItems
  Scenario: Check the response to get items by unknown parameter the response retrieve all the information related with the items and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%unknown              |
    Then the api should response with code 200
    And Check JSON schema "account/GetItem.json"

  @GetItems
  Scenario: Check the response to get items by wrong malicious parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%WrongMalicious       |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetItems
  Scenario: Check the response to get items by wrong non_malicious parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%WrongNon_malicious   |
    Then the api should response with code 400
    And Check JSON schema "project/ErrorMessage.json"

  @GetItems
  Scenario: Check the response to get items by wrong suspicious parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%WrongSuspicious      |
    Then the api should response with code 400
    And Check JSON schema "account/GetItem.json"

  @GetItems
  Scenario: Check the response to get items by wrong unknown parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get items with the values
      | key                 | value                  |
      | classification      | %%WrongUnknown         |
    Then the api should response with code 400
    And Check JSON schema "account/GetItem.json"

