Feature: On Calling Account link verify request for a valid token and RefNumber received
  by linking a single account with invalid api key, error response is received,

  Scenario: 1065_1 "Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with below variation
  of api key.Send request as regular AA without the aa_api_key header and Verify that HTTP
  401 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 401

  Scenario: 1065_2 "Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with below variation
  of api key.Send request as regular AA with aa_api_key as empty string and Verify that HTTP
  401 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 401

  Scenario: 1065_3 "Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with below variation
  of api key.Send request as regular AA with aa_api_key as 0 and Verify that HTTP
  401 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 401

  Scenario: 1065_4 "Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with below variation
  of api key.Send the request as regular AA with one char removed from valid Api key and
  Verify that HTTP 401 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 401

  Scenario: 1065_5 "Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with below variation
  of api key.Send the request as regular AA with one char add for valid Api key and
  Verify that HTTP 401 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 401
