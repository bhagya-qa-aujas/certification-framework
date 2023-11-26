Feature: On calling POST Consent Notification API, Verify that on sending a valid
  consent notification request with API key of alternate FIP, error response is received.

  Scenario: 3034_1 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request with
  FIP api key header of alternate FIP and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
