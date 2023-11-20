Feature: On Calling POST Account discovery API  with invalid format Customer id and check if it is responding
  with a bad request

  Scenario: 1026_1 Send Account discovery request with invalid format of Customer Id in Customer objects id
  field. Verify that HTTP 400 is displayed in response.
    Given  Calling the POST Account Discovery Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.
    And Verify that the txnid id is same as the txnid from request.