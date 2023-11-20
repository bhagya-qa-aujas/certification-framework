Feature: On calling POST FI fetch Request API, Verify that on sending FI fetch request
  with basic invalid values for each required field, error response is received.

  Scenario: 2046_1 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  required field set to null and Verify that the HTTP status code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2046_2 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  required field set to empty string and Verify that the HTTP status code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2046_3 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  enum field set to non enum value (Add a extra char at the end of last enum &
  remove the last char at the end of first enum) and Verify that the HTTP status
  code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2046_4 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  array field set to empty array and Verify that the HTTP status code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2046_5 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  object field set to empty object and Verify that the HTTP status code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 2046_6 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock
  server, send FI ready notification, wait to receive FI ready notification in mock
  FIU and finally send the FI fetch request with following variations,each time one
  integer field set to fraction value and Verify that the HTTP status code 200
  is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then   Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
