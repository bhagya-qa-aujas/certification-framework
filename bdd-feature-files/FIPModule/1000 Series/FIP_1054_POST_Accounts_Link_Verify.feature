Feature:On Calling Account link verify request for a invalid token and valid
  RefNumber and check if it is responding with HTTP status code 400(Bad  Request).

  Scenario: 1054_1 Pick a single user account with first supported FIType and send single
  account link request and then send single account link verify request with invalid token
  (000000) and Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link/verify" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Error code should be InvalidLinkToken
    And   Ver should  be supported version
