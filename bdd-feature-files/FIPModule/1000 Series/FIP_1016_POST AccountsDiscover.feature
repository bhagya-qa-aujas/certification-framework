Feature: On Calling POST Account discovery API with valid customer id, FIType as NPS and strong customer identifier
  and check if the received discovered account details are matching

  Scenario: 1016_1 On Calling POST Account discovery with strong identifier MOBILE for a user with single account
  in NPS fitype and expect the received account details to have exactly one account of NPS type, account numbers
  to be masked properly and account details to exactly match the user NPS accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify that FIType of all objects in list should match the FIType sent in the request body
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received



  Scenario: 1016_2 On Calling POST Account discovery with strong identifier MOBILE for a user with two account
  in NPS fitype and expect the received account details to have exactly two account of NPS type, account numbers
  to be masked properly and account details to exactly match the user NPS accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify that FIType of all objects in list should match the FIType sent in the request body
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received


  Scenario: 1016_3 On Calling POST Account discovery with strong identifier MOBILE for a user with three account
  in NPS fitype and expect the received account details to have exactly three account of NPS type, account numbers
  to be masked properly and account details to exactly match the user NPS accounts
    Given Calling the POST Account Discovery Flow API.
    When  POST action is performed.
    Then Verify that Number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And  Verify that FIType of all objects in list should match the FIType sent in the request body
    And  Verify All maskedAccNumber in the list should be masked properly
    And  accRefNumber should not repeat in list
    And Verify that the HTTP status code 200 in received




