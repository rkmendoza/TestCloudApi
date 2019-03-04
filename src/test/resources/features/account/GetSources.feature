Feature: As a user of riskIQ platform I want to Get Sources

  @GetSources
  Scenario: Check the response to get sources with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get teamstream
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @GetSources
  Scenario: Check the response to get sources the response retrieve all the information related with the sources and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get sources
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"


  @GetSources
  Scenario: Check the response to get sources by sources parameter the response retrieve all the information related with the sources and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get sources with the values
      | key         | value                  |
      | source      | %%source               |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"


