Feature: On calling POST Consent Handle request API, Verify that on sending
  a consent handle request with basic invalid values for each required field,
  error response is received.

  Scenario: 1050_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one required field set to null and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request


  Scenario: 1050_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one required field set to empty string and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request


  Scenario: 1050_3 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one enum field set to non enum value (Add a extra char at the end of last
  enum & remove the last char at the end of first enum) and Verify that the error
  response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request


  Scenario: 1050_4 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one array field set to empty array and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request


  Scenario: 1050_5 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one object field set to empty object  and Verify that the error response
  is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1050_6 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings. Set Post consent response on Mock FIP. Send a valid consent
  request for linked Account. Send consent handle request with following variations,
  Each time one integer field set to fraction value and Verify that the error response
  is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is followed according to fields
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
