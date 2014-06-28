Feature: Users

  Users can create events, invite friends and assign tasks to friends

  Background:
    Given I have signed up
    And I am logged in

  Scenario: I can create events
    When I create a new event
    Then I can give it the name "Super fun time"
    And I can give it a date and time
    And I can give it a description "Lets have a super fun time at Sinterklaas"
    And I am redirected to the "Super fun time" page

  Scenario: I can invite users for this event
    Given there is an event called "Super fun time"
    When I am on the event page "Super fun time"
    Then I can invite "barbara@example.com"
    And she receives an invitation email

  Scenario: I can assign event tasks to users
    When I have invited friends
    Then I can assign tasks to them with a form 
    | Tasks             | Friends   |
    | 2 bottle of coke  | Ryan      |
    | stroopwafels      | Marieke   |
    | crisps            | Steven    |
    | papercups         | Stephanie |



