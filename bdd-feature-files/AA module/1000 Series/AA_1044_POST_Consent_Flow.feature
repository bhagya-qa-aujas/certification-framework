Feature: On calling POST Consent Flow API, Verify that on sending consent request with
  invalid Client API key, error response is received.

  Scenario: 1044_1 On calling POST Consent Flow API,Use the pre-linked user details from
  settings and send one valid consent post request with following variations on the client
  api key header and Send request as regular FIU without the client_api_key header and
  Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1044_2 On calling POST Consent Flow API,Use the pre-linked user details from
  settings and send one valid consent post request with following variations on the client
  api key header and Send request as regular FIU with client_api_key as empty string and
  Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1044_3 On calling POST Consent Flow API,Use the pre-linked user details from
  settings and send one valid consent post request with following variations on the client
  api key header and Send request as regular FIU with client_api_key as 0 and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1044_4 On calling POST Consent Flow API,Use the pre-linked user details from
  settings and send one valid consent post request with following variations on the client
  api key header and Send the request as regular FIU with one char removed for that component
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1044_5 On calling POST Consent Flow API,Use the pre-linked user details from
  settings and send one valid consent post request with following variations on the client
  api key header and Send the request as regular FIU with one char add for that component
  and Verify that the error response is received.
    Given Calling the "POST /Consent" Flow API
    When  POST action is performed
    Then  Verify that the reponse code 401 is received
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
