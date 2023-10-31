Feature: On Calling Account link verify request as alternate AA with details of regular AA, error
  response is received.

  Scenario: 1057_1 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link verify request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user. Send Account link verify request with details of regular AA but as alternate AA and
  Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1057_2 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link verify request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user. Use the generated account link verify request for Alternate AA,but replace the RefNumber
  with ReferenceNumber of regular AA and send the request as alternate AA then Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1057_3 Pick the user with single account in first supported FIType, send a valid account link
  request as regular AA, get the received OTP from user and generate a valid account link verify request for
  regular AA. Use the same user and account details, send a valid account link request as alternate AA, get
  the received OTP from user.Use the generated account link verify request for Alternate AA,but replace the token
  with token of regular AA and send the request as alternate AA then Verify that HTTP 400 is displayed.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
