Feature: Verify that on sending FI Fetch request with invalid api key, error response is received.

  Scenario: 3025_1 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but without
  aa_api_key header and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_2 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but with empty
  string in aa_api_key header and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_3 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but with 0 in
  aa_api_key header and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_4 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 1 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_5 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 1 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_6 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 2 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_7 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 2 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_8 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by removing
  last character from valid aa_api_key component 3 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed

  Scenario: 3025_9 Use the pre-linked user details from settings, set Consent/notification response in mock
  server, send a valid consent post request as regular mock AA.Set Fi/notification response on regular mock
  AA. send a FI request as regular mock AA, wait for FI ready notification and then send FI fetch request
  with below variation of api key. Send Account FI Fetch request with valid jws signature but by adding
  extra character at the end in valid aa_api_key component 3 and Verify that HTTP 401 is displayed in response.
    Given Calling the "POST /FI/fetch" Flow API
    When  POST action is performed
    Then  Verify that the Response code 401 is displayed
