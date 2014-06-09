Feature: Sign up

 Users can sign up

  Scenario: Sign up as a User
    When I go to the signup page
    And I fill in email and password
    Then my account is created

  Scenario: After signup, I am asked to complete my profile
    Given I have signed up
    Then I am redirected to the profile page
    And I can enter my details