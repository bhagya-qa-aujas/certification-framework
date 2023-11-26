Feature: On calling POST FI Request API, verify that on sending FI request when consent
  is revoked,error response is received.

  Scenario: 2013_1 On calling the POST FI Request API, Use the pre-linked user details
  from settings, send a valid consent request, ask the user to approve the consent & confirm,
  send a valid consent handle to receive APPROVED status, ask the user to revoke the consent
  & confirm, send a consent fetch request to receive status as REVOKED and then send a FI
  request and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidConsentStatus
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
