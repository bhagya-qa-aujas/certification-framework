Feature: On calling POST FI fetch Request API, verify that on sending a valid FI fetch request,
  success response is received.

  Scenario: 2025_1 On calling POST FI fetch Request API, Use the pre-generated consent
  details from settings, set a valid FI response in mock FIP, send a valid FI request,
  set the FI fetch response to the mock FIP, set FI notification response in FIU mock server,
  send FI ready notification, wait to receive FI ready notification in mock FIU and finally
  send the FI fetch request and Verify that the HTTP status code 200 is received.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And  Verify that one object of FI array exactly matches the FI object sent in the response from mock FIP
