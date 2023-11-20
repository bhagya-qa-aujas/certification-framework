Feature: On calling POST Consent Flow API, Verify that on sending consent request
  with invalid Customer Identifier, error response is received.

  Scenario: 1009_1 On calling POST Consent Flow API, Use the pre-linked user details
  from settings and try the following on the Customer.Identifiers.value field, proper
  customer identifier with last char removed and  Verify that the error response is
  received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1009_2 On calling POST Consent Flow API, Use the pre-linked user details
  from settings and try the following on the Customer.Identifiers.value field, proper
  customer identifier with one extra char added at end and  Verify that the error
  response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1009_3 On calling POST Consent Flow API, Use the pre-linked user details
  from settings and try the following on the Customer.Identifiers.value field,
  use invalid identifier value and  Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
