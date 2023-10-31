Feature: On Calling POST Consent Notification request with JWS signature of regular
  AA and aa api key of alternate AA, error response is received.

  Scenario: 2033_1 Use the pre-linked user details from settings, set Consent/notification
  response in mock servers, send a valid consent request as regular AA and send a consent
  notification request with aa api key of alternate AA and verify response code should be HTTP 400.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
    And   Error code should be InvalidRequest
