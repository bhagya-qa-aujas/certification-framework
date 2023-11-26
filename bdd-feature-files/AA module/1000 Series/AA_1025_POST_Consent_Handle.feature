Feature: On calling POST Consent Handle request API, verify that on sending consent handle
  request as an alternate FIU for a valid handle of regular FIU, error response is received.

  Scenario: 1025_1 On calling POST Consent Handle request API, use the pre-linked user details
  from settings.Send a valid consent request and then Use the valid consentHandle but
  send the consent handle request as alternate FIU and Verify that the error response is received.
    Given Calling the "POST /Consent/handle" Flow  API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the Error code is InvalidConsentHandle
    And   Verify that the version is supported version
