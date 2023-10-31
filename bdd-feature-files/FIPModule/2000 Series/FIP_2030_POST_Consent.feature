Feature: On Calling POST Consent request with invalid api key, error response is received.

  Scenario: 2030_1 Use the pre-linked user details from settings and send a valid consent with
  following variations on api key header, Send request as regular AA without the aa_api_key
  header and verify response code should be HTTP 401.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 2030_2 Use the pre-linked user details from settings and send a valid consent with
  following variations on api key header, Send request as regular AA with aa_api_key as empty
  string and verify response code should be HTTP 401.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 2030_3 Use the pre-linked user details from settings and send a valid consent with
  following variations on api key header, Send request as regular AA with aa_api_key as 0 and
  verify response code should be HTTP 401.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 2030_4 Use the pre-linked user details from settings and send a valid consent with
  following variations on api key header, Send the request as regular AA with one char removed
  from valid Api key and verify response code should be HTTP 401.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 2030_5 Use the pre-linked user details from settings and send a valid consent with
  following variations on api key header, Send the request as regular AA with one char add for
  valid Api key and verify response code should be HTTP 401.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed
