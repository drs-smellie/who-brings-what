Feature: Events

  Events are the home base of the app.

  Background: 
    Given there is an Event called "Happy Birthday"
    And I am logged in as a user

  Scenario: 
    When I am on an events page
    Then I can see its date and description

  Scenario:
    When I look at the task list
    Then I can see who is assigned to which tasks

  Scenario:
    When I look at the task list
    Then I see that friends who have not yet confirmed are grey
    And I see that confirmed friends are green


