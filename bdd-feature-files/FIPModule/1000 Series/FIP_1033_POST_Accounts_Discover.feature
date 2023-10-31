Feature: On Calling POST Account discovery API request as alternate AA with customer id
  of regular AA, error response is received.

  Scenario: 1033_1 Use a single account user with first supported FIType and send one
  valid account discover request as alternate AA with customer id of regular AA and
  Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Reponse code should be HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Error code should be InvalidRequest
    And   Ver should  be supported version
    And   Txnid should be same as the txnid from request
