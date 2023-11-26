Feature: On calling POST FI Notification API, Verify that on sending a valid FI notification request
  with  API key of  alternate FIP, error response is received.

  Scenario: 3036_1 On calling POST FI Notification API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request to AA,
  set FI fetch response in Mock FIP, set FI notification in FIU mock server and finally send
  a FI notification request with api key header of alternate FIP and Verify that the
  error response is received.
    Given Calling "POST /FI/Notification" Flow  API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
