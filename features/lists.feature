Feature: Lists

  Lists belong to Events. Lists have Items.

  Background:
    Given there is an Event called "Happy Birthday"
    And I am logged in as a user

  Scenario: I create a List for an Event
    When I am on the event page
    Then I can create a List for this Event

  Scenario: I can create a todo item for the List
    When I am on the Event page
    And I see that a List has been created
    Then I can add a todo Item