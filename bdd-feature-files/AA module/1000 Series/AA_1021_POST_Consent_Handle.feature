Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request for consent that is revoked by user, response with consent status
  APPROVED is received.

  Scenario: 1021_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings.Set Post consent response on Mock FIP, send a valid consent
  request, ask the user to approve & confirm,send a consent handle request to receive
  APPROVED status, ask the user to revoke the consent & confirm and finally send the
  consent handle request and then Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'APPROVED'
