Feature: On calling POST Consent Notification API, Verify that on sending a valid
  consent notification request with invalid FIP API key, error response is received.

  Scenario: 3033_1 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request  with
  following variations on the FIP api key header, Send request as regular FIU without the FIP
  key header and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3033_2 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request  with
  following variations on the FIP api key header, Send request as regular FIU with FIP key as
  empty string and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3033_3 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request  with
  following variations on the FIP api key header, Send request as regular FIU with FIP key as 0
  and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3033_4 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request  with
  following variations on the FIP api key header, Send the request as regular FIP with one char
  removed for that component and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401

  Scenario: 3033_5 On calling POST Consent Notification API,Use the pre-linked user details
  from settings, set POST consent response in FIP mock server, send a valid consent request,
  ask the user to approve the consent & confirm, send a valid consent handle to receive APPROVED
  status, send a consent fetch request and finally send a consent notification request  with
  following variations on the FIP api key header, Send the request as regular FIP with one char
  add for that component" and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 401
