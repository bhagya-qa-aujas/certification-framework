Feature: Send FI request and FI fetch request for each month data and check if
  the received FI data respects the month filter.

  Scenario: 3015_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post consent of FIDataRange for past 1 year and try the following. Send FI Fetch request for the
  validation of FI request and FI fetch request with FIDataRange for each month for last 12 months and
  validate whether the FI data contains only last 12 month data for success.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And   Verify that the Response code FI request should be HTTP 200
    And   Verify that the Response code FI fetch request should be HTTP 200
    And   Verify that the FI data should contain only the data for the requested month filter
    And   cryptoAlgo received in Fi/fetch response should be valid Algorithm

  Scenario: 3015_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post consent of FIDataRange for past 1 year and try the following. Send FI Fetch request for the
  validation of FI request and FI fetch request with FIDataRange for each month for last 6 months and
  validate whether the FI data contains only last 6 month data for success.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And   Verify that the Response code FI request should be HTTP 200
    And   Verify that the Response code FI fetch request should be HTTP 200
    And   Verify that the FI data should contain only the data for the requested month filter
    And   cryptoAlgo received in Fi/fetch response should be valid Algorithm

  Scenario: 3015_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, post consent of FIDataRange for past 1 year and try the following. Send FI Fetch request for the
  validation of FI request and FI fetch request with FIDataRange for each month for last 3 months and
  validate whether the FI data contains only last 3 month data for success.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Reponse code consent post request should be HTTP 200
    And   Verify that the Response code FI request should be HTTP 200
    And   Verify that the Response code FI fetch request should be HTTP 200
    And   Verify that the FI data should contain only the data for the requested month filter
    And   cryptoAlgo received in Fi/fetch response should be valid Algorithm
