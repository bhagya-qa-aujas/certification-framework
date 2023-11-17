Feature: On Calling POST Account discovery API  with valid customer details and a ancilliary identifier to
  check if it is returning bad request.

  Scenario: 1026_1 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_2 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType TERM_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed.
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_3 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier CRN for FIType RECURRING_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_4 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_5 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType TERM_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_6 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier Others for FIType RECURRING_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_7 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_8 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType TERM_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1026_9 Use the test user details from settings to try calling once valid user with ancillary identifier
  for all supported FITypes. Validate user with a ancilliary identifier ACCNO for FIType RECURRING_DEPOSIT and
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request
