Feature: On Calling POST Account discovery API with valid customer id, incorrect strong customer identifier
  and check if the received discovered account details are empty.

  Scenario: 1023_1 Try one case for each strong identifier and check for each supported FIType combinations
  (only one FIType). Get the incorrect user detail required from a single system settings. Validate the user
  with InCorrect Strong Identifier MOBILE and Verify that HTTP 404 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 404 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is NoAccountsFound
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
