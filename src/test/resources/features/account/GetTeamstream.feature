Feature: As a user of riskIQ platform I want to Get Teamstream

  @GetTeamstream
  Scenario: Check the response to get teamstream with wrong credentials the response retrieve error message and code 401 error and check with json schema
    Given a invalid user and invalid key from riskIQ platform
    When users want to get teamstream
    Then the api should response with code 401
    #And Check JSON schema "project/ErrorMessage.json"

  @GetTeamstream
  Scenario: Check the response to get teamstream the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"


  @GetTeamstream
  Scenario: Check the response to get teamstream by wrong source parameter the response retrieve error message and code 400 error and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | source      | %%wrongSource          |
    Then the api should response with code 400
    #And Check JSON schema "project/ErrorMessage.json"

  @GetTeamstream
  Scenario: Check the response to get teamstream by api parameter the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | source      | %%api                  |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"


  @GetTeamstream
  Scenario: Check the response to get teamstream by ui parameter the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | source      | %%web                  |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"

  @GetTeamstream
  Scenario: Check the response to get teamstream by dt parameter the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | dt          | %%dt                   |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"

  @GetTeamstream
  Scenario: Check the response to get teamstream by type parameter the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | type        | %%type                 |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"

  @GetTeamstream
  Scenario: Check the response to get teamstream by focus parameter the response retrieve all the information related with the teamstream and check with json schema
    Given a valid user and key from riskIQ platform
    When users want to get teamstream with the values
      | key         | value                  |
      | focus       | %%focus                |
    Then the api should response with code 200
    #And Check JSON schema "account/GetHistory.json"
  


