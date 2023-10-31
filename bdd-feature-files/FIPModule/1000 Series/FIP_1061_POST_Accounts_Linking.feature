Feature:On Calling POST Account Link API with valid customer details and single
  account detail with invalid api key,error response is received.

  Scenario: 1061_1 Pick a single user account with first supported FIType and send single
  account link request with below variation of api key.Account Link API send request
  as regular AA without the aa_api_key header and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 1061_2 Pick a single user account with first supported FIType and send single
  account link request with below variation of api key.Account Link API send request
  as regular AA with aa_api_key as empty string and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 1061_3 Pick a single user account with first supported FIType and send single
  account link request with below variation of api key.Account Link API send request
  as regular AA with aa_api_key as 0 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 1061_4 Pick a single user account with first supported FIType and send single
  account link request with below variation of api key.Account Link API send request
  as regular AA with one char removed from valid Api key and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 1061_5 Pick a single user account with first supported FIType and send single
  account link request with below variation of api key.Account Link API send request
  as regular AA with one char add for valid Api key and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed
