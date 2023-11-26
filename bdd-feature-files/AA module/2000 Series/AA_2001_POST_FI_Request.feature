Feature: On calling POST FI Request API, verify that sending a valid FI request,
  success response is received.

  Scenario: 2001_1 On calling the POST FI Request API, Use the pre-generated consent details
  from settings, set a valid FI response in mock FIP and send one valid FI request and Verify
  that success response is received.
    Given Calling the "POST /FI/request" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    Then  Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently
  supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the txnid id is same as the txnid from request
    And   Verify that the consentId of request and response are matching
    And   Verify that the sessionId is a valid UUID string
