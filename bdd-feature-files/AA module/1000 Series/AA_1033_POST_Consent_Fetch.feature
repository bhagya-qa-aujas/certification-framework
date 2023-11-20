Feature: On calling POST Consent Fetch Flow API, Verify that on sending consent
  fetch request for a consent that is associated to a deregistered user, consent with
  REVOKED status is received.

  Scenario: 1033_1 On calling POST Consent Fetch Flow API, generate a random customer id,
  ask the user to register the generated customer id to AA, link 1 account and confirm then
  send a valid consent request for that FIType, set the Post consent response on mock server,
  ask the user to approve the consent & confirm, send a consent handle request to receive
  APPROVED status,set the consent/notification response on FIP anf FIU mock server, ask the user to
  deregister the customer id & confirm and then send a consent fetch request and then Verify
  that error response is received.
    Given Calling the "POST /Consent/fetch" request API
    When  POST action is performed
    Then  Verify that the response code 400 is received
    And   Verify that the Error code is InvalidConsentId
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the version is supported version
