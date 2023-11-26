Feature: On calling POST Consent Notification API, verify that on sending a valid
  consent notification request,the success response is received.

  Scenario: 3001_1 On calling POST Consent Notification API, Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request and
  Verify that the HTTP status code 200 is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 200
