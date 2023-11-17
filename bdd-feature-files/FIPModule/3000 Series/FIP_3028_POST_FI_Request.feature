Feature: On Calling FI request with JWS signature of regular AA and aa api key of
  alternate AA, error response is received.

  Scenario: 3028_1 Use the pre-linked user details from settings, set Consent/notification
  response in mock server, send a valid consent post request as regular mock AA.Set
  Fi/notification response on regular mock AA. send a FI request with aa api key of
  alternate AA and verify Response code should be HTTP 400.
    Given  Calling the "POST /FI/Request" Flow API
    When   POST action is performed
    Then   Verify that the Response code 400 is displayed
    And    Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And    Error code should be InvalidRequest
    And    Ver should  be supported version
    And    Txnid should be same as the txnid from request
