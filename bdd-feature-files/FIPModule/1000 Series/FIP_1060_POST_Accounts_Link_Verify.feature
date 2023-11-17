Feature: On Calling Account link verify request with invalid JWS API signature, error response is received.

  Scenario: 1060_1 Use a single user account with first supported FIType, send an account link request and then
  Send Account link verify request with valid details but Use the valid JWS signature but add one char to the
  end then Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1060_2 Use a single user account with first supported FIType, send an account link request and then
  Send Account link verify request with valid details but Use the valid JWS signature but remove one char
  from the end then Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1060_3 Use a single user account with first supported FIType, send an account link request and then
  Send Account link verify request with valid details by Generating the JWS signature using a different key
  that is not used for anything else then Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1060_4 Use a single user account with first supported FIType, send an account link request and then
  Send Account link verify request with valid details by using the valid JWS signature, but do a small change
  in the request body data then Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
