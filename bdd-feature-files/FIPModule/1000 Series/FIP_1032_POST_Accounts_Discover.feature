Feature: On Calling POST Account discovery API with invalid JWS API signature, error response is received.

  Scenario: 1032_1 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature but add one char
  to the end. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1032_2 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature but remove the
  last char. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1032_3 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by generating the JWS signature using a different
  key that is not used for anything else. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version

  Scenario: 1032_4 Use a single account user with first supported FIType and send one valid account discover
  request. Send Account discover request with valid details by using the valid JWS signature, but do a small
  change in the request body data. Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is SignatureDoesNotMatch
    And   Verify that the version is supported version
