Feature: Friends

  Friends invited to an event get an email, in which they can see whether they have a task. They can also confirm, decline or stay pending. 

  Scenario: I am invited as an event friend
    When I am invited for an event
    Then I receive an email notification

  Scenario: If a User assign me a task, my notification email will state this
    When I am invited for an event
    And the event User has assigned me a task
    Then I want to receive an email notification
    And it shows me which task I was assigned

  Scenario: When I receive an email, I can confirm or decline
    When I am invited for an event
    And I receive an email notification
    Then I can confirm my participation

  Scenario: I can decline an invitation
    When I decline an invitation
    Then the event organizer receives an email notification
    And my assigned task becomes free for other friends