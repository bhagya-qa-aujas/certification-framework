Feature: On calling POST FI Notification API, verify that on sending FI notification request with invalid
  FIStatusResponse Accounts linkRefNumber, the error response is received.

  Scenario: 3017_1 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA.
  Finally send a FI notification request and use a random string of same length as linkRefNumber
  and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3017_2 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA.
  Finally send a FI notification request and use the valid linkRefNumber and add an extra
  character at the end and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3017_3 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA. Finally
  send a FI notification request and use the valid linkRefNumber and remove the last character
  and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
