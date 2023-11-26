Feature: On calling GET Heart beat request API,Verify that on sending a valid heartbeat
  request as an FIP, success response is received.

  Scenario: 4001_1 On calling GET Heart beat request API,sending a valid heartbeat
  request as an FIP, success response is received.
    Given Calling Send "Get Heart beat" Flow API
    When  GET action is performed
    Then  Verify that the response code displayed is HTTP 200
    And   Verify that the field of Version contains the version of NBFC-AA Ecosystem
  API that currently supported
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15"
  or "-15" minutes from current time stamp
    And   Verify that Status is UP
