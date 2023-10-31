Feature: On Calling Account link verify request for a valid token and invalid RefNumber and check if
  it is responding with HTTP status code 400 (Bad Request).

  Scenario: 1055_1 Pick a single user account with first supported FIType and send single account link request and then
  Send Account link verify request with 00000000-0000-0000-0000-000000000000 in RefNumber
  field and Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
