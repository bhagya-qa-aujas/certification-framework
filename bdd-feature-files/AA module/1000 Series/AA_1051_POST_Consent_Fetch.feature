Feature: On calling POST Consent Fetch Flow API, Verify that on sending a consent fetch
  request with basic invalid values for each required field, error response is received.

  Scenario: 1051_1 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one required field
  set to null and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1051_2 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one required field set
  to empty string and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version

  Scenario: 1051_3 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one enum field set
  to non enum value (Add a extra char at the end of last enum & remove the last char
  at the end of first enum) and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1051_4 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one array field set
  to empty array and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1051_5 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one object field set
  to empty object and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1051_6 On calling POST Consent Fetch Flow API,Use the pre-linked user
  details from settings, send one valid consent request and try the following.
  Pick one account of the pre-linked user for the requested consent from mock server,
  set the Post consent response on mock server, ask the user to approve the consent
  with that single account & confirm, send consent handle request and finally send
  the consent fetch request with following variations, Each time one integer field
  set to fraction value and Verify that the error response is received.
    Given Calling the "POST /Consent/fetch" Flow API
    When  POST action is performed
    Then  Verify that the error code is followed according to fields
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
