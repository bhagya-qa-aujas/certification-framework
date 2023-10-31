Feature: On Calling POST Consent Notification request with invalid api key,
  error response is received.

  Scenario:2032_1 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with the following variations, Send request as regular AA without the
  aa_api_key header and verify Response code should be HTTP 401.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario:2032_2 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with the following variations, Send request as regular AA with
  aa_api_key as empty string and verify Response code should be HTTP 401.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario:2032_3 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with the following variations, Send request as regular AA with aa_api_key
  as 0 and verify Response code should be HTTP 401.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario:2032_4 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with the following variations, Send the request as regular AA with
  one char removed from valid Api key and verify Response code should be HTTP 401.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario:2032_5 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with the following variations, Send the request as regular AA with
  one char add for valid Api key and verify Response code should be HTTP 401.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed
