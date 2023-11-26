Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request for consent that is expired after approval, response with consent
  status APPROVED is received.

  Scenario: 1019_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings and Set Post consent response on Mock FIP.Send a consent
  request for linked FIType which is valid only for 5 min, ask the user to approve
  the consent before expiry & confirm, send consent handle request to receive APPROVED
  status, wait for 5 min and then send a valid consent handle request and then Verify
  that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'APPROVED'

  Scenario: 1019_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings and Set Post consent response on Mock FIP.Send a consent request
  for non linked FIType which is valid only for 5 min, ask the user to link an account
  and approve the consent & confirm before expiry,send consent handle request to receive
  APPROVED status, wait for 5 min and then send a valid consent handle request and then
  Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'APPROVED'
