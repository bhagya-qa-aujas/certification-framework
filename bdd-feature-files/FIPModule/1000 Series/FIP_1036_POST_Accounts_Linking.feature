Feature: On Calling POST Account Link API request with valid customer and single account
  detail and check if it is responding with a valid response code and JSON structure.

  Scenario: 1036_1 Pick a single user account with first supported FIType and send single
  account link request and Verify that HTTP 200 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 200 is displayed
    And   ver field should contain the version of the NBFC-AA Ecosystem API currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the txnid id is same as the txnid from request
    And   Verify that the AuthenticatorType value should be match the settings value
    And   RefNumber should be a proper UUID
