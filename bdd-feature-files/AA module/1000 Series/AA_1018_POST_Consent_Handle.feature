Feature: On calling POST Consent Handle request API,Verify that on sending consent
  handle request for consent that is expired before approval or rejection, response
  with consent status EXPIRED is received.

  Scenario: 1018_1 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings and send a consent request for linked FIType which valid only
  for 5 min, send consent handle request to receive PENDING status, wait for 5 min and
  then send a valid consent handle request and then Verify that the success response is
  received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'EXPIRED'

  Scenario: 1018_2 On calling POST Consent Handle request API,Use the pre-linked user
  details from settings and Send a consent request for non linked FIType which is valid
  only for 5 min, send consent handle request to receive PENDING status, wait for 5 min
  and then send a valid consent handle request and then Verify that the success response
  is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the ConsentStatus.status is 'EXPIRED'
