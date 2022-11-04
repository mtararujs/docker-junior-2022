Feature: Messages feature
  Test the functionality for retrival of messages

  Scenario: Message retrieval by message ID
    Given I am logged in as admin
    When I retrieve message by id: "123"
    Then message content contains "Hello World"
