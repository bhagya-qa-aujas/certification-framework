Feature: On calling POST Consent Handle request API,Verify that on sending a valid
  consent handle request after user approves consent, success response with consent
  status APPROVED is received.

  Scenario: 1015_1 On calling POST Consent Handle request API, use the pre-linked user
  details from settings.Set the Post consent response on Mock FIP. Send a valid consent
  request for linked Account, send the consent handle request to receive PENDING status.
  Ask the user to approve the consent and confirm. Send a valid consent handle request
  and Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the request and response of ConsentHandle should match
    And   Verify that the ConsentStatus.id is a valid UUID string
    And   Verify that the ConsentStatus.status is 'APPROVED'

  Scenario: 1015_2 On calling POST Consent Handle request API, use the pre-linked user
  details from settings.Set the Post consent response on Mock FIP. Send a valid consent
  request for non-linked Account, send the consent handle request to receive PENDING
  status. Ask the user to link an account, approve the consent and confirm. Send a
  valid consent handle request and Verify that the success response is received.
    Given Calling the "POST /Consent/handle" Flow API
    When  POST action is performed
    Then  Verify that the response code 200 is received
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  current time stamp
    And   Verify that the request and response of ConsentHandle should match
    And   Verify that the ConsentStatus.id is a valid UUID string
    And   Verify that the ConsentStatus.status is 'APPROVED'
