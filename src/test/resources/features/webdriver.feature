#Exercize for Webdriver experience
# Author: Elmira Grigorovich

  @webdriver
  Feature: Exercize for Webdriver experience
    Background:
      Given I navigate "quote"
    @webdriver1
      Scenario: Open page
      Given I navigate "quote"
      And I Print page details

    @webdriver1
      Scenario: Email field verification
       When I type "abc" into email field
      And I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      And I wait for 2 sec
      