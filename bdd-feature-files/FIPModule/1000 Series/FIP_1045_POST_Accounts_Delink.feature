Feature: On Calling Account delink request with valid details and check if it is responding with a valid
  response code and JSON structure.

  Scenario: 1045_1 On Calling Account delink request,send Account delink token request with all valid details and
  Verify that HTTP 200 status code is displayed in response.
    Given Calling the "POST /Accounts/delink" Flow API
    When  POST Action is performed
    Then  Verify that the Response code 200 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the version is supported version
    And   Verify that the txnid id of request and response should match
    And   Verify that customerAddress and linkRefNumbers should match the values sent in the request
    And   Status should be DELINKED
