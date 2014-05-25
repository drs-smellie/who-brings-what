Feature: Users

  Users can create events, invite friends and assign tasks to friends

  Background:
    Given that I am a User
    And I am logged in

  Scenario: I can create events
    When I create a new event
    Then I can give it the name "Super fun time"
    And I can give it the date "5-12-2014"
    And I can give it a description "Lets have a super fun time at Sinterklaas"

  Scenario: I can invite users for this event
    When I am on the page of the event "Super fun time"
    Then I can invite friends to the event


  Scenario: I can assign event tasks to users
    When I have invited friends
    Then I can assign tasks to them with a form 
    | Tasks             | Friends   |
    | 2 bottle of coke  | Ryan      |
    | stroopwafels      | Marieke   |
    | crisps            | Steven    |
    | papercups         | Stephanie |



