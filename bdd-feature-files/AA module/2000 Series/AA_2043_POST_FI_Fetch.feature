Feature: On calling POST FI fetch Request API, verify that on sending FI fetch request
  with Client API of alternate FIU,the error response is received.

  Scenario: 2043_1 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set Fi notification response in FIU mock server, send FI ready notification, wait to
  receive FI ready notification in mock FIU and finally send the FI fetch request with
  client_api_key of alternate FIU and Verify that the HTTP status code 400 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest/SignatureDoesNotMatch
    And   Verify that the version is supported version
