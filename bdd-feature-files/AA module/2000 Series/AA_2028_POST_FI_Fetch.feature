Feature: On calling POST FI fetch Request API, verify that on sending FI fetch request
  before receiving the FI ready notification, the error response is received.

  Scenario: 2028_1 On calling POST FI fetch Request API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP, send a valid FI request and then send the
  FI fetch request and Verify that the error response is received.
    Given Calling the "POST /FI/fetch" Flow Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 404
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is NoDataFound
    And   Verify that the version is supported version
