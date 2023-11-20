Feature:On calling POST Consent Flow API, verify that on sending consent request with
  incorrect version, error response is received.

  Scenario: 1004_1 On calling POST Consent Flow API, use the pre-linked user details from
  settings. Use the incorrect version number from settings and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 404 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1004_2 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Add an extra digit at the end of correct version number and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 404 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1004_3 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Remove the last character or digit at the end of correct version number and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 404 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is NoSuchVersion
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
