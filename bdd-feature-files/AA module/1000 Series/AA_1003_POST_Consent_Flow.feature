Feature:On calling POST Consent Flow API, verify that on sending the consent request with
  incorrect timestamp formats, error response is received.

  Scenario: 1003_1 On calling POST Consent Flow API, use the pre-linked user details from
  settings and then Set two or three standard timestamp formats in each timestamp field
  which is not followed in specification and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1003_2 OOn calling POST Consent Flow API, use the pre-linked user details from
  settings. Add an extra character at the end of proper timestamp and Verify that the error
  response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
