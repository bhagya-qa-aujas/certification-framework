Feature: On calling POST FI Notification API, verify that on sending FI notification
  request as alternate FIP with FI details of regular FIP, the error response is received.

  Scenario: 3018_1 On calling POST FI Notification API, use the pre-generated consent details from settings. Set a valid
  FI response in mock FIP and send a valid FI request to AA. Finally send a FI notification request and use the valid
  FI notification request generated for regular FIP, and send the request as alternate FIP
  and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3018_2 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA. Finally
  send a FI notification request and use the valid FI notification request generated for regular
  FIP, and change the Notifier.id to alternate FIP id. Send the request as alternate FIP and Verify
  that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3018_3 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA. Finally
  send a FI notification request and use the valid FI notification request generated for regular
  FIP, and change the FIStatusNotification.FIStatusResponse.fipID to alternate FIP id and send
  the request as alternate FIP and Verify that the error response is received.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3018_4 On calling POST FI Notification API, use the pre-generated consent details
  from settings. Set a valid FI response in mock FIP and send a valid FI request to AA.
  Finally send a FI notification request. Use the valid FI notification request generated for
  regular FIP, change the Notifier.id and FIStatusNotification.FIStatusResponse.fipID to
  alternate FIP id. Send the request as alternate FIP and expect 400 in response.
    Given Calling the "POST /FI/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
