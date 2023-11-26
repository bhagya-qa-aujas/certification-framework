Feature: On calling POST Consent Flow API, verify that on sending the consent request
  with invalid DataLife, error response is received.

  Scenario: 1012_1 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Set the unit as DAY and value as '0'(Zero) on DataLife object with consentMode as Store and
  Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1012_2 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Set the unit as MONTH and value as '0'(Zero) on DataLife object with consentMode as Store
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1012_3 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Set the unit as YEAR and value as '0'(Zero) on DataLife object with consentMode as Store
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1012_4 On calling POST Consent Flow API, use the pre-linked user details from settings.
  Set the unit as INF and value as 1 (non-zero) on DataLife object with consentMode as Store
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
