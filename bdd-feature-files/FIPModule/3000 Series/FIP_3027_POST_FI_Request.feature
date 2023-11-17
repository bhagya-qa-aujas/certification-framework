Feature: On Calling FI request with invalid api key, error response is received.

  Scenario: 3027_1 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with below variation of api key,
  Send request as regular AA without the aa_api_key header and verify Response code should be
  HTTP 401.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 401 is displayed

  Scenario: 3027_2 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with below variation of api key,
  Send request as regular AA with aa_api_key as empty string and verify Response code should be
  HTTP 401.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 401 is displayed

  Scenario: 3027_3 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with below variation of api key,
  Send request as regular AA with aa_api_key as 0 and verify Response code should be
  HTTP 401.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 401 is displayed

  Scenario: 3027_4 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with below variation of api key,
  Send the request as regular AA with one char removed from valid Api key and verify Response code should be
  HTTP 401.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 401 is displayed

  Scenario: 3027_5 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with below variation of api key,
  Send the request as regular AA with one char add for valid Api key and verify Response code should be
  HTTP 401.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 401 is displayed
