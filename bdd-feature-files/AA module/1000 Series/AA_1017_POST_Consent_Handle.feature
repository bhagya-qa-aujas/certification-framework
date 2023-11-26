Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request after user rejects consent, response with consent status REJECTED
  is received.

  Scenario: 1017_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings,send a valid consent request for linked Account, send consent
  handle request to receive PENDING status, ask the user to reject the consent & confirm
  and then send a valid consent handle request and Verify that the success response is
  received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'REJECTED'

  Scenario: 1017_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings,send a valid consent request for non linked FIType, send consent
  handle request to receive PENDING status, ask the user to link a account and reject
  the consent & confirm and then send a valid consent handle request and Verify that
  the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'REJECTED'

  Scenario: 1017_3 1017_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings,Send a valid consent request for non linked FIType, send consent handle request
  to receive PENDING status, ask the user to reject the consent & confirm and then send
  a valid consent handle request and Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'REJECTED'
